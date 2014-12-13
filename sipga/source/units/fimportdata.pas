unit FImportData;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, DBCtrls, StdCtrls, TFlatGaugeUnit, Buttons, ExtCtrls,
  Grids, DBGrids, SMDBGrid, ComCtrls, GlobalModule, RxLookup, IniFiles, StrUtils;

type
  TfrmImportPGW = class(TForm)
    MyPegawai: TADOQuery;
    qrySourceDB: TADOQuery;
    qrySourceFile: TADOQuery;
    SrcConn: TADOConnection;
    dsPGWdb: TDataSource;
    Panel1: TPanel;
    Panel4: TPanel;
    btnClose: TSpeedButton;
    pnlProgress: TPanel;
    ProgressImport: TFlatGauge;
    Panel5: TPanel;
    lbMin: TLabel;
    Panel6: TPanel;
    lbMax: TLabel;
    Panel2: TPanel;
    OpenGJEx: TOpenDialog;
    PGCMain: TPageControl;
    TabSheet3: TTabSheet;
    pnlGJDatabase: TPanel;
    Label1: TLabel;
    lblGJDatabase: TLabel;
    Panel7: TPanel;
    btnSetupGJ: TSpeedButton;
    btnConnectGJ: TSpeedButton;
    Panel8: TPanel;
    btnImportGJ: TSpeedButton;
    btnRefreshGJ: TSpeedButton;
    btnSelectAllGJ: TSpeedButton;
    ckUpdateSrcGJDb: TCheckBox;
    Panel9: TPanel;
    DBText1: TDBText;
    gridGJPGW: TSMDBGrid;
    TabSheet4: TTabSheet;
    Panel10: TPanel;
    Label2: TLabel;
    Panel11: TPanel;
    btnFileGJ: TSpeedButton;
    txtFileGJ: TEdit;
    Panel12: TPanel;
    btnImportGJFile: TSpeedButton;
    btnRefreshGJFile: TSpeedButton;
    btnSelectAllGJFile: TSpeedButton;
    ckUpdateSrcGJFile: TCheckBox;
    Panel13: TPanel;
    DBText2: TDBText;
    MemoLog: TMemo;
    pnlSKPD: TPanel;
    Label4: TLabel;
    LookSKPD: TRxDBLookupCombo;
    qryUnit: TADOQuery;
    dsUnit: TDataSource;
    dsPGWFile: TDataSource;
    qrySKPD: TADOQuery;
    dsSKPD: TDataSource;
    tmGJDb: TTimer;
    tmGJFile: TTimer;
    qryGaji: TADOQuery;
    qry13: TADOQuery;
    qryUDWUDT: TADOQuery;
    qryRapel: TADOQuery;
    qryJGaji: TADOQuery;
    qryJRapel: TADOQuery;
    gridGJFile: TSMDBGrid;
    ckUpdateProsesFile: TCheckBox;
    ckUpdateProsesGJ: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnSetupGJClick(Sender: TObject);
    procedure btnConnectGJClick(Sender: TObject);
    procedure btnRefreshGJClick(Sender: TObject);
    procedure btnImportGJClick(Sender: TObject);
    procedure btnSelectAllGJClick(Sender: TObject);
    procedure LookSKPDChange(Sender: TObject);
    procedure btnFileGJClick(Sender: TObject);
    procedure btnRefreshGJFileClick(Sender: TObject);
    procedure btnSelectAllGJFileClick(Sender: TObject);
    procedure tmGJDbTimer(Sender: TObject);
    procedure tmGJFileTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    GJConnProp: TPropertiesDB;
    MyGlobalIni: String;
    InProsesImport: Boolean;
    SQLSource: String;

    procedure VisibleSKPDOption;
    procedure StatusConnectGJ;
    procedure LoadConnProperties;
    procedure SaveConnProperties;
    function SetupConnectionSourceGJ(WithMsgError: Boolean = False): Boolean;
    function GetFilterSKPD: String;
    function GetFilterFile: String;
    procedure SetupSQLDb;
    procedure AturKolom;
    procedure ReloadDB;
    procedure EnableControls;
    procedure ShowProgress(const sValue: Boolean);
    function RightNumberStr(sValue: String; sLen: Integer): String;
    procedure ImportPegawai(Sumber: Integer);
    procedure SesuaikanFungsionalKD(var Fld: String);
  public
    { Public declarations }
    Imported, BaruBuka: Boolean;
    JnsImport, JnsProses: Integer;
    TMTahun, TMBulan, sTahun, sBulan: String;
  end;

function ImportPGWDlg: Boolean;
function ImportGajiIndukDlg(TA, BLN: String; Jenis: Integer): Boolean;
function ImportGajiRapelDlg(TMTh, TMTBln, TA, BLN: String; Jenis: Integer): Boolean;

const MasterFilter: String = '((Aktif_Kd<>3) AND (Aktif_Kd<>4) AND (Aktif_Kd<>5) AND (Aktif_Kd<>6))';
      DbOrder: String = 'order by UnitKd, sts_pegawaikd desc, aktif_kd asc, ' +
                        '(case jbt_strukturkd when ''9999'' then ''zzz'' when ''BUP'' then ''0'' when ''WABUP'' then ''1'' else jbt_strukturkd end)asc, ' +
                        'golongankd desc, Masakerja desc, ' +
                        '(case when tgl_lahir is null then getDate() else tgl_lahir end) asc ';
      SelectSource: Array [0..4] of String = ('select * from pegawai ',
                    'select * from pegawai_gaji ', 'select * from pegawai_gaji_13 ',
                    'select * from pegawai_gaji_UDWUDT ', 'select * from pegawai_gaji_rapel ');


var
  frmImportPGW: TfrmImportPGW;



implementation

{$R *.dfm}

uses dbCreate;

function ImportPGWDlg: Boolean;
begin
  if (frmImportPGW=nil) then frmImportPGW:= TfrmImportPGW.Create(nil);
  frmImportPGW.JnsImport:= 0;
  frmImportPGW.ShowModal;
  Result:= frmImportPGW.Imported;
  frmImportPGW.Free;
  frmImportPGW:= nil;
end;

function ImportGajiIndukDlg(TA, BLN: String; Jenis: Integer): Boolean;
begin
  if (frmImportPGW=nil) then frmImportPGW:= TfrmImportPGW.Create(nil);
  frmImportPGW.JnsImport:= 1;
  frmImportPGW.sTahun:= TA;
  frmImportPGW.sBulan:= BLN;
  frmImportPGW.JnsProses:= Jenis;
  frmImportPGW.ShowModal;
  Result:= frmImportPGW.Imported;
  frmImportPGW.Free;
  frmImportPGW:= nil;
end;

function ImportGajiRapelDlg(TMTh, TMTBln, TA, BLN: String; Jenis: Integer): Boolean;
begin
  if (frmImportPGW=nil) then frmImportPGW:= TfrmImportPGW.Create(nil);
  frmImportPGW.JnsImport:= 2;
  frmImportPGW.TMTahun:= TMTh;
  frmImportPGW.TMBulan:= TMTBln;
  frmImportPGW.sTahun:= TA;
  frmImportPGW.sBulan:= BLN;
  frmImportPGW.JnsProses:= Jenis;
  frmImportPGW.ShowModal;
  Result:= frmImportPGW.Imported;
  frmImportPGW.Free;
  frmImportPGW:= nil;
end;

procedure TfrmImportPGW.VisibleSKPDOption;
begin
  pnlSKPD.Visible:= ((GModule.IsAllSKPD) or (GModule.IsAccessSub));
end;

procedure TfrmImportPGW.StatusConnectGJ;
var S: String;
begin
  S:= GJConnProp.ServerName + '->' + GJConnProp.Catalog;
  if (BaruBuka) then
    begin
      S:= S + ' (Status : Not Connected)';
      lblGJDatabase.Font.Color:= clRed;
      btnConnectGJ.Caption:= 'Connect';
    end
  else
    begin
      if (SrcConn.Connected) then
        begin
          S:= S + ' (Status : Connected)';
          lblGJDatabase.Font.Color:= clWindowText;
          btnConnectGJ.Caption:= 'Reconnect';
        end
      else
        begin
          S:= S + ' (Status : Not Connected)';
          lblGJDatabase.Font.Color:= clRed;
          btnConnectGJ.Caption:= 'Connect';
        end;
    end;
  lblGJDatabase.Caption:= S;
end;

procedure TfrmImportPGW.LoadConnProperties;
var IniFile: TIniFile;
begin
  IniFile:= TIniFile.Create(MyGlobalIni);
  with GJConnProp do
    begin
      ServerName:= IniFile.ReadString('Source_DB', 'Server', '');
      SSPI:= IniFile.ReadBool('Source_DB', 'SSPI', True);
      UserName:= IniFile.ReadString('Source_DB', 'UserName', '');
      Password:= IniFile.ReadString('Source_DB', 'Password', '');
      Catalog:= IniFile.ReadString('Source_DB', 'Catalog', '');
    end;
  IniFile.Free;
end;

procedure TfrmImportPGW.SaveConnProperties;
var IniFile: TIniFile;
begin
  IniFile:= TIniFile.Create(MyGlobalIni);
  with GJConnProp do
    begin
      IniFile.WriteString('Source_DB', 'Server', ServerName);
      IniFile.WriteBool('Source_DB', 'SSPI', SSPI);
      IniFile.WriteString('Source_DB', 'UserName', UserName);
      IniFile.WriteString('Source_DB', 'Password', Password);
      IniFile.WriteString('Source_DB', 'Catalog', Catalog);
    end;
  IniFile.Free;
end;

function TfrmImportPGW.SetupConnectionSourceGJ(WithMsgError: Boolean = False): Boolean;
begin
  Result:= False;
  SrcConn.Close;
  SrcConn.ConnectionString:= GModule.GetConnectionString(GJConnProp);
  try
    SrcConn.Open;
    Result:= True;
  except
    on Ex: Exception do
      begin
        if (WithMsgError) then MessageDlg(Ex.Message, mtError, [mbOK], 0);
      end;
  end;
end;

procedure TfrmImportPGW.EnableControls;
begin
  pnlProgress.Enabled:= not InProsesImport;
  PGCMain.Enabled:= not InProsesImport;
end;

function TfrmImportPGW.GetFilterSKPD: String;
begin
  Result:= '';
  if (pnlSKPD.Visible) then
    begin
      if (LookSKPD.KeyValue<>null) then
        begin
          if ((GModule.IsAllSKPD) or (GModule.IsAccessSub)) then
            Result:= 'UnitKd like ' + QuotedStr(LookSKPD.KeyValue + '%')
          else Result:= 'UnitKd = ' + QuotedStr(LookSKPD.KeyValue);
        end
      else
        begin
          if (GModule.IsAllSKPD) then exit;
          Result:= 'UnitKd like ' + QuotedStr(GModule.UnitKd + '%');
        end;
    end
  else Result:= 'UnitKd = ' + QuotedStr(GModule.UnitKd);
end;

function TfrmImportPGW.GetFilterFile: String;
var R, S: String;
begin
  S:= GetFilterSKPD;
  if (JnsImport=0) then
    //R:= MasterFilter
    R:= ''
  else
    begin
      R:= '(Tahun=' + QuotedStr(sTahun) + ') and (Bulan=' + QuotedStr(sBulan) + ') ' +
                      'and (Jenis= ' + IntToStr(JnsProses) + ') ';
      if (JnsProses>=10) then
        R:= R + ' and (TM_Tahun=' + QuotedStr(TMTahun) + ') ' +
          'and (TM_Bulan=' + QuotedStr(TMBulan) + ') ';
    end;
  if (S<>'') then
    R:= R + ' and ' + S;
  Result:= R;
end;

procedure TfrmImportPGW.SetupSQLDb;
var strSQL, strWhere: String;
begin
  qrySourceDb.Close;
  if (JnsImport>0) then
    begin
      case JnsProses of
      0, 6  : strSQL:= SelectSource[1];
      1     : strSQL:= SelectSource[2];
      2, 3  : strSQL:= SelectSource[3];
      else  strSQL:= SelectSource[4];
      end;
      strWhere:= '(Tahun=' + QuotedStr(sTahun) + ') and (Bulan=' + QuotedStr(sBulan) + ') ' +
                      'and (Jenis= ' + IntToStr(JnsProses) + ') ';
      if (JnsProses>=10) then
        strWhere:= strWhere + ' and (TM_Tahun=' + QuotedStr(TMTahun) + ') ' +
                  'and (TM_Bulan=' + QuotedStr(TMBulan) + ') ';
    end
  else
    begin
      strSQL:= SelectSource[0];
      //strWhere:= MasterFilter;
      strWhere:= '';
    end;
  if (strWhere<>'') then
    strSQL:= strSQL + ' where ' + strWhere + ' ' + DbOrder
  else
    strSQL:= strSQL + ' ' + DbOrder;
  //qrySourceDb.SQL.Text:= strSQL;
  SQLSource:= strSQL;
end;

procedure TfrmImportPGW.AturKolom;
begin
  if (JnsImport=2) then
    begin
      gridGJPGW.Columns[2].Title.Caption:= 'Sampai Bulan';
      gridGJFile.Columns[2].Title.Caption:= 'Sampai Bulan';
    end
  else
    begin
      gridGJPGW.Columns[2].Title.Caption:= 'Bulan';
      gridGJFile.Columns[2].Title.Caption:= 'Bulan';
    end;
  gridGJPGW.Columns[0].Visible:= (JnsImport=2);
  gridGJPGW.Columns[1].Visible:= (JnsImport=2);
  gridGJPGW.Columns[2].Visible:= (JnsImport>0);
  gridGJPGW.Columns[3].Visible:= (JnsImport>0);
  gridGJFile.Columns[0].Visible:= (JnsImport=2);
  gridGJFile.Columns[1].Visible:= (JnsImport=2);
  gridGJFile.Columns[2].Visible:= (JnsImport>0);
  gridGJFile.Columns[3].Visible:= (JnsImport>0);
  if (JnsImport>0) then
    begin
      gridGJPGW.Columns[2].FieldName:= 'Bulan';
      gridGJPGW.Columns[3].FieldName:= 'Tahun';
      gridGJFile.Columns[2].FieldName:= 'Bulan';
      gridGJFile.Columns[3].FieldName:= 'Tahun';
      if (JnsImport=2) then
        begin
          gridGJPGW.Columns[0].FieldName:= 'TM_Bulan';
          gridGJPGW.Columns[1].FieldName:= 'TM_Tahun';
          gridGJFile.Columns[0].FieldName:= 'TM_Bulan';
          gridGJFile.Columns[1].FieldName:= 'TM_Tahun';
        end;
    end;
end;

procedure TfrmImportPGW.ReloadDB;
var F: String;
begin
  qryUnit.Close;
  qrySourceDB.Close;
  qrySourceDB.SQL.Text:= SQLSource;
  qrySourceDB.Filtered:= False;
  try
    F:= GetFilterSKPD;
    if (F<>'') then
      begin
        qrySourceDB.Filter:= F;
        qrySourceDB.Filtered:= True;
      end;
    qrySourceDB.Open;
    qryUnit.Close;
    qryUnit.DataSource:= dsPGWDB;
    qryUnit.Open;
  except
    on Ex: Exception do
      begin
        MessageDlg(Ex.Message, mtError, [mbOK], 0);
        qrySourceFile.Close;
        exit;
      end;
  end;
  qryUnit.Close;
  qryUnit.DataSource:= dsPGWDB;
  qryUnit.Open;
end;

procedure TfrmImportPGW.ShowProgress(const sValue: Boolean);
begin
  lbMin.Visible:= sValue;
  ProgressImport.Visible:= sValue;
  lbMax.Visible:= sValue;
end;

function TfrmImportPGW.RightNumberStr(sValue: String; sLen: Integer): String;
var nLen, vLen: Integer;
begin
  vLen:= Length(sValue);
  nLen:= sLen;
  if (nLen<1) then nLen:= vLen;
  Result:= DupeString(' ', Abs(nLen - vLen)) + sValue;
end;

procedure TfrmImportPGW.SesuaikanFungsionalKD(var Fld: String);
var F: String;
begin
  F:= UpperCase(Fld);
  if (F='M06') then Fld:= 'M02'
  else if (F='U03') then Fld:= 'U02'
  else
    begin
      if ((F='F00') or (F='F23') or (F='S25') or (F='SSS') or (F='X') or
          (F='XX') or (F='X00') or (F='XX0') or (F='XX1') or (F='XX2') or
          (F='XX3') or (F='XXX') or (F='Z00') or (F='')) then
          Fld:= '000';
    end;
end;

procedure TfrmImportPGW.ImportPegawai(Sumber: Integer);
var I, N, F, Suks, Eror, Lewat, Jml: Integer;
    Fld, SuksStr, ErorStr, JmlStr, LewatStr: String;
    InitErorLog: Boolean;
    JbtFungsiKd: String;
    qrySumber, qryProses: TADOQuery;
    DS: TDataSource;
    GRD: TSMDBGrid;
    UpdateMaster, UpdateGJ: Boolean;
begin
  if ((Sumber<0) or (Sumber>1)) then exit;
  if (Sumber=1) then
    begin
      if (not qrySourceFile.Active) then exit;
      if (qrySourceFile.IsEmpty) then exit;
      if (GridGJFile.SelectedRows.Count<1) then exit;
      qrySumber:= qrySourceFile;
      DS:= dsPGWFile;
      GRD:= GridGJFile;
      UpdateMaster:= ckUpdateSrcGJFile.Checked;
      UpdateGJ:= ckUpdateProsesFile.Checked;
    end
  else
    begin
      if (not qrySourceDB.Active) then exit;
      if (qrySourceDB.IsEmpty) then exit;
      if (GridGJPGW.SelectedRows.Count<1) then exit;
      qrySumber:= qrySourceDB;
      DS:= dsPGWDb;
      GRD:= GridGJPGW;
      UpdateMaster:= ckUpdateSrcGJDb.Checked;
      UpdateGJ:= ckUpdateProsesGJ.Checked;
    end;
  if (MessageDlg('Import Pegawai Yang Dipilih', mtConfirmation, [mbYes, mbNo], 0)<>IDYES) then exit;
  InProsesImport:= not InProsesImport;
  EnableControls;
  ShowProgress(True);
  N:= GRD.SelectedRows.Count;
  ProgressImport.MinValue:= 0;
  ProgressImport.MaxValue:= N;
  progressImport.Progress:= 0;
  lbMax.Caption:= FormatFloat('#,##0', N);
  lbMin.Caption:= '0';
  Suks:= 0; Eror:= 0; Lewat:= 0;
  InitErorLog:= False;
  MemoLog.Clear;
  MemoLog.Lines.Add('Import Log :');
  MemoLog.Lines.Add('--------------------');
  MemoLog.Lines.Add('');
  MemoLog.Lines.Add('Jumlah Data : ' + FormatFloat('#,##0', N));
  MemoLog.Lines.Add('');
  MemoLog.Lines.Add('Sukses : ' + RightNumberStr('0', 16));
  MemoLog.Lines.Add('Error    : ' + RightNumberStr('0', 16));
  MemoLog.Lines.Add('Lewat  : ' + RightNumberStr('0', 16));
  MemoLog.Lines.Add('--------------------------+');
  MemoLog.Lines.Add(RightNumberStr('0', 30));  
  try
    qryProses:= nil;
    MyPegawai.Close;
    qryJGaji.Close;
    qryJRapel.Close;
    qryGaji.Close;
    qry13.Close;
    qryUDWUDT.Close;
    qryRapel.Close;
    MyPegawai.DataSource:= DS;
    MyPegawai.Open;
    if (JnsImport>0) then
      begin
        //qryJenis:= qryJGaji;
        case JnsProses of
        0, 6  : begin qryGaji.DataSource:= DS; qryProses:= qryGaji; end;
        1     : begin qry13.DataSource:= DS;  qryProses:= qry13; end;
        2, 3  : begin qryUDWUDT.DataSource:= DS;  qryProses:= qryUDWUDT; end;
        else   begin qryRapel.DataSource:= DS;  qryProses:= qryRapel; end;
        end;
        qryProses.Open;
      end;
  except
    on Ex: Exception do
      begin
        MemoLog.Lines.Add('');
        MemoLog.Lines.Add('Error : ' + Ex.Message);
        exit;
      end;
  end;
  if (MyPegawai.Active) then
    begin
      for I:= 0 to N - 1 do
        begin
          qrySumber.GotoBookmark(pointer(GRD.SelectedRows[I]));
          try
            // --- proses
            if (JnsImport>0) then
              begin
                if (qryProses.IsEmpty) then
                  qryProses.Append
                else
                  begin
                    if (UpdateGJ) then qryProses.Edit
                    else
                      begin
                        Lewat:= Lewat + 1;
                        LewatStr:= FormatFloat('#,##0', Lewat);
                        MemoLog.Lines[7]:= 'Lewat  : ' + RightNumberStr(LewatStr, 16 - Length(LewatStr) + 1);
                      end;
                  end;
                if (qryProses.State in[dsInsert, dsEdit]) then
                  begin
                    for F:= 0 to qrySumber.FieldCount - 1 do
                      begin
                        Fld:= UpperCase(qrySumber.Fields[F].FieldName);
                        if (JnsImport=4) then
                          begin
                            if ((Fld<>'NIP') and (Fld<>'TM_TAHUN') and (Fld<>'TM_BULAN') and
                              (Fld<>'TAHUN') and (Fld<>'BULAN') and
                              (Fld<>'JENIS') and (qryProses.FindField(Fld)<>nil)) then
                              begin
                                qryProses.FieldByName(Fld).Value:= qrySumber.Fields[F].Value;
                              end;
                          end
                        else
                          begin
                            if ((Fld<>'NIP') and (Fld<>'TAHUN') and (Fld<>'BULAN') and
                              (Fld<>'JENIS') and (qryProses.FindField(Fld)<>nil)) then
                              begin
                                qryProses.FieldByName(Fld).Value:= qrySumber.Fields[F].Value;
                              end;
                          end;
                      end;
                    JbtFungsiKd:= qryProses.FieldByName('Jbt_FungsiKd').AsString;
                    SesuaikanFungsionalKD(JbtFungsiKd);
                    if ((qryProses.FieldByName('GURUKD').IsNull) or (qryProses.FieldByName('GURUKD').AsString='')) then
                      MyPegawai.FieldByName('GURUKD').AsString:= 'N';
                    if (qryProses.FieldByName('Persen_Gaji').IsNull) then qryProses.FieldByName('Persen_Gaji').Value:= 0;
                    qryProses.FieldByName('Jbt_FungsiKd').AsString:= JbtFungsiKd;

                      qryProses.Post;
                      Imported:= True;
                      Suks:= Suks + 1;
                      SuksStr:= FormatFloat('#,0', Suks);
                      MemoLog.Lines[5]:= 'Sukses : ' + RightNumberStr(FormatFloat('#,0', Suks), 16 - Length(SuksStr) + 1);
                    
                  end;
              end;   // end jns import
            // --- master pegawai
            if (MyPegawai.IsEmpty) then
                  MyPegawai.Append
            else
              begin
                if (UpdateMaster) then MyPegawai.Edit
                else
                  begin
                    if (JnsImport=0) then
                      begin
                        Lewat:= Lewat + 1;
                        LewatStr:= FormatFloat('#,##0', Lewat);
                        MemoLog.Lines[7]:= 'Lewat  : ' + RightNumberStr(LewatStr, 16 - Length(LewatStr) + 1);
                      end;
                  end;
              end;
              
            if (MyPegawai.State in[dsInsert, dsEdit]) then
              begin
                for F:= 0 to qrySumber.FieldCount - 1 do
                  begin
                    Fld:= qrySumber.Fields[F].FieldName;
                    if ((UpperCase(Fld)<>'NIP') and (MyPegawai.FindField(Fld)<>nil)) then
                      begin
                        MyPegawai.FieldByName(Fld).Value:= qrySumber.Fields[F].Value;
                      end;
                  end;
                JbtFungsiKd:= MyPegawai.FieldByName('Jbt_FungsiKd').AsString;
                SesuaikanFungsionalKD(JbtFungsiKd);
                if ((MyPegawai.FieldByName('GURUKD').IsNull) or (MyPegawai.FieldByName('GURUKD').AsString='')) then
                    MyPegawai.FieldByName('GURUKD').AsString:= 'N';
                if (MyPegawai.FieldByName('Persen_Gaji').IsNull) then MyPegawai.FieldByName('Persen_Gaji').Value:= 0;
                MyPegawai.FieldByName('Jbt_FungsiKd').AsString:= JbtFungsiKd;
                MyPegawai.Post;
                Imported:= True;
                if (JnsImport=0) then
                  begin
                    Suks:= Suks + 1;
                    SuksStr:= FormatFloat('#,0', Suks);
                    MemoLog.Lines[5]:= 'Sukses : ' + RightNumberStr(FormatFloat('#,0', Suks), 16 - Length(SuksStr) + 1);
                  end;
              end;
          except
            on Ex: Exception do
              begin
                //if (MyPegawai.State in[dsInsert, dsEdit]) then MyPegawai.Cancel;
                Eror:= Eror + 1;
                ErorStr:= FormatFloat('#,0', Eror);
                MemoLog.Lines[6]:= 'Error    : ' + RightNumberStr(ErorStr, 16 - Length(ErorStr) + 1);
                if (not InitErorLog) then
                  begin
                    MemoLog.Lines.Add('');
                    MemoLog.Lines.Add('Error Log :');
                    MemoLog.Lines.Add('------------------------');
                    InitErorLog:= True;
                  end;
                MemoLog.Lines.Add('Error - ' + FormatFloat('#,0', Eror) + ' : ' +
                    qrySumber.FieldByName('NIP').AsString + #13#10 + '=> ' + Ex.Message + ';');
                if (qryProses.State in[dsInsert, dsEdit]) then qryProses.Cancel;
                if (MyPegawai.State in[dsInsert, dsEdit]) then MyPegawai.Cancel;
              end;
          end;
          Jml:= Suks + Eror + Lewat;
          JmlStr:= FormatFloat('#,0', Jml);
          MemoLog.Lines[9]:= RightNumberStr(JmlStr, 30 - Length(JmlStr) + 1);
          Application.ProcessMessages;
          lbMin.Caption:= FormatFloat('#,0', I + 1);
          if (ProgressImport.Progress< ProgressImport.MaxValue) then
            ProgressImport.Progress:= I + 1;
        end;
    end;
  MemoLog.Lines.Add('');
  MemoLog.Lines.Add('Import Selesai');
  MessageDlg('Import Selesai.', mtInformation, [mbOK], 0);
  ShowProgress(False);
  InProsesImport:= not InProsesImport;
  EnableControls;
end;

procedure TfrmImportPGW.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (InProsesImport) then ModalResult:= mrAbort;
  SaveConnProperties;
end;

procedure TfrmImportPGW.FormCreate(Sender: TObject);
var FF: String;
begin
  BaruBuka:= True;
  SrcConn.Close;
  WindowState:= wsMaximized;
  qrySKPD.Close;
  FF:= GModule.GetFilterSKPD;
  try
    if (FF<>'') then
      qrySKPD.SQL.Text:= 'select * from tblUnit where ' + FF + ' order by unitkd'
    else
      qrySKPD.SQL.Text:= 'select * from tblUnit order by unitkd';
    qrySKPD.Open;
  except
  end;
  Imported:= False;
  MyGlobalIni:= GModule.Path + 'Global.ini';
  VisibleSKPDOption;
  //try qryUnit.Open; except end;
  InProsesImport:= False;
  LoadConnProperties;
end;

procedure TfrmImportPGW.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmImportPGW.btnSetupGJClick(Sender: TObject);
begin
  if (DBCreateDlg(SrcConn, GJConnProp)) then
    begin
      MemoLog.Clear;
      MemoLog.Lines.Add('Import Log :');
      MemoLog.Lines.Add('--------------------');
      if (SetupConnectionSourceGJ(True)) then
        begin
          ReloadDB;
        end;
    end;
  StatusConnectGJ;
end;

procedure TfrmImportPGW.btnConnectGJClick(Sender: TObject);
begin
  MemoLog.Clear;
  MemoLog.Lines.Add('Import Log :');
  MemoLog.Lines.Add('--------------------');
  if (SrcConn.Connected) then SrcConn.Close;
  if (SetupConnectionSourceGJ(True)) then
    begin
      ReloadDB;
    end
  else  btnSetupGJClick(nil);
  StatusConnectGJ;
end;

procedure TfrmImportPGW.btnRefreshGJClick(Sender: TObject);
begin
  MemoLog.Clear;
  MemoLog.Lines.Add('Import Log :');
  MemoLog.Lines.Add('--------------------');
  if (not SrcConn.Connected) then exit;
  ReloadDB;
end;

procedure TfrmImportPGW.btnImportGJClick(Sender: TObject);
begin
  ImportPegawai(TSpeedButton(Sender).Tag);
end;

procedure TfrmImportPGW.btnSelectAllGJClick(Sender: TObject);
begin
  if (not qrySourceDB.Active) then exit;
  if (qrySourceDB.IsEmpty) then exit;
  if (UpperCase(btnSelectAllGJ.Caption) = 'SELECT ALL') then
    gridGJPGW.SelectAllClick(nil)
  else
    gridGJPGW.UnSelectAllClick(nil);
end;

procedure TfrmImportPGW.LookSKPDChange(Sender: TObject);
begin
  if (PGCMain.ActivePageIndex=0) then btnRefreshGJClick(nil)
  else exit; //btnRefreshGJFileClick(nil);
end;

procedure TfrmImportPGW.btnFileGJClick(Sender: TObject);
var sFile, F: String;
begin
  if (OpenGJEx.Execute) then
    begin
      sFile:= OpenGJEx.FileName;
    end
  else exit;
  MemoLog.Clear;
  MemoLog.Lines.Add('Import Log :');
  MemoLog.Lines.Add('--------------------');
  txtFileGJ.Text:= sFile;
  qrySourceFile.Close;
  try
    qrySourceFile.Filtered:= False;
    qrySourceFile.LoadFromFile(sFile);
    F:= GetFilterFile;
    //F:= GetFilterSKPD;
    //if (F<>'') then F:= MasterFilter + ' AND ' + F
    //else F:= MasterFilter;
    if (F<>'') then
      begin
        qrySourceFile.Filter:= F;
        qrySourceFile.Filtered:= True;
      end;
    qrySourceFile.Open;
  except
    on Ex: Exception do
      begin
        MessageDlg(Ex.Message, mtError, [mbOK], 0);
        qrySourceFile.Close;
        exit;
      end;
  end;
  qryUnit.Close;
  qryUnit.DataSource:= dsPGWFile;
  qryUnit.Open;
end;

procedure TfrmImportPGW.btnRefreshGJFileClick(Sender: TObject);
var F: String;
begin
  MemoLog.Clear;
  MemoLog.Lines.Add('Import Log :');
  MemoLog.Lines.Add('--------------------');
  if (not qrySourceFile.Active) then exit;
  qrySourceFile.Close;
  qrySourceFile.Filtered:= False;
  try
    F:= GetFilterFile;
    //F:= GetFilterSKPD;
    //if (F<>'') then F:= MasterFilter + ' AND ' + F
    //else F:= MasterFilter;
    if (F<>'') then
      begin
        qrySourceFile.Filter:= F;
        qrySourceFile.Filtered:= True;
      end;
    qrySourceFile.Open;
  except
    on Ex: Exception do
      begin
        MessageDlg(Ex.Message, mtError, [mbOK], 0);
        qrySourceFile.Close;
        exit;
      end;
  end;
  qryUnit.Close;
  qryUnit.DataSource:= dsPGWFile;
  qryUnit.Open;
end;

procedure TfrmImportPGW.btnSelectAllGJFileClick(Sender: TObject);
begin
  if (not qrySourceFile.Active) then exit;
  if (qrySourceFile.IsEmpty) then exit;
  if (UpperCase(btnSelectAllGJFile.Caption) = 'SELECT ALL') then
    gridGJFile.SelectAllClick(nil)
  else
    gridGJFile.UnSelectAllClick(nil);
end;

procedure TfrmImportPGW.tmGJDbTimer(Sender: TObject);
begin
  if (not qrySourceDB.Active) then
    begin
      btnSelectAllGJ.Caption:= 'Select All';
      exit;
    end;
  if (qrySourceDB.IsEmpty) then
    begin
      btnSelectAllGJ.Caption:= 'Select All';
      exit;
    end;
  if (gridGJPGW.SelectedRows.Count>0) then
    btnSelectAllGJ.Caption:= 'Unselect All'
  else
    btnSelectAllGJ.Caption:= 'Select All';
end;

procedure TfrmImportPGW.tmGJFileTimer(Sender: TObject);
begin
  if (not qrySourceFile.Active) then
    begin
      btnSelectAllGJFile.Caption:= 'Select All';
      exit;
    end;
  if (qrySourceFile.IsEmpty) then
    begin
      btnSelectAllGJFile.Caption:= 'Select All';
      exit;
    end;
  if (gridGJFile.SelectedRows.Count>0) then
    btnSelectAllGJFile.Caption:= 'Unselect All'
  else
    btnSelectAllGJFile.Caption:= 'Select All';
end;

procedure TfrmImportPGW.FormShow(Sender: TObject);
begin
  StatusConnectGJ;
  EnableControls;
  PGCMain.ActivePageIndex:= 0;
  ShowProgress(False);
  if (not GModule.IsAllSKPD) then LookSKPD.KeyValue:= GModule.UnitKd;
  AturKolom;
  SetupSQLDb;
  ckUpdateProsesGJ.Visible:= (JnsImport>0);
  ckUpdateProsesFile.Visible:= (JnsImport>0);
  BaruBuka:= False;
end;

end.
