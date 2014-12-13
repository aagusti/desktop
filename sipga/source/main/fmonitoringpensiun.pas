unit FMonitoringPensiun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, SMDBGrid, ExtCtrls, ComCtrls,
  Buttons, StdCtrls, DBCtrls, DateUtils, GlobalModule, Menus;

type
  TfrmMonitorPensiun = class(TForm)
    qryPensiun: TADOQuery;
    dsPensiun: TDataSource;
    qryPensiunNIP: TStringField;
    qryPensiunUNITKD: TStringField;
    qryPensiunUnitNm: TStringField;
    qryPensiunNAMA: TStringField;
    qryPensiunTGL_LAHIR: TDateTimeField;
    qryPensiunTMP_LAHIR: TStringField;
    qryPensiunJNS_KELAMIN: TStringField;
    qryPensiunBANK: TStringField;
    qryPensiunREKENING: TStringField;
    qryPensiunNPWP: TStringField;
    qryPensiunNO_PEGAWAI: TStringField;
    qryPensiunNOJJP: TStringField;
    qryPensiunALAMAT: TStringField;
    qryPensiunNAMASI: TStringField;
    qryPensiunSTS_PEGAWAIKD: TStringField;
    qryPensiunStatus: TStringField;
    qryPensiunTMT_PEGAWAI: TDateTimeField;
    qryPensiunSTS_KWN: TStringField;
    qryPensiunSTS_SIPIL: TStringField;
    qryPensiunAGAMA: TStringField;
    qryPensiunJML_SI: TSmallintField;
    qryPensiunJML_ANAK: TSmallintField;
    qryPensiunPTKP: TIntegerField;
    qryPensiunPEND_TERAKHIR: TStringField;
    qryPensiunPEND_JURUSAN: TStringField;
    qryPensiunGOLONGANKD: TStringField;
    qryPensiunGolonganNm: TStringField;
    qryPensiunTMT_GOLONGAN: TDateTimeField;
    qryPensiunMASAKERJA: TIntegerField;
    qryPensiunTMT_GAJI_POKOK: TDateTimeField;
    qryPensiunJBT_FUNGSIKD: TStringField;
    qryPensiunJBT_FUNGSI: TStringField;
    qryPensiunTMT_FUNGSI: TDateTimeField;
    qryPensiunJBT_STRUKTURKD: TStringField;
    qryPensiunJbt_Struktur: TStringField;
    qryPensiunTMT_JABATAN: TDateTimeField;
    qryPensiunAKTIF_KD: TIntegerField;
    qryPensiunAktifNm: TStringField;
    qryPensiunAKTIF_TGL: TDateTimeField;
    qryPensiunGURUKD: TStringField;
    qryPensiunGuruNm: TStringField;
    qryPensiunMAX_PENSIUN: TIntegerField;
    qryPensiunTDTKD: TStringField;
    qryPensiunPIC_FOTO: TBlobField;
    qryPensiunGAJI_POKOK: TFloatField;
    qryPensiunTUNJ_ISTRI: TFloatField;
    qryPensiunTUNJ_ANAK: TFloatField;
    qryPensiunTUNJ_BERAS: TFloatField;
    qryPensiunTUNJ_JAB_STRUKTUR: TFloatField;
    qryPensiunTUNJ_JAB_FUNGSI: TFloatField;
    qryPensiunTUNJ_KERJA: TFloatField;
    qryPensiunTUNJ_UMUM: TFloatField;
    qryPensiunTUNJ_UMUM_TAMB: TFloatField;
    qryPensiunTUNJ_OTSUS: TFloatField;
    qryPensiunTUNJ_DT: TFloatField;
    qryPensiunTUNJ_ASKES: TFloatField;
    qryPensiunTUNJ_PENGHASILAN: TFloatField;
    qryPensiunPEMBULATAN: TFloatField;
    qryPensiunPPH: TFloatField;
    qryPensiunPOT_IWP: TFloatField;
    qryPensiunPOT_TAPERUM: TFloatField;
    qryPensiunPOT_SEWA_RUMAH: TFloatField;
    qryPensiunPOT_PANGAN: TFloatField;
    qryPensiunPOT_KORPRI: TFloatField;
    qryPensiunPOT_GAJI_LEBIH: TFloatField;
    qryPensiunPOT_HUTANG: TFloatField;
    qryPensiunBIAYA_JABATAN: TFloatField;
    qryPensiunBIAYA_PENSIUN: TFloatField;
    qryPensiunPersen_Gaji: TFloatField;
    qryPensiunIsTTU: TSmallintField;
    qryPensiunISBAYARGJ: TBooleanField;
    qryPensiunOPERATOR: TStringField;
    qryPensiunTGL_UBAH: TDateTimeField;
    qryPensiunSisaBulan: TIntegerField;
    qryPensiunSisaText: TStringField;
    TVW: TTreeView;
    Panel1: TPanel;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    Splitter2: TSplitter;
    Panel4: TPanel;
    Panel11: TPanel;
    btnClose: TSpeedButton;
    Panel10: TPanel;
    txtCari: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    qryPensiunTGL_BUP: TDateTimeField;
    DBText1: TDBText;
    DBText2: TDBText;
    qryPensiunGolMKG: TStringField;
    DBText3: TDBText;
    Label4: TLabel;
    DBText4: TDBText;
    Label5: TLabel;
    DBText5: TDBText;
    btnPrint: TSpeedButton;
    Label6: TLabel;
    Label7: TLabel;
    CoBulan: TComboBox;
    pmF1: TPopupMenu;
    DesignEdit1: TMenuItem;
    qryPensiunISTAMBAH_BUP: TBooleanField;
    qryPensiunTGLTAMBAH_BUP: TDateTimeField;
    qryPensiunTGL_PENSIUN: TDateTimeField;
    qryPensiunNomorUrut: TLargeintField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TVWChange(Sender: TObject; Node: TTreeNode);
    procedure btnCloseClick(Sender: TObject);
    procedure qryPensiunBeforeInsert(DataSet: TDataSet);
    procedure qryPensiunCalcFields(DataSet: TDataSet);
    procedure qryPensiunAfterOpen(DataSet: TDataSet);
    procedure txtCariChange(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure DesignEdit1Click(Sender: TObject);
  private
    { Private declarations }
    BaruBuka: Boolean;
    InBuildMenu: Boolean;

    SelectedMenu: TMyMenu;

    procedure CreateTreeMenu;
    function GetFilterSQL: String;
    procedure RequeryPensiun;
    function GetRealSisaPensiun(TglPensiun: TDateTime): String;
  public
    { Public declarations }
  end;

var
  frmMonitorPensiun: TfrmMonitorPensiun;

Procedure MonitoringPensiunDlg;

implementation

{$R *.dfm}

uses ReportsModule;

Procedure MonitoringPensiunDlg;
begin
  if (frmMonitorPensiun=nil) then frmMonitorPensiun:= TfrmMonitorPensiun.Create(Nil);
  frmMonitorPensiun.Show;
  frmMonitorPensiun:= nil;
end;

procedure TfrmMonitorPensiun.CreateTreeMenu;
var qryUnit, qryGol, qryGolongan: TADOQuery;
    sMenu: vMyMenu;
    sNode, uNode, gNode: TTreeNode;
    IsErr: Boolean;
    S, F: String;
    nID: Integer;
Label Er, Lanjut;
begin
  InBuildMenu:= True;
  TVW.Items.Clear;
  qryUnit:= TADOQuery.Create(nil);
  qryGol:= TADOQuery.Create(nil);
  qryGolongan:= TADOQuery.Create(nil);
  qryUnit.SQL.Text:= 'select * from tblunit ';
  if (not GModule.IsAllSKPD) then F:= GModule.GetFilterSKPD;
  if (F<>'') then qryUnit.SQL.Text:= qryUnit.SQL.Text + ' Where ' + F + ' ';
  qryUnit.SQL.Text:= qryUnit.SQL.Text + ' order by unitkd';
  qryUnit.Connection:= GModule.conn;
  qryGol.SQL.Text:= 'select * from tblgolongan where issummary = 1 order by golongankd desc';
  qryGol.Connection:= GModule.conn;
  qryGolongan.Connection:= GModule.conn;
  IsErr:= False;
  try
    qryUnit.Open;
    qryGol.Open;
  except
    IsErr:= True;
  end;
  if (IsErr) then goto Er;
  nID:= 0;
  New(sMenu);
  sMenu.ID:= nID;
  sMenu.SKPDKd:= '';
  sMenu.GolKd:= '';
  sMenu.GolonganKd:= '';
  S:= 'SKPD';
  if (GModule.UserGroupId=1) or (GModule.IsAllSKPD) then
    S:= S + ' : ALL'
  else
    begin
      S:= S + ' : ' + qryUnit.FieldByName('UnitNm').AsString;
      if (GModule.IsAccessSub) then S:= S + ' + Sub';
    end;
  sNode:= TVW.Items.AddObject(nil, S, sMenu);
  While not qryUnit.Eof do
    begin
      Inc(nID);
      New(sMenu);
      sMenu.ID:= nID;
      sMenu.SKPDKd:= qryUnit.FieldByName('UnitKd').AsString;
      sMenu.GolKd:= '';
      sMenu.GolonganKd:= '';
      uNode:= TVW.Items.AddChildObject(sNode,
          qryUnit.FieldByName('UnitKd').AsString + ' : ' +
          qryUnit.FieldByName('UnitNm').AsString, sMenu);
      qryGol.First;
      while not qryGol.Eof do
        begin
          if (qryUnit.FieldByName('UnitKd').AsString='1.20.02') then
            begin
              if (UpperCase(qryGol.FieldByName('golongankd').AsString)<>'VI') then goto Lanjut;
            end
          else
            begin
              if (UpperCase(qryGol.FieldByName('golongankd').AsString)='VI') then goto Lanjut;
            end;
          Inc(nID);
          New(sMenu);
          sMenu.ID:= nID;
          sMenu.SKPDKd:= qryUnit.FieldByName('UnitKd').AsString;
          sMenu.GolKd:= qryGol.FieldByName('golongankd').AsString;
          sMenu.GolonganKd:= '';
          gNode:= TVW.Items.AddChildObject(uNode, 'Golongan ' +
            qryGol.FieldByName('golongankd').AsString, sMenu);
          qryGolongan.Close;
          qryGolongan.SQL.Text:= 'select huruf=right(golongankd,1), golongankd, uraian from tblgolongan where issummary=0 ' +
            ' and (left(golongankd, len(golongankd)-1)=' +
                QuotedStr(qryGol.FieldByName('golongankd').AsString + '/') + ') ';
          qryGolongan.SQL.Text:= qryGolongan.SQL.Text + ' order by right(golongankd,1) desc ';
          try
            qryGolongan.Open;
            while not qryGolongan.Eof do
              begin
                Inc(nID);
                New(sMenu);
                sMenu.ID:= nID;
                sMenu.SKPDKd:= qryUnit.FieldByName('UnitKd').AsString;
                sMenu.GolKd:= qryGol.FieldByName('GolonganKd').AsString;
                sMenu.GolonganKd:= qryGolongan.FieldByName('GolonganKd').AsString;
                TVW.Items.AddChildObject(gNode,
                  qryGolongan.FieldByName('huruf').AsString + ' - ' +
                  qryGolongan.FieldByName('uraian').AsString, sMenu);
                qryGolongan.Next;
              end;
          except
          end;
        Lanjut:
          qryGol.Next;
        end;
      qryUnit.Next;
    end;
  sNode.Expanded:= True;
  InBuildMenu:= False;
Er:
  qryUnit.Free;
  qryGol.Free;
  qryGolongan.Free;
end;

function TfrmMonitorPensiun.GetFilterSQL: String;
var FU, strWhere, strCari, FG: String;
begin
  strCari:= '';
  if (txtCari.Text<>'') then
    begin
      strCari:= '((NIP like ' + QuotedStr(txtCari.Text + '%') + ') or ' +
            '(Nama like ' + QuotedStr('%' + txtCari.Text + '%') + ') or ' +
            '(NIP_LAMA Like ' + QuotedStr(txtCari.Text + '%') + '))';
    end;
  if (SelectedMenu.GolonganKd<>'') then
    FG:= '(golongankd=' + QuotedStr(SelectedMenu.GolonganKd) + ')'
  else
    begin
      if (SelectedMenu.GolKd<>'') then
        FG:= '(golongankd like ' + QuotedStr(SelectedMenu.GolKd + '/%') + ')';
    end;
    strWhere:= FG;
  if (SelectedMenu.SKPDKd='') then
      FU:= GModule.GetFilterSKPD
  else
      FU:= 'UnitKd=' + QuotedStr(SelectedMenu.SKPDKd);
  if (strWhere<>'') then
    begin
      if (FU<>'') then strWhere:= strWhere + ' and (' + FU + ')';
    end
  else
    begin
      if (FU<>'') then strWhere:= '(' + FU + ')';
    end;
  if (strCari<>'') then
    begin
      if (strWhere<>'') then strWhere:= strWhere + ' and ' + strCari
      else strWhere:= strCari;
    end;
  
  Result:= strWhere;
end;

procedure TfrmMonitorPensiun.RequeryPensiun;
var S, F: String;
begin
  qryPensiun.Close;
  if (BaruBuka) then exit;
  F:= GetFilterSQL;
  S:= 'select * from ViewPegawai Where (not Aktif_Kd in(3,4,5,6)) ' +
      'and (not Tgl_Lahir Is Null) and (not Tgl_pensiun Is Null) AND (YEAR(Tgl_pensiun) = ' + GModule.Tahun + ') ';
  if (CoBulan.ItemIndex>0) then
    S:= S + ' and ((Month(Tgl_pensiun)=' + IntToStr(CoBulan.ItemIndex) + ')) ';
  if (F<>'') then S:= S + ' and ' + F;
  S:= S + ' order by Unitkd, sts_pegawaikd desc, aktif_kd asc, ' +
      '(case jbt_strukturkd when ''9999'' then ''zzz'' when ''BUP'' then ''0'' ' +
      'when ''WABUP'' then ''1'' else jbt_strukturkd end)asc, golongankd desc';
  qryPensiun.SQL.Text:= S;
  try
    qryPensiun.Open;
  finally
  end;
end;

function TfrmMonitorPensiun.GetRealSisaPensiun(TglPensiun: TDateTime): String;
var TglNow: TDateTime;
    Tmp, MRes, YRes: Integer;
    TmpRes: String;
begin
  TglNow:= Date;
  if (TglPensiun<TglNow) then
    TmpRes:= 'Sudah Pensiun'
  else
    begin
      MRes:= MonthsBetween(TglNow, TglPensiun);
      YRes:= YearsBetween(TglNow, TglPensiun);
      TmpRes:= '';
      if (YRes>0) then
        begin
          Tmp:= MRes - (YRes * 12);
          TmpRes:= IntToStr(YRes) + ' thn, ' + IntToStr(Tmp) + ' bln';
        end
      else TmpRes:= IntToStr(MRes) + ' bln';
    end;
  Result:= TmpRes;
end;

procedure TfrmMonitorPensiun.FormCreate(Sender: TObject);
begin
  BaruBuka:= True;
  CoBulan.ItemIndex:= MonthOf(Now);
  BaruBuka:= False;
  CreateTreeMenu;
end;

procedure TfrmMonitorPensiun.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TfrmMonitorPensiun.TVWChange(Sender: TObject; Node: TTreeNode);
begin
  if (InBuildMenu) then exit;
  SelectedMenu.ID:= vMyMenu(Node.Data)^.ID;
  SelectedMenu.SKPDKd:= vMyMenu(Node.Data)^.SKPDKd;
  SelectedMenu.GolKd:= vMyMenu(Node.Data)^.GolKd;
  SelectedMenu.GolonganKd:= vMyMenu(Node.Data)^.GolonganKd;
  RequeryPensiun;
end;

procedure TfrmMonitorPensiun.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmMonitorPensiun.qryPensiunBeforeInsert(DataSet: TDataSet);
begin
  Abort;
end;

procedure TfrmMonitorPensiun.qryPensiunCalcFields(DataSet: TDataSet);
var SS: String;
begin
  if (Dataset.FieldByName('Tgl_Lahir').IsNull) then
    Dataset.FieldByName('SisaText').AsString:= 'Invalid Tgl Lahir'
  else
    begin
      SS:= GetRealSisaPensiun(Dataset.FieldByName('Tgl_Pensiun').AsDateTime);
      if (Dataset.FieldByName('IsTambah_BUP').AsBoolean) then
        Dataset.FieldByName('SisaText').AsString:= SS + ' (Diperpanjang)'
      else
        Dataset.FieldByName('SisaText').AsString:= SS;
    end;
    //GetSisaPensiun(Dataset.FieldByName('Tgl_Lahir').AsDateTime,
    //    Dataset.FieldByName('Max_Pensiun').AsInteger);
  Dataset.FieldByName('GolMKG').AsString:= Dataset.FieldByName('GolonganKd').AsString + ', ' +
      IntToStr(Dataset.FieldByName('MasaKerja').AsInteger) + ' Thn';

  Dataset.FieldByName('NomorUrut').AsInteger:= Abs(Dataset.RecNo);
end;

procedure TfrmMonitorPensiun.qryPensiunAfterOpen(DataSet: TDataSet);
var I: Integer;
begin
  for I:= 0 to qryPensiun.FieldCount - 1 do
    begin
      case qryPensiun.Fields[I].DataType of
      ftInteger:
        begin
          TIntegerField(qryPensiun.Fields[I]).DisplayFormat:= '#,0';
          TIntegerField(qryPensiun.Fields[I]).EditFormat:= '#,0';
        end;
      ftLargeint:
        begin
          TLargeintField(qryPensiun.Fields[I]).DisplayFormat:= '#,0';
          TLargeintField(qryPensiun.Fields[I]).EditFormat:= '#,0';
        end;
      ftFloat:
        begin
          TFloatField(qryPensiun.Fields[I]).DisplayFormat:= '#,0';
          TFloatField(qryPensiun.Fields[I]).EditFormat:= '#,0';
        end;
      ftDateTime :
        begin
          TDateTimeField(qryPensiun.Fields[I]).DisplayFormat:= 'dd-mm-yyyy';
        end;
      end;
    end;
end;

procedure TfrmMonitorPensiun.txtCariChange(Sender: TObject);
begin
  RequeryPensiun;
end;

procedure TfrmMonitorPensiun.btnPrintClick(Sender: TObject);
begin
  DMReports.ShowReportMonitoring(GModule.Path + 'Rpt-Monitoring\MonitoringPensiun.fr3',
        GModule.Tahun, IntToStr(CoBulan.ItemIndex),
        txtCari.Text, SelectedMenu);
end;

procedure TfrmMonitorPensiun.DesignEdit1Click(Sender: TObject);
begin
  DMReports.DesignReportMonitoring(GModule.Path + 'Rpt-Monitoring\MonitoringPensiun.fr3',
        GModule.Tahun, IntToStr(CoBulan.ItemIndex),
        txtCari.Text, SelectedMenu);
end;

end.
