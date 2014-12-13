unit FRapelan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, ADODB, DBCtrls, StdCtrls, Mask, ToolEdit, RXDBCtrl,
  Buttons, StrUtils, Math, DateUtils, ComCtrls, RxLookup, Grids, DBGrids,
  SMDBGrid, GlobalModule, TFlatGaugeUnit, Menus;

type
  TfrmGajiRapel = class(TForm)
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
    TabSheet1: TTabSheet;
    btnF1: TSpeedButton;
    btnF2: TSpeedButton;
    Pegawai: TADOQuery;
    PegawaiNIP: TStringField;
    PegawaiUNITKD: TStringField;
    PegawaiNAMA: TStringField;
    PegawaiTGL_LAHIR: TDateTimeField;
    PegawaiTMP_LAHIR: TStringField;
    PegawaiJNS_KELAMIN: TStringField;
    PegawaiBANK: TStringField;
    PegawaiREKENING: TStringField;
    PegawaiNPWP: TStringField;
    PegawaiNO_PEGAWAI: TStringField;
    PegawaiNOJJP: TStringField;
    PegawaiALAMAT: TStringField;
    PegawaiNAMASI: TStringField;
    PegawaiSTS_PEGAWAIKD: TStringField;
    PegawaiTMT_PEGAWAI: TDateTimeField;
    PegawaiSTS_KWN: TStringField;
    PegawaiSTS_SIPIL: TStringField;
    PegawaiAGAMA: TStringField;
    PegawaiJML_SI: TSmallintField;
    PegawaiJML_ANAK: TSmallintField;
    PegawaiPTKP: TIntegerField;
    PegawaiPEND_TERAKHIR: TStringField;
    PegawaiPEND_JURUSAN: TStringField;
    PegawaiV_JAB_STRUKTUR: TStringField;
    PegawaiGOLONGANKD: TStringField;
    PegawaiTMT_GOLONGAN: TDateTimeField;
    PegawaiMASAKERJA: TIntegerField;
    PegawaiTMT_GAJI_POKOK: TDateTimeField;
    PegawaiJBT_FUNGSIKD: TStringField;
    PegawaiTMT_FUNGSI: TDateTimeField;
    PegawaiJBT_STRUKTURKD: TStringField;
    PegawaiTMT_JABATAN: TDateTimeField;
    PegawaiAKTIF_KD: TIntegerField;
    PegawaiAKTIF_TGL: TDateTimeField;
    PegawaiGURUKD: TStringField;
    PegawaiTDTKD: TStringField;
    PegawaiPIC_FOTO: TBlobField;
    PegawaiGAJI_POKOK: TFloatField;
    PegawaiTUNJ_ISTRI: TFloatField;
    PegawaiTUNJ_ANAK: TFloatField;
    PegawaiTUNJ_BERAS: TFloatField;
    PegawaiTUNJ_JAB_STRUKTUR: TFloatField;
    PegawaiTUNJ_JAB_FUNGSI: TFloatField;
    PegawaiTUNJ_KERJA: TFloatField;
    PegawaiTUNJ_UMUM: TFloatField;
    PegawaiTUNJ_UMUM_TAMB: TFloatField;
    PegawaiTUNJ_OTSUS: TFloatField;
    PegawaiTUNJ_DT: TFloatField;
    PegawaiTUNJ_ASKES: TFloatField;
    PegawaiTUNJ_PENGHASILAN: TFloatField;
    PegawaiPEMBULATAN: TFloatField;
    PegawaiPPH: TFloatField;
    PegawaiPOT_IWP: TFloatField;
    PegawaiPOT_TAPERUM: TFloatField;
    PegawaiPOT_SEWA_RUMAH: TFloatField;
    PegawaiPOT_PANGAN: TFloatField;
    PegawaiPOT_KORPRI: TFloatField;
    PegawaiPOT_GAJI_LEBIH: TFloatField;
    PegawaiPOT_HUTANG: TFloatField;
    PegawaiBIAYA_JABATAN: TFloatField;
    PegawaiBIAYA_PENSIUN: TFloatField;
    PegawaiPersen_Gaji: TFloatField;
    PegawaiIsTTU: TSmallintField;
    PegawaiISBAYARGJ: TBooleanField;
    PegawaiOPERATOR: TStringField;
    PegawaiTGL_UBAH: TDateTimeField;
    PegawaiGOLPGW: TStringField;
    PegawaiSTSPGW: TStringField;
    PegawaiGajiBersih: TFloatField;
    PegawaiPotongan: TFloatField;
    PegawaiGajiDanTunjangan: TFloatField;
    dsPegawai: TDataSource;
    qryStruktur: TADOQuery;
    dsStruktur: TDataSource;
    qryFungsional: TADOQuery;
    dsFungsional: TDataSource;
    qrySKPD: TADOQuery;
    dsSKPD: TDataSource;
    qryStatus: TADOQuery;
    dsStatus: TDataSource;
    qryAktif: TADOQuery;
    dsAktif: TDataSource;
    qryGolongan: TADOQuery;
    dsGolongan: TDataSource;
    qryGuru: TADOQuery;
    dsGuru: TDataSource;
    qryKawin: TADOQuery;
    dsKawin: TDataSource;
    qrySIPIL: TADOQuery;
    dsSIPIL: TDataSource;
    Panel2: TPanel;
    Label36: TLabel;
    DBEdit36: TDBEdit;
    Label37: TLabel;
    DBEdit37: TDBEdit;
    qryBulan: TADOQuery;
    dsBulan: TDataSource;
    QryJENIS: TADOQuery;
    dsJenis: TDataSource;
    DBEdit2: TDBEdit;
    Label18: TLabel;
    Label38: TLabel;
    DBLookupComboBox7: TDBLookupComboBox;
    Label40: TLabel;
    DBEdit3: TDBEdit;
    Label66: TLabel;
    DBDateEdit7: TDBDateEdit;
    DBCheckBox1: TDBCheckBox;
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
    DBNavigator1: TDBNavigator;
    dsParam: TDataSource;
    qryParam: TADOQuery;
    Panel3: TPanel;
    fgProses: TFlatGauge;
    PegawaiTAHUN: TStringField;
    PegawaiBULAN: TStringField;
    PegawaiJENIS: TSmallintField;
    qryJenisGaji: TADOQuery;
    btnF3: TSpeedButton;
    Label67: TLabel;
    DBEdit7: TDBEdit;
    Label68: TLabel;
    DBLookupComboBox9: TDBLookupComboBox;
    PegawaiTM_BULAN: TStringField;
    PegawaiTM_TAHUN: TStringField;
    ckSub: TCheckBox;
    Label69: TLabel;
    tglTTD: TDateEdit;
    PegawaiTGL_BUP: TDateTimeField;
    Label70: TLabel;
    DBEdit15: TDBEdit;
    PegawaiNIP_LAMA: TStringField;
    pmF1: TPopupMenu;
    DesignEdit1: TMenuItem;
    pmF2: TPopupMenu;
    MenuItem1: TMenuItem;
    pmF3: TPopupMenu;
    MenuItem2: TMenuItem;
    SaveEksport: TSaveDialog;
    btnImport: TSpeedButton;
    btnEksport: TSpeedButton;
    PegawaiISTAMBAH_BUP: TBooleanField;
    PegawaiTGLTAMBAH_BUP: TDateTimeField;
    ckTambah: TDBCheckBox;
    TglTambah: TDBDateEdit;
    pnlJmlData: TPanel;
    PegawaiNomorUrut: TLargeintField;
    ckSertifikasi: TDBCheckBox;
    PegawaiISSERTIFIKASI: TBooleanField;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure TVWChange(Sender: TObject; Node: TTreeNode);
    procedure PegawaiAfterOpen(DataSet: TDataSet);
    procedure dbNavClick(Sender: TObject; Button: TNavigateBtn);
    procedure PegawaiAfterInsert(DataSet: TDataSet);
    procedure QryJENISAfterInsert(DataSet: TDataSet);
    procedure txtCariChange(Sender: TObject);
    procedure QryJENISAfterPost(DataSet: TDataSet);
    procedure QryJENISAfterScroll(DataSet: TDataSet);
    procedure QryJENISAfterEdit(DataSet: TDataSet);
    procedure QryJENISAfterDelete(DataSet: TDataSet);
    procedure QryJENISAfterCancel(DataSet: TDataSet);
    procedure PegawaiAfterEdit(DataSet: TDataSet);
    procedure PegawaiAfterPost(DataSet: TDataSet);
    procedure PegawaiCalcFields(DataSet: TDataSet);
    procedure PegawaiBeforePost(DataSet: TDataSet);
    procedure btnProsesClick(Sender: TObject);
    procedure PegawaiAfterScroll(DataSet: TDataSet);
    procedure LookEselonClick(Sender: TObject);
    procedure LookFungsiClick(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure btnF1Click(Sender: TObject);
    procedure DesignEdit1Click(Sender: TObject);
    procedure btnImportClick(Sender: TObject);
    procedure btnEksportClick(Sender: TObject);
  private
    { Private declarations }

    MasterFlag:Boolean;
    // ----
    InBuildMenu: Boolean;
    InProses: Boolean;
    IsStfk: Boolean;
    // ----

    // ---- 2011 ----

    SelectedMenu: TMyMenu;
    MyTable, DefaultQueryGaji: String;

    procedure CaptionButtonPrint;

    procedure CreateTreeMenu;
    function GetFilterGajiSQL: String;
    procedure FilterPegawaiGaji;
    procedure ProsesTerusan;
    procedure ProsesStandar;

    // end 2011 ----

    procedure ButtonNavGaji;
  public
    { Public declarations }

  end;

Procedure GajiRapelDlg(Jns: Integer);

var
  frmGajiRapel: TfrmGajiRapel;
  JenisRapel: Integer;    // 10 = gaji pokok (inpasing gaji pokok global), 11 = tunj struktur, 12 = rapel tunj fungsional
                          // 13 = rapel tunj umum, 14 = rapel tunj beras, 15 = rapel KGB, 16 = rapel gaji susulan
  GjRapelBaruBuka: Boolean;

implementation

uses _GajiDM, PegawaiModule, CariPegawai, ReportsModule, FImportData;

{$R *.dfm}

Procedure GajiRapelDlg(Jns: Integer);
begin
  JenisRapel:= Jns;
  GjRapelBaruBuka:= True;
  if (frmGajiRapel=nil) then frmGajiRapel:= TfrmGajiRapel.Create(Nil);
  frmGajiRapel.Show;
  frmGajiRapel:= nil;
end;

procedure TfrmGajiRapel.ButtonNavGaji;
begin
  if (qryJenis.IsEmpty) then
    begin
      dbNav.VisibleButtons:= [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbEdit, nbDelete, nbPost, nbCancel, nbRefresh];
      dbNav.Enabled:= False;
      Exit;
    end;
  if (qryJenis.FieldByName('POSTED').AsBoolean) then
    dbNav.VisibleButtons:= [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
  else
    dbNav.VisibleButtons:= [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbEdit, nbDelete, nbPost, nbCancel, nbRefresh];
  dbNav.Enabled:= not ((qryJenis.IsEmpty) or (not qryJenis.Active) or (qryJenis.State in[dsInsert, dsEdit]));
end;

// ------- 2011 -----------//

procedure TfrmGajiRapel.CaptionButtonPrint;
var F1, F2, F3: String;
    G: String;
begin
  F1:= btnF1.Caption; F2:= btnF2.Caption; F3:= btnF3.Caption;
  case JenisRapel of
  10: G:= 'Rapel Gaji Pokok';
  11: G:= 'Rapel Tunj. Jabatan. Struktural';
  12: G:= 'Rapel Tunj. Jabatan Fungsional';
  13: G:= 'Rapel Tunj. Umum';
  14: G:= 'Rapel Tunj. Beras';
  15: G:= 'Rapel Kenaikan CPNS - PNS';
  16: G:= 'Rapel Kenikan Gaji Berkala (KGB)';
  17: G:= 'Rapel Perubahan Status Sipil';
  18: G:= 'Rapel Kenaikan Golongan';
  19: G:= 'Rapel Gaji Susulan';
  else G:= 'Rapel Tidak Diketahui';
  end;
  btnF1.Caption:= F1 + ' ' + G;
  btnF2.Caption:= F2 + ' ' + G;
  btnF3.Caption:= F3 + ' ' + G;
end;

procedure TfrmGajiRapel.CreateTreeMenu;
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

function TfrmGajiRapel.GetFilterGajiSQL: String;
var FU, strWhere, strCari, FG: String;
begin
  strCari:= '';
  if (txtCari.Text<>'') then
    begin
      strCari:= '((NIP like ' + QuotedStr('%' + txtCari.Text + '%') + ') or ' +
            '(Nama like ' + QuotedStr('%' + txtCari.Text + '%') + ') or ' +
            '(NIP_LAMA Like ' + QuotedStr('%' + txtCari.Text + '%') + '))';
    end;
  if (SelectedMenu.GolonganKd<>'') then
    FG:= '(golongankd=' + QuotedStr(SelectedMenu.GolonganKd) + ')'
  else
    begin
      if (SelectedMenu.GolKd<>'') then
        FG:= '(golongankd like ' + QuotedStr(SelectedMenu.GolKd + '/%') + ')';
    end;
    strWhere:= FG;
  if ((SelectedMenu.SKPDKd='') or (SelectedMenu.ID=0)) then
    begin
      if (not GModule.IsAllSKPD) then FU:= GModule.GetFilterSKPD;
    end
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

procedure TfrmGajiRapel.FilterPegawaiGaji;
var S, strWhere: String;
begin
  pnlJmlData.Caption:= 'Jumlah Data = 0';
  Pegawai.Close;

  if ((not qryJenis.Active) or (qryJenis.IsEmpty)) then exit;

  S:= DefaultQueryGaji;
  strWhere:= GetFilterGajiSQL;
  if (strWhere<>'') then
    S:= StringReplace(S, '--FILTER', ' AND ' + strWhere + ' ', [rfReplaceAll])
  else
    S:= StringReplace(S, '--FILTER', ' ', [rfReplaceAll]);
  Pegawai.SQL.Text:= S;
  
  try
    Pegawai.Open;
    pnlJmlData.Caption:= 'Jumlah Data = ' + FormatFloat('#,0', Pegawai.RecordCount);
  except
    on ex: exception do
        MessageDlg(ex.Message, mtError, [mbOK], 0);
  end;
  TglTambah.Enabled:= ckTambah.Checked;
end;

// -------- end 2011 ---------- //

procedure TfrmGajiRapel.FormShow(Sender: TObject);
var W: Integer;
begin
  WindowState:= wsMaximized;
  // 2011
  GjRapelBaruBuka:= False;
  qryJenis.SQL.Text:= 'SELECT * FROM PEGAWAI_RAPEL_JENIS ' +
            'Where Tahun=' + QuotedStr(GModule.Tahun) + ' and Jenis=' + IntToStr(JenisRapel) + ' ' +
            'ORDER BY TAHUN DESC,BULAN DESC,TM_TAHUN desc,TM_BULAN desc';
  try
    qryBulan.Open;
    qryJenis.Open;
  except
    on Ex: Exception do MessageDlg(ex.Message, mtError, [mbOK], 0);
  end;
  case JenisRapel of
  10: Caption:= 'Proses Rapel Gaji Pokok';
  11: Caption:= 'Proses Rapel Tunj. Jabatan Struktural';
  12: Caption:= 'Proses Rapel Tunj. Jabatan Fungsional';
  13: Caption:= 'Proses Rapel Tunj. Umum';
  14: Caption:= 'Proses Rapel Tunj. Beras';
  15: Caption:= 'Proses Rapel Kenaikan CPNS - PNS';
  16: Caption:= 'Proses Rapel Kenikan Gaji Berkala (KGB)';
  17: Caption:= 'Proses Rapel Perubahan Status Sipil';
  18: Caption:= 'Proses Rapel Kenaikan Golongan';
  19: Caption:= 'Proses Rapel Gaji Susulan';
  else Caption:= 'Proses Rapel Tidak Diketahui';
  end;
  if (TVW.Items.Count>0) then TVW.Items[0].Selected:= True;

  btnProses.Visible:= ((JenisRapel=10) or (JenisRapel=14));

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

procedure TfrmGajiRapel.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TfrmGajiRapel.FormCreate(Sender: TObject);     // 2011
var S: String;
begin
  MyTable:= 'Pegawai_Gaji_Rapel';
  IsStfk:= ((LeftStr(GModule.UnitKd, 7) = '1.01.01') or (GModule.IsAllSKPD)) and
            (GModule.AdaSertifikasi(MyTable));
  Pegawai.Close;
  if (not IsStfk) then
    begin
      Pegawai.FieldByName('IsSertifikasi').FieldKind:= fkCalculated;
      ckSertifikasi.DataSource:= nil;
      ckSertifikasi.DataField:= '';
      ckSertifikasi.Visible:= False;
    end
  else
    begin
      Pegawai.FieldByName('IsSertifikasi').FieldKind:= fkData;
      ckSertifikasi.DataSource:= dsPegawai;
      ckSertifikasi.DataField:= 'IsSertifikasi';
      ckSertifikasi.Visible:= True;
    end;
  DefaultQueryGaji:= Pegawai.SQL.Text;

  S:= DefaultQueryGaji;
  S:= StringReplace(S, '--FILTER', ' ', [rfReplaceAll]);
  Pegawai.SQL.Text:= S;
  qryJenis.Close;
  qryBulan.Close;
  MasterFlag:=True;
  CaptionButtonPrint;
  ckSub.Checked:= GModule.IsAccessSub;
  ckSub.Enabled:= GModule.IsAccessSub;
  CreateTreeMenu;
end;

procedure TfrmGajiRapel.btnCloseClick(Sender: TObject);
begin
  Close;
end;

///---- khusus terusan
procedure TfrmGajiRapel.ProsesTerusan;
var
    pokok,tunjangan,potongan:double; 
    oldround:TFPURoundingMode;
    persengaji:Double;
    
    accr, Trsn, Y1, Y2: Integer;
    nerror:integer;
    IsSudahPensiun: Boolean;
    Bln1, Bln2: Integer;
    PTKP: Integer;
begin
  oldround := GetRoundMode;
  SetRoundMode(rmNearest);
  qryParam.Close;
  qryParam.Parameters[0].Value:= GModule.Tahun;
  qryParam.Open;

  if qryJenisGaji.Active then qryJenisGaji.Requery()
  else  qryJenisGaji.Open;

  if qryAktif.Active then qryAktif.Requery()
  else  qryAktif.Open;
  
  With Pegawai do
  begin
      {if (not FieldByName('tgl_Lahir').IsNull) then
        FieldByName('Tgl_BUP').AsDateTime:= dmGaji.GetTglBUP(FieldByName('tgl_Lahir').AsDateTime,
          dmGaji.GetMaxPensiun(FieldByName('GuruKd').AsString))
      else FieldByName('tgl_BUP').Value:= null;  }

    if (not FieldByName('tgl_Lahir').IsNull) then
      FieldByName('Tgl_BUP').AsDateTime:= dmGaji.GetTglBUP(FieldByName('tgl_Lahir').AsDateTime,
        dmGaji.GetMaxPensiun(FieldByName('GuruKd').AsString))
    else FieldByName('tgl_BUP').Value:= null;

    if (FieldByName('IsTambah_BUP').IsNull) then FieldByName('IsTambah_BUP').AsBoolean:= False;
    if (not FieldByName('IsTambah_BUP').AsBoolean) then
      FieldByName('TGLTAMBAH_BUP').Value:= null
    else
      begin
        if (FieldByName('TGLTAMBAH_BUP').IsNull) then
          FieldByName('TGLTAMBAH_BUP').Value:= FieldByName('TGL_BUP').Value
        else
          FieldByName('TGLTAMBAH_BUP').AsDateTime:= RecodeDate(FieldByName('TGLTAMBAH_BUP').AsDateTime,
              YearOf(FieldByName('TGLTAMBAH_BUP').AsDateTime),
              MonthOf(FieldByName('TGLTAMBAH_BUP').AsDateTime), 1);
      end;
      
      nerror:=0;
      FieldByName('GAJI_POKOK').Value:=0;
      FieldByName('TUNJ_JAB_STRUKTUR').Value:=0;
      FieldByName('TUNJ_JAB_FUNGSI').Value:=0;
      FieldByName('TUNJ_UMUM').Value:=0;
      FieldByName('TUNJ_UMUM_TAMB').Value:=0;
      FieldByName('TUNJ_OTSUS').Value:=0;
      FieldByName('TUNJ_ISTRI').Value:=0;

      FieldByName('TUNJ_ANAK').Value:=0;

      FieldByName('TUNJ_DT').Value:=0;

      //FieldByName('TUNJ_ASKES').Value:=0;
      //FieldByName('TUNJ_KERJA').Value:=0;
      //FieldByName('TUNJ_PENGHASILAN').Value:=0;
      FieldByName('TUNJ_BERAS').Value:=0;
      FieldByName('PEMBULATAN').Value:=0;

      FieldByName('PPH').Value:=0;

      FieldByName('BIAYA_JABATAN').Value:=0;
      FieldByName('BIAYA_PENSIUN').Value:=0;

      //POTONGANPOTONGAN
      FieldByName('POT_IWP').Value:=0;
      FieldByName('POT_TAPERUM').Value:=0;
      //FieldByName('POT_SEWA_RUMAH').Value:=0;
      //FieldByName('POT_PANGAN').Value:=0;
      //FieldByName('POT_KORPRI').Value:=0;
      //FieldByName('POT_GAJI_LEBIH').Value:=0;
      //FieldByName('POT_HUTANG').Value:=0;

      //------------------------------------------------------------------------
      // CHECK Field Status
      if  FieldByName('STS_PEGAWAIKD').AsString='' then
      begin
          //Memo1.Lines.Add('NIP:'+FieldByName('NIP').AsString+' Status pegawai harus diisi');
          nerror:=1;
      end;

      if  FieldByName('AKTIF_KD').AsString='' then
      begin
          //Memo1.Lines.Add('NIP:'+FieldByName('NIP').AsString+' Status aktif harus diisi');
          nerror:=1;
      end;

      qryAktif.Locate('aktif_kd', FieldByName('AKTIF_KD').AsString, []);

      //------------------------------------------------------------------------
        persengaji:=qryAktif.FieldByName('Gaji_Pokok').asFloat;

        //HitungKd:= qryAktif.FieldByName('HitungKd').AsInteger;
        Accr:= qryAktif.FieldByName('Accress').AsInteger;


      //------------------------------------------------------------------------

        if (FieldByName('AKTIF_TGL').IsNull) then nerror:= 1
        else
          begin
            Bln1:= MonthOf(FieldByName('AKTIF_TGL').AsDateTime);
            Y1:= YearOf(FieldByName('AKTIF_TGL').AsDateTime);
            Y2:= StrToInt(FieldByName('TAHUN').AsString);
            Bln2:= StrToInt(FieldByName('Bulan').AsString);
            if (Y1<Y2) then
              Trsn:= (12-Bln1) + Bln2
            else if(Y1>Y2) then
              Trsn:= accr + 1
            else
              Trsn:= Bln2 - Bln1;
            //if ((Trsn>accr)or(Trsn<0))  then nerror:= 1;
            if ((Trsn>accr)or(Trsn<1))  then nerror:= 1;

          end;

        IsSudahPensiun:= False;
        if (FieldByName('IsTAmbah_BUP').AsBoolean) then
          //IsSudahPensiun:= (FieldByName('TglTambah_BUP').AsDateTime<= qryJenis.FieldByName('TANGGAL_BUAT').AsDateTime)
          IsSudahPensiun:= dmGaji.ApakahSudahPensiun2(FieldByName('TglTambah_BUP').AsDateTime,
                qryJenis.FieldByName('TANGGAL_BUAT').AsDateTime)
        else if (not (FieldByName('Tgl_BUP').IsNull)) then
          //IsSudahPensiun:= (FieldByName('Tgl_BUP').AsDateTime<= qryJenis.FieldByName('TANGGAL_BUAT').AsDateTime);
          IsSudahPensiun:=dmGaji.ApakahSudahPensiun2(FieldByName('Tgl_BUP').AsDateTime,
                qryJenis.FieldByName('TANGGAL_BUAT').AsDateTime);

        //IsSudahPensiun:= dmGaji.ApakahSudahPensiun(FieldByName('Tgl_Lahir').AsDateTime,
        //        qryJenis.FieldByName('TANGGAL_BUAT').AsDateTime,
        //        FieldByName('GuruKd').AsString);

        if (IsSudahPensiun) then
          begin
            persengaji:=0;
          end;

        if (IsSudahPensiun) then persengaji:=0;                                      

        if persenGaji=0 then nerror:=1;

        if nerror=0 then
        begin
          PTKP:= DMGaji.GetPTKPJanuari(FieldByName('NIP').AsString, FieldByName('PTKP').AsInteger);
          FieldByName('PTKP').AsInteger:= PTKP;
          FieldByName('GAJI_POKOK').Value:=
                dmGaji.GetGajiPokok(FieldByName('GOLONGANKD').Value,
                                    FieldByName('MASAKERJA').Value,
                                    FieldByName('Aktif_Kd').Value,
                                    FieldByName('STS_Pegawaikd').Value, 'Terus');

          if (FieldByName('GAJI_POKOK').Value>0)  then
          begin

            FieldByName('TUNJ_ISTRI').Value:=round(FieldByName('GAJI_POKOK').Value *
                FieldByName('JML_SI').Value * qryParam.FieldByName('TUNJ_ISTRI').Value);

            if FieldByName('JML_ANAK').Value>qryParam.FieldByName('TUNJ_ANAK_MAX').Value then
              FieldByName('TUNJ_ANAK').Value:=round(FieldByName('GAJI_POKOK').Value *
                qryParam.FieldByName('TUNJ_ANAK_Max').Value * qryParam.FieldByName('TUNJ_ANAK').Value)
            else
              FieldByName('TUNJ_ANAK').Value:=Round(FieldByName('GAJI_POKOK').Value *
                FieldByName('JML_ANAK').Value*qryParam.FieldByName('TUNJ_ANAK').Value);

          //------------------------------------------------------------------------
            if FieldByName('JENIS').AsInteger<>1 then //gaji ke 13 beras=0;
            begin
              if qryAktif.FieldByName('Tunj_Beras').AsInteger>0 then
                FieldByName('TUNJ_BERAS').Value:=qryParam.FieldByName('TUNJ_BERAS_KG').Value*
                (1+FieldByName('JML_SI').Value+FieldByName('JML_ANAK').Value)*
                qryParam.FieldByName('TUNJ_BERAS_RUPIAH').Value
              else if qryAktif.FieldByName('Tunj_Beras').AsInteger<0 then
                FieldByName('TUNJ_BERAS').Value:=qryParam.FieldByName('TUNJ_BERAS_KG').Value*
                (1+FieldByName('JML_SI').Value+FieldByName('JML_ANAK').Value+
                   qryAktif.FieldByName('Tunj_Beras').AsInteger)*
                     qryParam.FieldByName('TUNJ_BERAS_RUPIAH').Value;
            end;
          //------------------------------------------------------------------------
          if (qryAktif.FieldByName('Tunj_Struktural').AsBoolean) then
            FieldByName('TUNJ_JAB_STRUKTUR').Value:=
              dmGaji.GetTunjStrukTural(FieldByName('JBT_STRUKTURKD').asstring, 'TERUS', FieldByName('Aktif_Kd').AsString);

          if (qryAktif.FieldByName('Tunj_Fungsional').AsBoolean) then
            FieldByName('TUNJ_JAB_FUNGSI').Value:=
              dmGaji.GetTunjFungsional(FieldByName('JBT_FUNGSIKD').asstring, 'TERUS', FieldByName('Aktif_Kd').AsString);

          if (qryAktif.FieldByName('Tunj_Umum_Tambah').AsBoolean) then
            FieldByName('TUNJ_UMUM_TAMB').Value:=
              dmGaji.GetTunjUmumTambahan(FieldByName('GOLONGANKD').asstring);

          if (qryAktif.FieldByName('Tunj_Otsus').AsBoolean) then
            FieldByName('TUNJ_OTSUS').Value:=
              dmGaji.GetTunjOtsus(FieldByName('GOLONGANKD').asstring, 'TERUS', FieldByName('Aktif_Kd').AsString);

          if (qryAktif.FieldByName('Tunj_DT').AsBoolean) then
            FieldByName('TUNJ_DT').Value:=
              dmGaji.GetTunjDT(FieldByName('GOLONGANKD').asstring, 'TERUS', FieldByName('Aktif_Kd').AsString);


      if ((not qryAktif.FieldByName('Tunj_Askes').AsBoolean) or
        (FieldByName('Tunj_Askes').IsNull)) then
        FieldByName('TUNJ_ASKES').Value:= 0;

      if ((not qryAktif.FieldByName('Tunj_Kerja').AsBoolean) or
        (FieldByName('Tunj_Kerja').IsNull)) then
        FieldByName('TUNJ_KERJA').Value:= 0;

      if ((not qryAktif.FieldByName('Tunj_PP').AsBoolean) or
        (FieldByName('TUNJ_PENGHASILAN').IsNull)) then
        FieldByName('TUNJ_PENGHASILAN').Value:= 0;

          if ((FieldByName('TUNJ_JAB_STRUKTUR').AsFloat+FieldByName('TUNJ_JAB_FUNGSI').AsFloat)=0) then
            FieldByName('TUNJ_UMUM').Value:=
              dmGaji.GetTunjanganUmum(FieldByName('GOLONGANKD').asstring, 'TERUS', FieldByName('Aktif_Kd').AsString);

          if (qryFungsional.FieldByName('ISTunjUmum').AsBoolean)then
              FieldByName('TUNJ_UMUM').Value:=
                dmGaji.GetTunjanganUmum(FieldByName('GOLONGANKD').asstring, 'TERUS', FieldByName('Aktif_Kd').AsString);

          if (Not qryAktif.FieldByName('Tunj_Umum').AsBoolean)then
              FieldByName('TUNJ_UMUM').Value:=0;

          //--------------------------------------------------------------------------------------------------------//
          pokok:=FieldByName('TUNJ_ISTRI').Value+FieldByName('GAJI_POKOK').Value+FieldByName('TUNJ_ANAK').Value;

          tunjangan:=FieldByName('TUNJ_JAB_STRUKTUR').Value+
                     FieldByName('TUNJ_JAB_FUNGSI').Value+
                     FieldByName('TUNJ_UMUM').Value+
                     FieldByName('TUNJ_UMUM_TAMB').Value+
                     FieldByName('TUNJ_KERJA').Value+
                     FieldByName('TUNJ_BERAS').Value;

          //--------------------------------------------------------------------------------------------------------//

          FieldByName('BIAYA_JABATAN').Value:=round((pokok+tunjangan)*qryParam.FieldByName('Tunj_Biaya_Jabatan').Value);
          if FieldByName('BIAYA_JABATAN').Value>qryParam.FieldByName('Tunj_Maks_Biaya_Jabatan').Value then
            FieldByName('BIAYA_JABATAN').Value:=qryParam.FieldByName('Tunj_Maks_Biaya_Jabatan').Value ;

          FieldByName('BIAYA_PENSIUN').Value:= round(dmGaji.GetBiayaPensiun(pokok));

          //POTONGANPOTONGAN
          FieldByName('POT_IWP').Value:=
            round(dmGaji.GetIWP(pokok, 'Terus', FieldByName('Aktif_Kd').AsString));
          
          if qryAktif.FieldByName('Pot_Taperum').AsBoolean then
            FieldByName('POT_TAPERUM').Value:=
              dmGaji.GetTaperum(FieldByName('GOLONGANKD').Value, 'Terus', FieldByName('Aktif_Kd').AsString);

          //FieldByName('POT_SEWA_RUMAH').Value:=dmGaji.GetSewaRumah;
      if (FieldByName('POT_SEWA_RUMAH').IsNull) then FieldByName('POT_SEWA_RUMAH').Value:= 0;
      //FieldByName('POT_PANGAN').Value:=dmGaji.GetPotonganPangan;
      if (FieldByName('POT_PANGAN').IsNull) then FieldByName('POT_PANGAN').Value:= 0;
      //FieldByName('POT_KORPRI').Value:=dmGaji.GetPOtonganKorpri;
      if (FieldByName('POT_KORPRI').IsNull) then FieldByName('POT_KORPRI').Value:= 0;
      //FieldByName('POT_GAJI_LEBIH').Value:=dmGaji.GetKelebihanGaji;
      if (FieldByName('POT_GAJI_LEBIH').IsNull) then FieldByName('POT_GAJI_LEBIH').Value:= 0;
      //FieldByName('POT_HUTANG').Value:=dmGaji.GetHutangLebih;
      if (FieldByName('POT_HUTANG').IsNull) then FieldByName('POT_HUTANG').Value:= 0;

          potongan:= FieldByName('POT_IWP').Value+
                FieldByName('POT_TAPERUM').Value+
                FieldByName('POT_SEWA_RUMAH').Value+
                FieldByName('POT_PANGAN').Value+
                FieldByName('POT_KORPRI').Value+
                FieldByName('POT_GAJI_LEBIH').Value; //+
                //FieldByName('POT_HUTANG').Value;

          //LAIN-LAIN
          FieldByName('PEMBULATAN').Value:=100-StrToFloat(RightStr(FormatFloat('#,##0',pokok+tunjangan-potongan),2));
          if FieldByName('PEMBULATAN').Value=100 then FieldByName('PEMBULATAN').Value:=0;
          FieldByName('PPH').Value:=round(dmGaji.GetPPH((pokok+tunjangan-FieldByName('Biaya_Jabatan').Value-
                FieldByName('BIAYA_PENSIUN').Value)*12,
                FieldByName('PTKP').AsInteger, 0,True, 'TERUS', FieldByName('Aktif_Kd').AsString));

        end; //gajipokok
      end; //nerror
    //end; // Boleh digaji
  end; //qryGajiPegawai
  SetRoundMode(oldround);
end;
/// end terusan

/// standar
procedure TfrmGajiRapel.ProsesStandar;
var
    pokok,tunjangan,potongan:double;
    oldround:TFPURoundingMode;
    persengaji:Double;
    HitungKd:integer;
    PTKP, nerror:integer;
    IsSudahPensiun: Boolean;
    J:String;
begin

  if qryJenisGaji.Active then qryJenisGaji.Requery()
  else  qryJenisGaji.Open;

  J:= 'STD';
  
  oldround := GetRoundMode;
  SetRoundMode(rmNearest);
  qryParam.Close;
  qryParam.Parameters[0].Value:= GModule.Tahun;
  qryParam.Open;

  With Pegawai do
  begin
    if (not FieldByName('tgl_Lahir').IsNull) then
      FieldByName('Tgl_BUP').AsDateTime:= dmGaji.GetTglBUP(FieldByName('tgl_Lahir').AsDateTime,
        dmGaji.GetMaxPensiun(FieldByName('GuruKd').AsString))
    else FieldByName('tgl_BUP').Value:= null;

    if (FieldByName('IsTambah_BUP').IsNull) then FieldByName('IsTambah_BUP').AsBoolean:= False;
    if (not FieldByName('IsTambah_BUP').AsBoolean) then
      FieldByName('TGLTAMBAH_BUP').Value:= null
    else
      begin
        if (FieldByName('TGLTAMBAH_BUP').IsNull) then
          FieldByName('TGLTAMBAH_BUP').Value:= FieldByName('TGL_BUP').Value
        else
          FieldByName('TGLTAMBAH_BUP').AsDateTime:= RecodeDate(FieldByName('TGLTAMBAH_BUP').AsDateTime,
              YearOf(FieldByName('TGLTAMBAH_BUP').AsDateTime),
              MonthOf(FieldByName('TGLTAMBAH_BUP').AsDateTime), 1);
      end;
      
      nerror:=0;
      FieldByName('GAJI_POKOK').Value:=0;
      FieldByName('TUNJ_JAB_STRUKTUR').Value:=0;
      FieldByName('TUNJ_JAB_FUNGSI').Value:=0;
      FieldByName('TUNJ_UMUM').Value:=0;
      FieldByName('TUNJ_UMUM_TAMB').Value:=0;
      FieldByName('TUNJ_OTSUS').Value:=0;
      FieldByName('TUNJ_ISTRI').Value:=0;

      FieldByName('TUNJ_ANAK').Value:=0;

      FieldByName('TUNJ_DT').Value:=0;

      FieldByName('TUNJ_BERAS').Value:=0;
      FieldByName('PEMBULATAN').Value:=0;

      FieldByName('PPH').Value:=0;

      FieldByName('BIAYA_JABATAN').Value:=0;
      FieldByName('BIAYA_PENSIUN').Value:=0;

      //POTONGANPOTONGAN
      FieldByName('POT_IWP').Value:=0;
      FieldByName('POT_TAPERUM').Value:=0;

      //------------------------------------------------------------------------
      // CHECK Field Status
      if  FieldByName('STS_PEGAWAIKD').AsString='' then
      begin

          nerror:=1;
      end;

      if  FieldByName('AKTIF_KD').AsString='' then
      begin

          nerror:=1;
      end;
// ---------- Boleh digaji
      
      //------------------------------------------------------------------------
        persengaji:=qryAktif.FieldByName('Gaji_Pokok').asFloat;

        HitungKd:= qryAktif.FieldByName('HitungKd').AsInteger;

        if not(FieldByName('Aktif_Tgl').IsNull) then
          begin
            if (HitungKd=-1) and
              (MonthsBetween(now,FieldByName('Aktif_Tgl').Value )> qryAktif.FieldByName('Accress').AsInteger) then
                persengaji:=0;
          end;

        IsSudahPensiun:= False;
        if (FieldByName('IsTAmbah_BUP').AsBoolean) then
          //IsSudahPensiun:= (FieldByName('TglTambah_BUP').AsDateTime<= qryJenis.FieldByName('TANGGAL_BUAT').AsDateTime)
          IsSudahPensiun:= dmGaji.ApakahSudahPensiun2(FieldByName('TglTambah_BUP').AsDateTime,
                qryJenis.FieldByName('TANGGAL_BUAT').AsDateTime)
        else if (not (FieldByName('Tgl_BUP').IsNull)) then
          //IsSudahPensiun:= (FieldByName('Tgl_BUP').AsDateTime<= qryJenis.FieldByName('TANGGAL_BUAT').AsDateTime);
          IsSudahPensiun:=dmGaji.ApakahSudahPensiun2(FieldByName('Tgl_BUP').AsDateTime,
                qryJenis.FieldByName('TANGGAL_BUAT').AsDateTime);

        if (IsSudahPensiun) then persengaji:=0;

        if persenGaji=0 then nerror:=1;

      //------------------------------------------------------------------------

        if nerror=0 then
        begin
          PTKP:= DMGaji.GetPTKPJanuari(FieldByName('NIP').AsString, FieldByName('PTKP').AsInteger);
          FieldByName('PTKP').AsInteger:= PTKP;
          FieldByName('GAJI_POKOK').Value:=
                dmGaji.GetGajiPokok(FieldByName('GOLONGANKD').Value,
                                    FieldByName('MASAKERJA').Value,
                                    FieldByName('Aktif_Kd').Value,
                                    FieldByName('STS_Pegawaikd').Value, J);

          if (FieldByName('GAJI_POKOK').Value>0)  then
          begin
            //---
            if (FieldByName('JML_SI').AsFloat>1) then FieldByName('JML_SI').Value:=1;
            //---
            FieldByName('TUNJ_ISTRI').Value:=round(FieldByName('GAJI_POKOK').Value *
                FieldByName('JML_SI').Value * qryParam.FieldByName('TUNJ_ISTRI').Value);

            if FieldByName('JML_ANAK').Value>qryParam.FieldByName('TUNJ_ANAK_MAX').Value then
              FieldByName('TUNJ_ANAK').Value:=round(FieldByName('GAJI_POKOK').Value *
                qryParam.FieldByName('TUNJ_ANAK_Max').Value * qryParam.FieldByName('TUNJ_ANAK').Value)
            else
              FieldByName('TUNJ_ANAK').Value:=Round(FieldByName('GAJI_POKOK').Value *
                FieldByName('JML_ANAK').Value*qryParam.FieldByName('TUNJ_ANAK').Value);

          //------------------------------------------------------------------------
          //  if FieldByName('JENIS').AsInteger<>1 then //gaji ke 13 beras=0;
          //  begin
              if qryAktif.FieldByName('Tunj_Beras').AsInteger>0 then
                FieldByName('TUNJ_BERAS').Value:=qryParam.FieldByName('TUNJ_BERAS_KG').Value*
                (1+FieldByName('JML_SI').Value+FieldByName('JML_ANAK').Value)*
                  qryParam.FieldByName('TUNJ_BERAS_RUPIAH').Value
              else if qryAktif.FieldByName('Tunj_Beras').AsInteger<0 then
                FieldByName('TUNJ_BERAS').Value:=qryParam.FieldByName('TUNJ_BERAS_KG').Value*
                (1+FieldByName('JML_SI').Value+FieldByName('JML_ANAK').Value+
                   qryAktif.FieldByName('Tunj_Beras').AsInteger)*
                     qryParam.FieldByName('TUNJ_BERAS_RUPIAH').Value;
          //  end;
          //------------------------------------------------------------------------
          if (qryAktif.FieldByName('Tunj_Struktural').AsBoolean) then
            FieldByName('TUNJ_JAB_STRUKTUR').Value:=
              dmGaji.GetTunjStrukTural(FieldByName('JBT_STRUKTURKD').asstring, J, FieldByName('Aktif_Kd').AsString);

          if (qryAktif.FieldByName('Tunj_Fungsional').AsBoolean) then
            FieldByName('TUNJ_JAB_FUNGSI').Value:=
              dmGaji.GetTunjFungsional(FieldByName('JBT_FUNGSIKD').asstring, J, FieldByName('Aktif_Kd').AsString);

          if (qryAktif.FieldByName('Tunj_Umum_Tambah').AsBoolean) then
            FieldByName('TUNJ_UMUM_TAMB').Value:=
              dmGaji.GetTunjUmumTambahan(FieldByName('GOLONGANKD').asstring);

          if (qryAktif.FieldByName('Tunj_Otsus').AsBoolean) then
            FieldByName('TUNJ_OTSUS').Value:=
              dmGaji.GetTunjOtsus(FieldByName('GOLONGANKD').asstring, J, FieldByName('Aktif_Kd').AsString);

          if (qryAktif.FieldByName('Tunj_DT').AsBoolean) then
            FieldByName('TUNJ_DT').Value:=
              dmGaji.GetTunjDT(FieldByName('GOLONGANKD').asstring, J, FieldByName('Aktif_Kd').AsString);

      if ((not qryAktif.FieldByName('Tunj_Askes').AsBoolean) or
        (FieldByName('Tunj_Askes').IsNull)) then
        FieldByName('TUNJ_ASKES').Value:= 0;

      if ((not qryAktif.FieldByName('Tunj_Kerja').AsBoolean) or
        (FieldByName('Tunj_Kerja').IsNull)) then
        FieldByName('TUNJ_KERJA').Value:= 0;

      if ((not qryAktif.FieldByName('Tunj_PP').AsBoolean) or
        (FieldByName('TUNJ_PENGHASILAN').IsNull)) then
        FieldByName('TUNJ_PENGHASILAN').Value:= 0;

          if ((FieldByName('TUNJ_JAB_STRUKTUR').AsFloat+FieldByName('TUNJ_JAB_FUNGSI').AsFloat)=0) then
            FieldByName('TUNJ_UMUM').Value:=
              dmGaji.GetTunjanganUmum(FieldByName('GOLONGANKD').asstring, J, FieldByName('Aktif_Kd').AsString);

          if (qryFungsional.FieldByName('ISTunjUmum').AsBoolean)then
              FieldByName('TUNJ_UMUM').Value:=
                dmGaji.GetTunjanganUmum(FieldByName('GOLONGANKD').asstring, J, FieldByName('Aktif_Kd').AsString);

          if (Not qryAktif.FieldByName('Tunj_Umum').AsBoolean)then
              FieldByName('TUNJ_UMUM').Value:=0;

          //--------------------------------------------------------------------------------------------------------//
          pokok:=FieldByName('TUNJ_ISTRI').Value+FieldByName('GAJI_POKOK').Value+FieldByName('TUNJ_ANAK').Value;

          tunjangan:=FieldByName('TUNJ_JAB_STRUKTUR').Value+
                     FieldByName('TUNJ_JAB_FUNGSI').Value+
                     FieldByName('TUNJ_UMUM').Value+
                     FieldByName('TUNJ_UMUM_TAMB').Value+
                     FieldByName('TUNJ_KERJA').Value+
                     FieldByName('TUNJ_BERAS').Value;

          //--------------------------------------------------------------------------------------------------------//

          FieldByName('BIAYA_JABATAN').Value:=round((pokok+tunjangan)*qryParam.FieldByName('Tunj_Biaya_Jabatan').Value);
          if FieldByName('BIAYA_JABATAN').Value>qryParam.FieldByName('Tunj_Maks_Biaya_Jabatan').Value then
            FieldByName('BIAYA_JABATAN').Value:=qryParam.FieldByName('Tunj_Maks_Biaya_Jabatan').Value ;

          FieldByName('BIAYA_PENSIUN').Value:= round(dmGaji.GetBiayaPensiun(pokok));

          //POTONGANPOTONGAN
          FieldByName('POT_IWP').Value:=
            round(dmGaji.GetIWP(pokok, J, FieldByName('Aktif_Kd').AsString));

          if qryAktif.FieldByName('Pot_Taperum').AsBoolean then
            FieldByName('POT_TAPERUM').Value:=
              dmGaji.GetTaperum(FieldByName('GOLONGANKD').Value, J, FieldByName('Aktif_Kd').AsString);


      if (FieldByName('POT_SEWA_RUMAH').IsNull) then FieldByName('POT_SEWA_RUMAH').Value:= 0;

      if (FieldByName('POT_PANGAN').IsNull) then FieldByName('POT_PANGAN').Value:= 0;

      if (FieldByName('POT_KORPRI').IsNull) then FieldByName('POT_KORPRI').Value:= 0;

      if (FieldByName('POT_GAJI_LEBIH').IsNull) then FieldByName('POT_GAJI_LEBIH').Value:= 0;

      if (FieldByName('POT_HUTANG').IsNull) then FieldByName('POT_HUTANG').Value:= 0;

          potongan:= FieldByName('POT_IWP').Value+
                FieldByName('POT_TAPERUM').Value+
                FieldByName('POT_SEWA_RUMAH').Value+
                FieldByName('POT_PANGAN').Value+
                FieldByName('POT_KORPRI').Value+
                FieldByName('POT_GAJI_LEBIH').Value; //+
                //FieldByName('POT_HUTANG').Value;

          //LAIN-LAIN
          FieldByName('PEMBULATAN').Value:=100-StrToFloat(RightStr(FormatFloat('#,##0',pokok+tunjangan-potongan),2));
          if FieldByName('PEMBULATAN').Value=100 then FieldByName('PEMBULATAN').Value:=0;
          FieldByName('PPH').Value:=round(dmGaji.GetPPH((pokok+tunjangan-FieldByName('Biaya_Jabatan').Value-
                FieldByName('BIAYA_PENSIUN').Value)*12, 
                FieldByName('PTKP').AsInteger, 0,True, J, FieldByName('Aktif_Kd').AsString));
        end; //gajipokok
      end; //nerror
    //end; // Boleh digaji
  end; //qryGajiPegawai
  SetRoundMode(oldround);
end;
/// end standar

procedure TfrmGajiRapel.TVWChange(Sender: TObject; Node: TTreeNode);
begin
  if (InProses) then exit;
  if (InBuildMenu) then exit;
  SelectedMenu.ID:= vMyMenu(Node.Data)^.ID;
  SelectedMenu.SKPDKd:= vMyMenu(Node.Data)^.SKPDKd;
  SelectedMenu.GolKd:= vMyMenu(Node.Data)^.GolKd;
  SelectedMenu.GolonganKd:= vMyMenu(Node.Data)^.GolonganKd;
  if (GjRapelBaruBuka) then exit;
  FilterPegawaiGaji;
end;

procedure TfrmGajiRapel.PegawaiAfterOpen(DataSet: TDataSet);
var i:integer;
    F: String;
begin
  with  Pegawai do
  begin

    for I:= 0 to FieldCount - 1 do
    begin
      if (Fields[i].DataType = ftFloat) then
        begin
          TFloatField(Fields[i]).EditFormat := '#0';
          TFloatField(Fields[i]).DisplayFormat := '#,0';
        end
      else  if (Fields[i].DataType = ftInteger) then
        begin
          TIntegerField(Fields[i]).EditFormat := '#0';
          TIntegerField(Fields[i]).DisplayFormat := '#,0';
        end
      else if (Fields[i].DataType = ftLargeInt) then
        begin
          TLargeintField(Fields[I]).DisplayFormat:= '#,0';
          TLargeintField(Fields[I]).EditFormat:= '#,0';
        end
      else  if (Fields[i].DataType = ftBCD) then
        begin
          tBCDField(Fields[i]).EditFormat := '#0';
          tBCDField(Fields[i]).DisplayFormat := '#,0';
        end;
      if (UpperCase(Fields[i].FieldName) = 'POSTED') then
        TBooleanField(Fields[i]).DisplayValues := 'POSTED';
    end;
  end;
  // ---- 2011 ----
  qrySKPD.Close;
  qrySKPD.Filtered:= False;
  F:= GModule.GetFilterSKPD;
  if (F<>'') then
    begin
      qrySKPD.Filter:= F;
      qrySKPD.Filtered:= True;
    end;
  qrySKPD.Open;
  // ---- end 2011 ----
  qryGuru.Open;
  qryFungsional.Open;
  qryStruktur.Open;
  qryStatus.Open;
  qryGolongan.Open;
  qryAktif.Open;
  qrySIPIL.Open;
  qryKawin.Open;
end;

procedure TfrmGajiRapel.dbNavClick(Sender: TObject; Button: TNavigateBtn);
begin
  //if ((Button=nbInsert) or (Button=nbEdit)) then
end;

procedure TfrmGajiRapel.PegawaiAfterInsert(DataSet: TDataSet);
var N:String;
    I, M, J:Integer;
begin
  if ((not qryJenis.Active) or (qryJenis.IsEmpty)) then
    begin
      Pegawai.Cancel;
      exit;
    end;
  N:= '';
  J:= qryJenis.FieldByName('Jenis').AsInteger;
  if (J=19) then
    N:= CariRapelPegawaiDlg(qryJenis.FieldByName('tm_bulan').AsString, qryJenis.FieldByName('bulan').AsString,
      qryJenis.FieldByName('tm_tahun').AsString, qryJenis.FieldByName('tahun').AsString,
      J, '', True) //' (a.aktif_kd not in(3,4,5,6)) ', True)
  else if (J=10) then
    N:= CariRapelPegawaiDlg(qryJenis.FieldByName('tm_bulan').AsString, qryJenis.FieldByName('bulan').AsString,
        qryJenis.FieldByName('tm_tahun').AsString, qryJenis.FieldByName('tahun').AsString,
        J, ' (pgw.aktif_kd not in(3,6)) ', False)
  ELSE
    N:= CariRapelPegawaiDlg(qryJenis.FieldByName('tm_bulan').AsString, qryJenis.FieldByName('bulan').AsString,
        qryJenis.FieldByName('tm_tahun').AsString, qryJenis.FieldByName('tahun').AsString,
        J, ' (pgw.aktif_kd not in(3,4,5,6)) ', False);

  if N='' then
    Pegawai.Cancel
  else
    begin
      if (DMPegawai.TempPegawai.Active) then DMPegawai.TempPegawai.Requery()
      else DMPegawai.TempPegawai.Open;
      with DMPegawai.TempPegawai do
        begin
          {Dataset.FieldByName('Jenis').AsInteger:= J;
          Dataset.FieldByName('TM_BULAN').AsString:= qryJenis.FieldByName('TM_BULAN').AsString;
          Dataset.FieldByName('TM_TAHUN').AsString:= qryJenis.FieldByName('TM_TAHUN').AsString;
          Dataset.FieldByName('BULAN').AsString:= qryJenis.FieldByName('BULAN').AsString;
          Dataset.FieldByName('TAHUN').AsString:= qryJenis.FieldByName('TAHUN').AsString;}
          if (not Locate('nip', N, [])) then
            Pegawai.Cancel
          else
            begin                          
              M:= FieldCount - 1;
              for I:= 0 to M do
                begin
                  if (Pegawai.FindField(Fields[I].FieldName)<>nil) then
                    begin
                      Pegawai.FieldByName(Fields[I].FieldName).Value:= Fields[I].Value;
                    end;
                end;
            end;
        end;
      PGCMain.ActivePageIndex:= 1;
    end;
end;

procedure TfrmGajiRapel.QryJENISAfterInsert(DataSet: TDataSet);
begin
  with qryJenis do
  begin
    FieldByName('Tahun').Value:=GModule.Tahun;
    FieldByName('Bulan').Value:=FormatFloat('00',1+MonthOf(Now));
    FieldByName('TM_Tahun').Value:=GModule.Tahun;
    FieldByName('TM_Bulan').Value:=FormatFloat('00',1+MonthOf(Now));
    FieldByName('Tanggal_Buat').Value:=Now;
    FieldByName('Posted').Value:= False;
    FieldByName('Jenis').AsInteger:=JenisRapel;
  end;
  btnProses.Enabled:= False;
  ButtonNavGaji;
end;

procedure TfrmGajiRapel.txtCariChange(Sender: TObject);
begin
  FilterPegawaiGaji;
end;

procedure TfrmGajiRapel.QryJENISAfterPost(DataSet: TDataSet);
begin
  btnProses.Enabled:= not ((qryJenis.FieldByName('Jenis').AsInteger=2)
        or(qryJenis.FieldByName('Jenis').AsInteger=3)or qryJenis.IsEmpty);
    ButtonNavGaji;
    if (Dataset.FieldByName('posted').AsBoolean) then
        btnProses.Enabled:= False;
  if (not Pegawai.Active) then Pegawai.Open;
end;

procedure TfrmGajiRapel.QryJENISAfterScroll(DataSet: TDataSet);
begin
  if (not (Dataset.State in[dsInsert, dsEdit])) then
  begin
    btnProses.Enabled:= not ((qryJenis.FieldByName('Jenis').AsInteger=2)
        or(qryJenis.FieldByName('Jenis').AsInteger=3)or qryJenis.IsEmpty);
    if (Dataset.FieldByName('posted').AsBoolean) then
        btnProses.Enabled:= False;
  end;
  ButtonNavGaji;
  if (Dataset.IsEmpty) then btnProses.Caption:= 'Proses'
  else
    begin
      if (Pegawai.IsEmpty) then btnProses.Caption:= 'Proses Ulang'
      else btnProses.Caption:= 'Proses Ulang';
    end;
end;

procedure TfrmGajiRapel.QryJENISAfterEdit(DataSet: TDataSet);
begin
  btnProses.Enabled:= False;
  ButtonNavGaji;
end;

procedure TfrmGajiRapel.QryJENISAfterDelete(DataSet: TDataSet);
begin
  btnProses.Enabled:= not ((qryJenis.FieldByName('Jenis').AsInteger=2)
        or(qryJenis.FieldByName('Jenis').AsInteger=3)or qryJenis.IsEmpty);
    ButtonNavGaji;
    if (Dataset.FieldByName('posted').AsBoolean) then
        btnProses.Enabled:= False;
end;

procedure TfrmGajiRapel.QryJENISAfterCancel(DataSet: TDataSet);
begin
  btnProses.Enabled:= not ((qryJenis.FieldByName('Jenis').AsInteger=2)
        or(qryJenis.FieldByName('Jenis').AsInteger=3)or qryJenis.IsEmpty);
    ButtonNavGaji;
    if (Dataset.FieldByName('posted').AsBoolean) then
        btnProses.Enabled:= False;
end;

procedure TfrmGajiRapel.PegawaiAfterEdit(DataSet: TDataSet);
begin
  if (not MasterFlag) then exit;
  PGCMain.ActivePageIndex:= 1;
end;

procedure TfrmGajiRapel.PegawaiAfterPost(DataSet: TDataSet);
var IsSudahPensiun, IsUDTUDW: Boolean;
begin
  if (MasterFlag) then
  begin
    if (MessageDlg('Update Data Master Pegawai.?', mtConfirmation, [mbYes, mbNo], 0)= IDYES) then
      begin
        With Dataset do
          begin
            DMPegawai.UpdateMasterPegawai(FieldByName('Tahun').AsString,
              FieldByName('Bulan').AsString, IntToStr(FieldByName('Jenis').AsInteger),
              FieldByName('NIP').AsString, FieldByName('TM_Bulan').AsString, FieldByName('TM_Tahun').AsString);
          end;
      end; 
  end;
  IsUDTUDW:= ((QryJenis.FieldByName('Jenis').AsInteger=2)or(QryJenis.FieldByName('Jenis').AsInteger=3));
  if (Not InProses) then
    begin
      IsSudahPensiun:= False;
      if (Pegawai.FieldByName('IsTAmbah_BUP').AsBoolean) then
          IsSudahPensiun:=dmGaji.ApakahSudahPensiun2(Pegawai.FieldByName('TglTambah_BUP').AsDateTime,
                qryJenis.FieldByName('TANGGAL_BUAT').AsDateTime)
      else if (not (Pegawai.FieldByName('Tgl_BUP').IsNull)) then
          IsSudahPensiun:= dmGaji.ApakahSudahPensiun2(Pegawai.FieldByName('Tgl_BUP').AsDateTime,
                qryJenis.FieldByName('TANGGAL_BUAT').AsDateTime);
      if ((IsSudahPensiun) and (not IsUDTUDW)) then
        begin
          MessageDlg('Pegawai dengan NIP: ' + Pegawai.FieldByName('NIP').AsString + ', Nama: ' +
            Pegawai.FieldByName('Nama').AsString + ' Seharusnya Sudah Pensiun.' + #10#13 +
            'Pegawai Tersebut Akan Dihapus Dari Proses.', mtWarning, [mbOK], 0);
          Pegawai.Delete;
        end;
    end;
end;

procedure TfrmGajiRapel.PegawaiCalcFields(DataSet: TDataSet);
begin
  with Pegawai do
  begin
    FieldByName('GajiDanTunjangan').AsFloat:=
      FieldByName('Gaji_Pokok').AsFloat+
      FieldByName('TUNJ_ISTRI').AsFloat+
      FieldByName('TUNJ_ANAK').AsFloat+
      FieldByName('TUNJ_JAB_STRUKTUR').AsFloat+
      FieldByName('TUNJ_JAB_FUNGSI').AsFloat+
      FieldByName('TUNJ_BERAS').AsFloat+
      FieldByName('TUNJ_KERJA').AsFloat+
      FieldByName('TUNJ_UMUM').AsFloat+
      FieldByName('TUNJ_UMUM_TAMB').AsFloat+
      FieldByName('TUNJ_OTSUS').AsFloat+
      FieldByName('TUNJ_DT').AsFloat+
      FieldByName('TUNJ_ASKES').AsFloat+
      FieldByName('TUNJ_PENGHASILAN').AsFloat;


    FieldByName('Potongan').AsFloat:=
      FieldByName('POT_IWP').AsFloat+
      FieldByName('POT_TAPERUM').AsFloat+
      FieldByName('POT_SEWA_RUMAH').AsFloat+
      FieldByName('POT_PANGAN').AsFloat+
      FieldByName('POT_KORPRI').AsFloat+
      FieldByName('POT_GAJI_LEBIH').AsFloat; //+
      //FieldByName('POT_HUTANG').AsFloat;

    FieldByName('GajiBersih').AsFloat:=
      FieldByName('GajiDanTunjangan').AsFloat+
      FieldByName('Pembulatan').AsFloat-
      FieldByName('Potongan').AsFloat;
  end;

  Dataset.FieldByName('NomorUrut').AsInteger:= Abs(Dataset.RecNo);
end;

procedure TfrmGajiRapel.PegawaiBeforePost(DataSet: TDataSet);
begin
  if ((Pegawai.FieldByName('Aktif_Kd').AsInteger=4) or (Pegawai.FieldByName('Aktif_Kd').AsInteger=5)) then
    ProsesTerusan
  else ProsesStandar;
end;

procedure TfrmGajiRapel.btnProsesClick(Sender: TObject);
var strSQL, sWhere, sFilter, sDel:string;
    iCount, nCount:Integer;
    Ada: Boolean;
begin
  if not (QryJenis.Active) then exit;
  if (InProses) Then
    begin
      Application.HandleMessage;
      MessageDlg('Penggajian sedang diprosess.', mtWarning, [mbOK],0);
      Exit;
    end;
  if qryJenis.FieldByName('Posted').AsBoolean then
  begin
    ShowMessage('Data sudah diposting');
    exit;
  end;
  MasterFlag:=False;
  
  try
    if qryJenis.State in [dsInsert,dsEdit] then qryJenis.Post;
    if (qryJenis.IsEmpty) then exit;

      strSQL:='INSERT INTO ' + MyTable + '( TAHUN, BULAN, TM_TAHUN, TM_BULAN, JENIS, '+
      'NIP, UNITKD, NAMA, TGL_LAHIR, TMP_LAHIR, JNS_KELAMIN, BANK, REKENING, NPWP, '+
      'NO_PEGAWAI, NOJJP, ALAMAT, NAMASI, STS_PEGAWAIKD, TMT_PEGAWAI, STS_KWN, STS_SIPIL, '+
      'AGAMA, JML_SI, JML_ANAK, GOLONGANKD, TMT_GOLONGAN, MASAKERJA, JBT_FUNGSIKD, JBT_STRUKTURKD, '+
      'TMT_JABATAN, TUNJ_JAB_FUNGSI, TUNJ_JAB_STRUKTUR, GAJI_POKOK, TMT_GAJI_POKOK, '+
      'TUNJ_ISTRI, TUNJ_ANAK, TUNJ_BERAS, GURUKD, OPERATOR, TGL_UBAH, TUNJ_KERJA, TDTKD, '+
      'PEND_TERAKHIR, PEND_JURUSAN, V_JAB_STRUKTUR, POT_IWP, POT_TAPERUM, POT_SEWA_RUMAH, '+
      'POT_PANGAN, POT_KORPRI, POT_GAJI_LEBIH, POT_HUTANG, PEMBULATAN, PPH, TUNJ_UMUM, '+
      'TUNJ_UMUM_TAMB, TUNJ_OTSUS, TUNJ_DT, TUNJ_ASKES, TUNJ_PENGHASILAN, BIAYA_JABATAN, '+
      'BIAYA_PENSIUN, Persen_Gaji, IsTTU, AKTIF_KD, PTKP, AKTIF_TGL, ISTAMBAH_BUP, TGLTAMBAH_BUP, TGL_BUP ';
      if IsStfk then strSQL:= strSQL + ', IsSertifikasi) '
      else strSQL:= strSQL + ') ';
      strSQL:= strSQL + ' SELECT ' + QuotedStr(qryJenis.FieldByName('Tahun').Asstring) + ','+
          QuotedStr(qryJenis.FieldByName('Bulan').Asstring)+','+
          QuotedStr(qryJenis.FieldByName('TM_Tahun').Asstring) + ','+
          QuotedStr(qryJenis.FieldByName('TM_Bulan').Asstring)+','+
          IntToStr(qryJenis.FieldByName('Jenis').AsInteger) + ','+
          'NIP, UNITKD, NAMA, TGL_LAHIR, TMP_LAHIR, JNS_KELAMIN, BANK, REKENING, NPWP, '+
          'NO_PEGAWAI, NOJJP, ALAMAT, NAMASI, STS_PEGAWAIKD, TMT_PEGAWAI, STS_KWN, STS_SIPIL, '+
          'AGAMA, JML_SI, JML_ANAK, GOLONGANKD, TMT_GOLONGAN, MASAKERJA, JBT_FUNGSIKD, JBT_STRUKTURKD, '+
          'TMT_JABATAN, TUNJ_JAB_FUNGSI, TUNJ_JAB_STRUKTUR, GAJI_POKOK, TMT_GAJI_POKOK, '+
          'TUNJ_ISTRI, TUNJ_ANAK, TUNJ_BERAS, GURUKD, OPERATOR, TGL_UBAH, TUNJ_KERJA, TDTKD, '+
          'PEND_TERAKHIR, PEND_JURUSAN, V_JAB_STRUKTUR, POT_IWP, POT_TAPERUM, POT_SEWA_RUMAH, '+
          'POT_PANGAN, POT_KORPRI, POT_GAJI_LEBIH, POT_HUTANG, PEMBULATAN, PPH, TUNJ_UMUM, '+
          'TUNJ_UMUM_TAMB, TUNJ_OTSUS, TUNJ_DT, TUNJ_ASKES, TUNJ_PENGHASILAN, BIAYA_JABATAN, '+
          'BIAYA_PENSIUN, Persen_Gaji, IsTTU, AKTIF_KD, PTKP, AKTIF_TGL, ISTAMBAH_BUP, TGLTAMBAH_BUP, TGL_BUP ';
      if IsStfk then strSQL:= strSQL + ', IsSertifikasi ';
      strSQL:= strSQL + ' FROM PEGAWAI   ';

      //strSQL:= GModule.GetInsertQueryGajiInduk(MyTable, 'PEGAWAI', qryJenis.FieldByName('Tahun').AsString,
      //          qryJenis.FieldByName('Bulan').AsString, qryJenis.FieldByName('Jenis').AsInteger);
      sWhere:= ' Where (AKTIF_KD not in(3, 6))';

      sFilter:= GetFilterGajiSQL;
      if (sFilter<>'') then sWhere:= sWhere + ' and ' + sFilter;
      strSQL:= strSQL + sWhere;
      
    Ada:= not Pegawai.IsEmpty;

    if Ada then
      begin
        if (MessageDlg('Data sudah ada, proses ulang ?',mtConfirmation,[mbYes,mbNo],0)=mrYes) then
          begin
            sDel:= 'DELETE FROM ' + MyTable + ' ' +
              'WHERE (TAHUN=' + QuotedStr(qryJenis.FieldByName('Tahun').Asstring) + ') AND '+
              '(BULAN=' + QuotedStr(qryJenis.FieldByName('Bulan').Asstring) + ') AND '+
              '(TM_TAHUN=' + QuotedStr(qryJenis.FieldByName('TM_Tahun').Asstring) + ') AND '+
              '(TM_BULAN=' + QuotedStr(qryJenis.FieldByName('TM_Bulan').Asstring) + ') AND '+
              '(JENIS='+qryJenis.FieldByName('Jenis').Asstring+ ')';
            
            if (sFilter<>'') then sDel:= sDel + ' and ' + sFilter;
            GModule.SQLExecute(sDel);
            Application.ProcessMessages;
          end
        else
          exit;
      end;

    //GModule.SQLExecute(strSQL);

    GModule.ExecuteSQL(strSQL);

    if (Pegawai.Active) then Pegawai.Requery()
    else Pegawai.Open;
    // -----
      nCount:= Pegawai.RecordCount;
      if (nCount<1) then exit;
      iCount:=0;
      InProses:=True;

      Pegawai.First;

      if qryAktif.Active then qryAktif.Requery
      else qryAktif.Open;

      if qryFungsional.Active then qryFungsional.Requery
      else qryFungsional.Open;
      fgProses.MinValue:= 0;
      fgProses.MaxValue:= nCount;
      fgProses.Progress:= 0;
      fgProses.Visible:= True;
      while not Pegawai.eof do
        begin
          Pegawai.edit;
          Pegawai.post;

          Inc(iCount);
          fgProses.Progress:= iCount;

          Application.ProcessMessages;

          Pegawai.Next;
        end;

    ShowMessage('Data Gaji Telah Diprosess.');
  except
    on Ex: Exception do MessageDlg(Ex.Message, mtError, [mbOK], 0);
  end;
  MasterFlag:=True;
  InProses:=False;

  strSQL:= 'delete from ' + MyTable + ' ';
  
  strSQL:= strSQL + 'where (jenis=' + IntToStr(qryJenis.FieldByName('jenis').AsInteger) +
      ' and bulan=' + QuotedStr(qryJenis.FieldByName('bulan').AsString) +
      ' and tahun=' + QuotedStr(qryJenis.FieldByName('tahun').AsString) +
      ' and tm_bulan=' + QuotedStr(qryJenis.FieldByName('tm_bulan').AsString) +
      ' and tm_tahun=' + QuotedStr(qryJenis.FieldByName('tm_tahun').AsString) + ' and gaji_pokok<=0)';
  if (sFilter<>'') then strSQL:= strSQL + ' and (' + sFilter + ')';
  GModule.SQLExecute(strSQL);
  Pegawai.Requery();
  fgProses.Visible:= False;
end;

procedure TfrmGajiRapel.PegawaiAfterScroll(DataSet: TDataSet);
begin
  if (Dataset.IsEmpty) then btnProses.Caption:= 'Proses'
  else btnProses.Caption:= 'Proses Ulang';
  pnlJmlData.Caption:= 'Jumlah Data = ' + FormatFloat('#,0', Pegawai.RecordCount);
end;

procedure TfrmGajiRapel.LookEselonClick(Sender: TObject);
//var K: String;
begin
  //K:= Pegawai.FieldByName('JBT_StrukturKd').AsString;
  //LookFungsi.Enabled:= ((K='') or (K='9999'));
end;

procedure TfrmGajiRapel.LookFungsiClick(Sender: TObject);
//var K: String;
begin
  //K:= Pegawai.FieldByName('JBT_FungsiKd').AsString;
  //LookEselon.Enabled:= ((K='') or (K='000'));
end;

procedure TfrmGajiRapel.DBEdit1Change(Sender: TObject);
//var S, F: String;
begin
  //S:= Pegawai.FieldByName('JBT_StrukturKd').AsString;
  //F:= Pegawai.FieldByName('JBT_FungsiKd').AsString;
  //LookFungsi.Enabled:= ((S='') or (S='9999'));
  //LookEselon.Enabled:= ((F='') or (F='000'));
end;

procedure TfrmGajiRapel.btnF1Click(Sender: TObject);
var sFile: String;
begin
  case TSpeedButton(Sender).Tag of
  1 : sFile:= GModule.Path + 'Rpt-Gaji\Rapel-F1.fr3';
  2 : sFile:= GModule.Path + 'Rpt-Gaji\Rapel-F2.fr3';
  3 : sFile:= GModule.Path + 'Rpt-Gaji\Rapel-F3.fr3';
  else sFile:= '';
  end;
  DMReports.ShowReportRapel(sFile,
        qryJenis.FieldByName('Tahun').AsString,
        qryJenis.FieldByName('Bulan').AsString,
        qryJenis.FieldByName('TM_Bulan').AsString,
        qryJenis.FieldByName('TM_Tahun').AsString,
        txtCari.Text,
        qryJenis.FieldByName('Jenis').asInteger,
        tglTTD.Date,
        SelectedMenu, ckSub.Checked);
end;

procedure TfrmGajiRapel.DesignEdit1Click(Sender: TObject);
var sFile: String;
begin
  case TMenuItem(Sender).Tag of
  1 : sFile:= GModule.Path + 'Rpt-Gaji\Rapel-F1.fr3';
  2 : sFile:= GModule.Path + 'Rpt-Gaji\Rapel-F2.fr3';
  3 : sFile:= GModule.Path + 'Rpt-Gaji\Rapel-F3.fr3';
  else sFile:= '';
  end;
  DMReports.DesignReportRapel(sFile,
        qryJenis.FieldByName('Tahun').AsString,
        qryJenis.FieldByName('Bulan').AsString,
        qryJenis.FieldByName('TM_Bulan').AsString,
        qryJenis.FieldByName('TM_Tahun').AsString,
        txtCari.Text,
        qryJenis.FieldByName('Jenis').asInteger,
        tglTTD.Date,
        SelectedMenu, ckSub.Checked);
end;

procedure TfrmGajiRapel.btnImportClick(Sender: TObject);
begin
  if ((Pegawai.Active) and (not qryJenis.IsEmpty)) then
    begin
      if (ImportGajiRapelDlg(qryJenis.FieldByName('TM_Tahun').AsString,
          qryJenis.FieldByName('TM_Bulan').AsString,
          qryJenis.FieldByName('Tahun').AsString,
          qryJenis.FieldByName('Bulan').AsString,
          qryJenis.FieldByName('Jenis').AsInteger)) then Pegawai.Requery;
    end;
end;

procedure TfrmGajiRapel.btnEksportClick(Sender: TObject);
var Ek: Integer;
    sFile, DefName: String;
    PF: TPersistFormat;
begin
  if (Pegawai.IsEmpty) then
    begin
      MessageDlg('Tidak Ada Data Yang Dapat di Esksport.', mtWarning, [mbOK], 0);
      exit;
    end;
  sFile:= '';
  DefName:= qryJenis.FieldByName('TM_Bulan').AsString;
  DefName:= DefName + qryJenis.FieldByName('TM_Tahun').AsString;
  DefName:= DefName + '_' + qryJenis.FieldByName('Bulan').AsString;
  DefName:= DefName + qryJenis.FieldByName('Tahun').AsString;
  if (SelectedMenu.SKPDKd<>'') then
    DefName:= DefName + '-' + StringReplace(LeftStr(SelectedMenu.SKPDKd, 7), '.', '', [rfReplaceAll]);
  DefName:= DefName + '-' + FormatFloat('00', qryJenis.FieldByName('Jenis').AsFloat);
  SaveEksport.InitialDir:= GModule.Path + 'Eksport';;
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
        Pegawai.SaveToFile(sFile, PF);
        MessageDlg('Data Telah Dieksport.', mtInformation, [mbOK], 0);
      except
        on Ex: Exception do
          MessageDlg('Error...!!!' + #13#10 + Ex.Message, mtError, [mbOK], 0);
      end;
    end;
end;

end.
