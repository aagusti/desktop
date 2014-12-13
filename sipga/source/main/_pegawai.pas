unit _pegawai;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, ADODB, DBCtrls, StdCtrls, Mask, ToolEdit, RXDBCtrl,
  Buttons, StrUtils, Math, DateUtils, ComCtrls, RxLookup, Grids, DBGrids,
  SMDBGrid, GlobalModule, TFlatGaugeUnit, Menus;

type
  TfrmPegawai = class(TForm)
    TmpQ: TADOQuery;
    Panel9: TPanel;
    btnProses: TSpeedButton;
    Panel10: TPanel;
    Label6: TLabel;
    txtCari: TEdit;
    dbNav: TDBNavigator;
    Panel11: TPanel;
    btnClose: TSpeedButton;
    TVW: TTreeView;
    PGCDetail: TPageControl;
    Splitter2: TSplitter;
    Splitter3: TSplitter;
    TabSheet7: TTabSheet;
    Label30: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label34: TLabel;
    Label3: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label39: TLabel;
    Label47: TLabel;
    Label56: TLabel;
    DBEdit30: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit34: TDBEdit;
    DBEdit42: TDBEdit;
    DBEdit43: TDBEdit;
    DBEdit44: TDBEdit;
    DBEdit45: TDBEdit;
    DBEdit46: TDBEdit;
    DBEdit38: TDBEdit;
    DBEdit47: TDBEdit;
    DBEdit52: TDBEdit;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label59: TLabel;
    Label61: TLabel;
    Label58: TLabel;
    Label57: TLabel;
    Label60: TLabel;
    DBEdit56: TDBEdit;
    DBEdit53: TDBEdit;
    DBEdit54: TDBEdit;
    DBEdit55: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit51: TDBEdit;
    DBEdit50: TDBEdit;
    DBEdit49: TDBEdit;
    DBEdit48: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit6: TDBEdit;
    TabSheet8: TTabSheet;
    Panel12: TPanel;
    Label40: TLabel;
    DBEdit2: TDBEdit;
    Label97: TLabel;
    DBEdit3: TDBEdit;
    Label98: TLabel;
    DBDateEdit7: TDBDateEdit;
    Label99: TLabel;
    DBLookupComboBox9: TDBLookupComboBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    Label100: TLabel;
    DBEdit7: TDBEdit;
    DBNavigator2: TDBNavigator;
    SMDBGrid2: TSMDBGrid;
    Label18: TLabel;
    DBEdit15: TDBEdit;
    TabSheet1: TTabSheet;
    btnF1: TSpeedButton;
    btnF2: TSpeedButton;
    pnlGrid: TPanel;
    PGCMain: TPageControl;
    TabSheet5: TTabSheet;
    SMDBGrid1: TSMDBGrid;
    TabSheet6: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label63: TLabel;
    Label65: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label31: TLabel;
    Label17: TLabel;
    Label14: TLabel;
    Label19: TLabel;
    Label21: TLabel;
    Label20: TLabel;
    Label64: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label25: TLabel;
    Label96: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label35: TLabel;
    Label62: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    DBEdit1: TDBEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBDateSP2DDate: TDBDateEdit;
    DBComboBox1: TDBComboBox;
    DBEdit13: TDBEdit;
    DBLookupComboBox3: TDBLookupComboBox;
    DBDateEdit2: TDBDateEdit;
    DBLookupComboBox6: TDBLookupComboBox;
    DBDateEdit5: TDBDateEdit;
    DBLookupComboBox5: TDBLookupComboBox;
    DBDateEdit1: TDBDateEdit;
    DBEdit24: TDBEdit;
    DBDateEdit4: TDBDateEdit;
    DBLookupComboBox8: TDBLookupComboBox;
    DBEdit14: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit59: TDBEdit;
    DBEdit19: TDBEdit;
    LookEselon: TDBLookupComboBox;
    DBDateEdit3: TDBDateEdit;
    LookFungsi: TDBLookupComboBox;
    DBDateEdit6: TDBDateEdit;
    DBEdit40: TDBEdit;
    DBEdit41: TDBEdit;
    DBLookupComboBox4: TDBLookupComboBox;
    DBEdit57: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit36: TDBEdit;
    DBEdit37: TDBEdit;
    Panel3: TPanel;
    fgProses: TFlatGauge;
    Label70: TLabel;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    pmF1: TPopupMenu;
    DesignEdit1: TMenuItem;
    pmF2: TPopupMenu;
    MenuItem1: TMenuItem;
    btnF3: TSpeedButton;
    pmF3: TPopupMenu;
    MenuItem2: TMenuItem;
    btnImport: TSpeedButton;
    btnEksport: TSpeedButton;
    Label67: TLabel;
    tglTTD: TDateEdit;
    SaveEksport: TSaveDialog;
    ckTambah: TDBCheckBox;
    TglTambah: TDBDateEdit;
    pnlJmlData: TPanel;
    ckSertifikasi: TDBCheckBox;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnProsesClick(Sender: TObject);
    procedure TVWChange(Sender: TObject; Node: TTreeNode);
    procedure dbNavClick(Sender: TObject; Button: TNavigateBtn);
    procedure txtCariChange(Sender: TObject);
    procedure btnF1Click(Sender: TObject);
    procedure DesignEdit1Click(Sender: TObject);
    procedure LookEselonClick(Sender: TObject);
    procedure LookFungsiClick(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure btnEksportClick(Sender: TObject);
    procedure btnImportClick(Sender: TObject);
    procedure ckTambahClick(Sender: TObject);
  private
    { Private declarations }
    // ----
    InBuildMenu: Boolean;
    InProses: Boolean;
    // ----

    //procedure FilterSKPD;

    // ---- 2011 ----

    procedure CreateTreeMenu;
    procedure RequeryPegawai;

    // end 2011 ----
  public
    { Public declarations }
    SelectedMenu: TMyMenu;
  end;

Procedure   PegawaiDlg;

var
  frmPegawai: TfrmPegawai;

implementation

uses _GajiDM, PegawaiModule, _tanggungan, ReportsModule, FImportData;

{$R *.dfm}

Procedure PegawaiDlg;
begin
  TfrmPegawai.Create(Nil);
end;

// ------- 2011 -----------//

procedure TfrmPegawai.CreateTreeMenu;
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
  if (not GModule.IsAllSKPD) then
    sMenu.SKPDKd:= GModule.UnitKd
  else sMenu.SKPDKd:= '';
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
          qryGolongan.SQL.Text:= 'select right(golongankd,1) as huruf, golongankd, uraian from tblgolongan where issummary=0 ' +
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
  TVW.Items[0].Selected:= True;
Er:
  qryUnit.Free;
  qryGol.Free;
  qryGolongan.Free;
end;

procedure TfrmPegawai.RequeryPegawai;
var strSQL, strWhere, FU, strOrder, strCari: String;
begin
  pnlJmlData.Caption:= 'Jumlah Data = 0';
  strSQL:= 'select * from pegawai ';
  strOrder:= ' order by UnitKd, sts_pegawaikd desc, aktif_kd asc, ' +
      '(case jbt_strukturkd when ''9999'' then ''zzz'' when ''BUP'' then ''0'' when ''WABUP'' then ''1'' else jbt_strukturkd end)asc, ' +
      'golongankd desc ';
  strCari:= '';
  if (txtCari.Text<>'') then
    begin
      strCari:= '((NIP like ' + QuotedStr('%' + txtCari.Text + '%') + ') or ' +
            '(Nama like ' + QuotedStr('%' + txtCari.Text + '%') + ') or ' +
            '(NIP_LAMA Like ' + QuotedStr('%' + txtCari.Text + '%') + '))';
    end;
  strWhere:= '';
  if (SelectedMenu.GolonganKd<>'') then
    strWhere:= '(golongankd=' + QuotedStr(SelectedMenu.GolonganKd) + ')'
  else
    begin
      if (SelectedMenu.GolKd<>'') then
        strWhere:= '(golongankd like ' + QuotedStr(SelectedMenu.GolKd + '/%') + ')';
    end;
  FU:= '';
  if ((SelectedMenu.SKPDKd='') or (SelectedMenu.ID=0)) then
    begin
      if (not GModule.IsAllSKPD) then FU:= GModule.GetFilterSKPD;
    end
  else
    FU:= 'UnitKd=' + QuotedStr(SelectedMenu.SKPDKd);
  if (FU<>'') then
    begin
      if (strWhere<>'') then strWhere:= strWhere + ' and (' + FU + ')'
      else strWhere:= '(' + FU + ')';
    end;
  if (strCari<>'') then
    begin
      if (strWhere<>'') then strWhere:= strWhere + ' and ' + strCari
      else strWhere:= strCari;
    end;
  if (strWhere<>'') then strWhere:= ' Where ' + strWhere;
  strSQL:= strSQL + strWhere + strOrder;
  //ShowMessage(strSQL);
  DMPegawai.Pegawai.Close;
  DMPegawai.Pegawai.SQL.Text:= strSQL;
  try
    DMPegawai.Pegawai.Open;
    pnlJmlData.Caption:= 'Jumlah Data = ' + FormatFloat('#,0', DMPegawai.Pegawai.RecordCount);
  except
    on ex: exception do MessageDlg(ex.Message, mtError, [mbOK], 0);
  end;
  TglTambah.Enabled:= ckTambah.Checked;
end;

// -------- end 2011 ---------- //

procedure TfrmPegawai.FormShow(Sender: TObject);
var W: Integer;
begin
  WindowState:= wsMaximized;
  // 2011
  PGCMain.ActivePageIndex:= 0;
  PGCDetail.ActivePageIndex:= 0;
  pnlGrid.Width:= Width - 250 - 8 - 410;
  W:= Width - pnlGrid.Width - 8 - 410;
  if W>250 then W:= 250;
  TVW.Width:= W;

  btnF1.Width:= PGCDetail.Width-20;
  btnF2.Width:= btnF1.Width;
  btnF3.Width:= btnF1.Width;

  tglTTD.Date:= Date;
  // end 2011
end;

procedure TfrmPegawai.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TfrmPegawai.FormCreate(Sender: TObject);     // 2011
var IsStfk: Boolean;
begin
  IsStfk:= ((LeftStr(GModule.UnitKd, 7) = '1.01.01') or (GModule.IsAllSKPD)) and
            (GModule.AdaSertifikasi('Pegawai'));
  DMPegawai.Pegawai.Close;
  if (not IsStfk) then
    begin
      DMPegawai.Pegawai.FieldByName('IsSertifikasi').FieldKind:= fkCalculated;
      ckSertifikasi.DataSource:= nil;
      ckSertifikasi.DataField:= '';
      ckSertifikasi.Visible:= False;
    end
  else
    begin
      DMPegawai.Pegawai.FieldByName('IsSertifikasi').FieldKind:= fkData;
      ckSertifikasi.DataSource:= DMPegawai.dsPegawai;
      ckSertifikasi.DataField:= 'IsSertifikasi';
      ckSertifikasi.Visible:= True;
    end;
  CreateTreeMenu;
end;

procedure TfrmPegawai.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmPegawai.btnProsesClick(Sender: TObject);
var N, I: Integer;
begin
  if MessageDlg('Proses Semua Record',mtConfirmation,[mbYes,mbNo],0)=mrYes then
  begin
    fgProses.Visible:= True;
    I:= 0;
    N:= DMPegawai.Pegawai.RecordCount;
    fgProses.MaxValue:= N;
    fgProses.Progress:=0;
    DMPegawai.Pegawai.First;
    while not DMPegawai.Pegawai.Eof do
    begin
      DMPegawai.Pegawai.Edit;
      DMPegawai.Pegawai.Post;
      DMPegawai.Pegawai.Next;
      Inc(I);
      if (I>N) then fgProses.Progress:= N;
      fgProses.Progress:=I;
      Application.ProcessMessages;
    end;
    ShowMessage('Proses Hitung Ulang Telah Selesai');
  end;
  fgProses.Visible:= False;
end;

procedure TfrmPegawai.TVWChange(Sender: TObject; Node: TTreeNode);
begin
  if (InProses) then exit;
  if (InBuildMenu) then exit;
  SelectedMenu.ID:= vMyMenu(Node.Data)^.ID;
  SelectedMenu.SKPDKd:= vMyMenu(Node.Data)^.SKPDKd;
  SelectedMenu.GolKd:= vMyMenu(Node.Data)^.GolKd;
  SelectedMenu.GolonganKd:= vMyMenu(Node.Data)^.GolonganKd;
  RequeryPegawai;
end;

procedure TfrmPegawai.dbNavClick(Sender: TObject; Button: TNavigateBtn);
begin
  if ((Button=nbInsert) or (Button=nbEdit)) then PGCMain.ActivePageIndex:= 1;
  if (Button=nbInsert) then
    begin
      DMPegawai.Pegawai.FieldByName('Persen_Gaji').AsFloat:=100;
      DMPegawai.Pegawai.FieldByName('IsTAmbah_BUP').AsBoolean:= False;
      DMPegawai.Pegawai.FieldByName('STS_SIPIL').AsString:='-';
      DMPegawai.Pegawai.FieldByName('UnitKd').AsString:= SelectedMenu.SKPDKd;
      DMPegawai.Pegawai.FieldByName('GolonganKd').AsString:= SelectedMenu.GolonganKd;
      DMPegawai.Pegawai.FieldByName('Sts_PegawaiKd').AsString:= 'P';
      DMPegawai.Pegawai.FieldByName('Jns_Kelamin').AsString:= 'L';
      DMPegawai.Pegawai.FieldByName('Jbt_StrukturKd').AsString:= '9999';
      DMPegawai.Pegawai.FieldByName('Jbt_FungsiKd').AsString:= '000';
      DMPegawai.Pegawai.FieldByName('GuruKd').AsString:= 'N';
    end;
  TglTambah.Enabled:= ckTambah.Checked;
end;

procedure TfrmPegawai.txtCariChange(Sender: TObject);
begin
  RequeryPegawai;
end;

procedure TfrmPegawai.btnF1Click(Sender: TObject);
var N: Integer;
    F: String;
begin
  N:= TSpeedButton(Sender).Tag;
  case N of
  1 : F:= GModule.Path + 'Rpt-Pegawai\KarwasPerorangan.fr3';
  2 : F:= GModule.Path + 'Rpt-Pegawai\SKP.fr3';
  3 : F:= GModule.Path + 'Rpt-Pegawai\SKUMPTK.fr3';
  else F:= '';
  end;
  DMReports.ShowReportPegawai(F,
      DMPegawai.Pegawai.FieldByName('NIP').AsString, GModule.Tahun, '', TglTTD.Date);
end;

procedure TfrmPegawai.DesignEdit1Click(Sender: TObject);
var N: Integer;
    F: String;
begin
  N:= TmenuItem(Sender).Tag;
  case N of
  1 : F:= GModule.Path + 'Rpt-Pegawai\KarwasPerorangan.fr3';
  2 : F:= GModule.Path + 'Rpt-Pegawai\SKP.fr3';
  3 : F:= GModule.Path + 'Rpt-Pegawai\SKUMPTK.fr3';
  else F:= '';
  end;
  DMReports.DesignReportPegawai(F,
      DMPegawai.Pegawai.FieldByName('NIP').AsString, GModule.Tahun, '', TglTTD.Date);
end;

procedure TfrmPegawai.LookEselonClick(Sender: TObject);
//var K: String;
begin
  //K:= DMPegawai.Pegawai.FieldByName('JBT_StrukturKd').AsString;
  //LookFungsi.Enabled:= ((K='') or (K='9999'));
end;

procedure TfrmPegawai.LookFungsiClick(Sender: TObject);
//var K: String;
begin
  //K:= DMPegawai.Pegawai.FieldByName('JBT_FungsiKd').AsString;
  //LookEselon.Enabled:= ((K='') or (K='000'));
end;

procedure TfrmPegawai.DBEdit1Change(Sender: TObject);
//var S, F: String;
begin
  //S:= DMPegawai.Pegawai.FieldByName('JBT_StrukturKd').AsString;
  //F:= DMPegawai.Pegawai.FieldByName('JBT_FungsiKd').AsString;
  //LookFungsi.Enabled:= ((S='') or (S='9999'));
  //LookEselon.Enabled:= ((F='') or (F='000'));
end;

procedure TfrmPegawai.btnEksportClick(Sender: TObject);
var Ek: Integer;
    sFile, DefName: String;
    PF: TPersistFormat;
begin
  if (DMPegawai.Pegawai.IsEmpty) then
    begin
      MessageDlg('Tidak Ada Data Yang Dapat di Esksport.', mtWarning, [mbOK], 0);
      exit;
    end;
  sFile:= '';
  DefName:= 'Master_Pegawai';
  if (SelectedMenu.SKPDKd<>'') then
    DefName:= DefName + '-' + StringReplace(LeftStr(SelectedMenu.SKPDKd, 7), '.', '', [rfReplaceAll]);
  SaveEksport.InitialDir:= GModule.Path + 'Eksport';
  SaveEksport.FileName:= GModule.Path + DefName;
  if (SaveEksport.Execute) then sFile:= SaveEksport.FileName;
  if (sFile<>'') then
    begin
      try
        Ek:= SaveEksport.FilterIndex;
        case Ek of
        2 :
          begin
            sFile:= GModule.AddExtention(sFile, 'xml');
            PF:= pfXML;
          end;
        else
          begin
            sFile:= GModule.AddExtention(sFile, 'sipga');
            PF:= pfADTG;
          end;
        end;
        DMPegawai.Pegawai.SaveToFile(sFile, PF);
        MessageDlg('Data Telah Dieksport.', mtInformation, [mbOK], 0);
      except
        on Ex: Exception do
          MessageDlg('Error...!!!' + #13#10 + Ex.Message, mtError, [mbOK], 0);
      end;
    end;
end;

procedure TfrmPegawai.btnImportClick(Sender: TObject);
begin
  if (DMPegawai.Pegawai.Active) then
    begin
      if (ImportPGWDlg) then DMPegawai.Pegawai.Requery;
    end;
end;

procedure TfrmPegawai.ckTambahClick(Sender: TObject);
begin
  TglTambah.Enabled:= ckTambah.Checked;
end;

end.
