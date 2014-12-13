unit _rapel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, ToolEdit, RXDBCtrl, DBCtrls, ComCtrls,
  Buttons, ExtCtrls, RxLookup, Mask, Grids, DBGrids, DateUtils, Math,StrUtils;

type
  TfrmRapel = class(TForm)
    Memo1: TMemo;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Uraian: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    btnProses: TButton;
    DBEdit1: TDBEdit;
    RxDBLookupCombo1: TRxDBLookupCombo;
    DBEdit2: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBNavigator1: TDBNavigator;
    OptJenis: TDBRadioGroup;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBGrid2: TDBGrid;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    QryJENIS: TADOQuery;
    dsJenis: TDataSource;
    qryBulan: TADOQuery;
    dsBulan: TDataSource;
    qryJenisGaji: TADOQuery;
    Label69: TLabel;
    DBEdit64: TDBEdit;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Label70: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    Label68: TLabel;
    edtCari: TEdit;
    BitBtn1: TBitBtn;
    pProses: TPanel;
    LBProcess: TLabel;
    ProgressBar1: TProgressBar;
    dsGajiPegawai: TDataSource;
    qryStruktur: TADOQuery;
    dsStruktur: TDataSource;
    qrySKPD: TADOQuery;
    dsSKPD: TDataSource;
    qryStatus: TADOQuery;
    dsStatus: TDataSource;
    qryGuru: TADOQuery;
    dsGuru: TDataSource;
    qryKawin: TADOQuery;
    dsKawin: TDataSource;
    qryFungsional: TADOQuery;
    dsFungsional: TDataSource;
    qryParam: TADOQuery;
    qryParamPARAM_ID: TSmallintField;
    qryParamTunj_Anak: TFloatField;
    qryParamTunj_Istri: TFloatField;
    qryParamTunj_Beras_Rupiah: TFloatField;
    qryParamTunj_Beras_Kg: TFloatField;
    qryParamTunj_Pajak: TFloatField;
    qryParamTunj_Pajak_1: TFloatField;
    qryParamTunj_Pajak_2: TFloatField;
    qryParamTunj_Pajak_3: TFloatField;
    qryParamTunj_Pajak_4: TFloatField;
    qryParamTunj_Pajak_1_Max: TFloatField;
    qryParamTunj_Pajak_2_Max: TFloatField;
    qryParamTunj_Pajak_3_Max: TFloatField;
    qryParamTunj_Pajak_4_Max: TFloatField;
    qryParamTunj_Biaya_Jabatan: TFloatField;
    qryParamTunj_Maks_Biaya_Jabatan: TBCDField;
    qryParamMaxStaff: TIntegerField;
    qryParamMaxGuru: TIntegerField;
    qryParamOperator: TStringField;
    qryParamTgl_Ubah: TDateTimeField;
    qryParamIuran_Pemda: TFloatField;
    qryParamPTKP_Pribadi: TFloatField;
    qryParamPTKP_Anak: TFloatField;
    qryParamPTKP_SI: TFloatField;
    qryParamTunj_Anak_Max: TIntegerField;
    qryParamPTKP_Anak_Max: TIntegerField;
    qryParamIuran_Pensiun: TFloatField;
    qryParamAskes: TFloatField;
    qryParamTunj_Hari_Tua: TFloatField;
    qryParamIsWKSingle: TBooleanField;
    dsParam: TDataSource;
    qryAktif: TADOQuery;
    dsAktif: TDataSource;
    qrySIPIL: TADOQuery;
    dsSIPIL: TDataSource;
    qryGolongan: TADOQuery;
    dsGolongan: TDataSource;
    Panel3: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
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
    Label20: TLabel;
    Label21: TLabel;
    Label18: TLabel;
    Label64: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label25: TLabel;
    Label96: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label35: TLabel;
    Label40: TLabel;
    Label62: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    DBImage1: TDBImage;
    DBEdit5: TDBEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
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
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBLookupComboBox7: TDBLookupComboBox;
    DBEdit59: TDBEdit;
    DBLookupSDana: TDBLookupComboBox;
    DBDateEdit3: TDBDateEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBDateEdit6: TDBDateEdit;
    DBEdit40: TDBEdit;
    DBEdit41: TDBEdit;
    DBLookupComboBox4: TDBLookupComboBox;
    DBEdit39: TDBEdit;
    DBEdit57: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit36: TDBEdit;
    DBEdit37: TDBEdit;
    pnlGaji: TPanel;
    Label30: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label39: TLabel;
    Label38: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    DBEdit38: TDBEdit;
    DBEdit42: TDBEdit;
    DBEdit43: TDBEdit;
    DBEdit44: TDBEdit;
    DBEdit45: TDBEdit;
    DBEdit46: TDBEdit;
    DBEdit47: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit48: TDBEdit;
    DBEdit49: TDBEdit;
    DBEdit50: TDBEdit;
    DBEdit51: TDBEdit;
    DBEdit52: TDBEdit;
    DBEdit53: TDBEdit;
    DBEdit54: TDBEdit;
    DBEdit55: TDBEdit;
    DBEdit56: TDBEdit;
    DBEdit60: TDBEdit;
    DBEdit61: TDBEdit;
    DBEdit62: TDBEdit;
    DBEdit63: TDBEdit;
    DBNavigator2: TDBNavigator;
    DBGrid1: TDBGrid;
    qrygajipegawai: TADOQuery;
    qrygajipegawaiTAHUN: TStringField;
    qrygajipegawaiBULAN: TStringField;
    qrygajipegawaiJENIS: TSmallintField;
    qrygajipegawaiURUT: TSmallintField;
    qrygajipegawaiNIP: TStringField;
    qrygajipegawaiUNITKD: TStringField;
    qrygajipegawaiSUB: TSmallintField;
    qrygajipegawaiNAMA: TStringField;
    qrygajipegawaiTGL_LAHIR: TDateTimeField;
    qrygajipegawaiTMP_LAHIR: TStringField;
    qrygajipegawaiJNS_KELAMIN: TStringField;
    qrygajipegawaiBANK: TStringField;
    qrygajipegawaiREKENING: TStringField;
    qrygajipegawaiNPWP: TStringField;
    qrygajipegawaiNO_PEGAWAI: TStringField;
    qrygajipegawaiNOJJP: TStringField;
    qrygajipegawaiALAMAT: TStringField;
    qrygajipegawaiNAMASI: TStringField;
    qrygajipegawaiSTS_PEGAWAIKD: TStringField;
    qrygajipegawaiTMT_PEGAWAI: TDateTimeField;
    qrygajipegawaiSTS_KWN: TStringField;
    qrygajipegawaiSTS_SIPIL: TStringField;
    qrygajipegawaiAGAMA: TStringField;
    qrygajipegawaiJML_SI: TIntegerField;
    qrygajipegawaiJML_ANAK: TIntegerField;
    qrygajipegawaiGOLONGANKD: TStringField;
    qrygajipegawaiTMT_GOLONGAN: TDateTimeField;
    qrygajipegawaiMASAKERJA: TIntegerField;
    qrygajipegawaiJBT_FUNGSIKD: TStringField;
    qrygajipegawaiJBT_STRUKTURKD: TStringField;
    qrygajipegawaiTMT_JABATAN: TDateTimeField;
    qrygajipegawaiTUNJ_JAB_FUNGSI: TBCDField;
    qrygajipegawaiTUNJ_JAB_STRUKTUR: TBCDField;
    qrygajipegawaiGAJI_POKOK: TIntegerField;
    qrygajipegawaiTMT_GAJI_POKOK: TDateTimeField;
    qrygajipegawaiTUNJ_ISTRI: TBCDField;
    qrygajipegawaiTUNJ_ANAK: TBCDField;
    qrygajipegawaiTUNJ_BERAS: TBCDField;
    qrygajipegawaiGURUKD: TStringField;
    qrygajipegawaiOPERATOR: TStringField;
    qrygajipegawaiTGL_UBAH: TDateTimeField;
    qrygajipegawaiPIC_FOTO: TBlobField;
    qrygajipegawaiTUNJ_KERJA: TBCDField;
    qrygajipegawaiTDTKD: TStringField;
    qrygajipegawaiPEND_TERAKHIR: TStringField;
    qrygajipegawaiPEND_JURUSAN: TStringField;
    qrygajipegawaiV_JAB_STRUKTUR: TStringField;
    qrygajipegawaiPOT_IWP: TBCDField;
    qrygajipegawaiPOT_TAPERUM: TBCDField;
    qrygajipegawaiPOT_SEWA_RUMAH: TBCDField;
    qrygajipegawaiPOT_PANGAN: TBCDField;
    qrygajipegawaiPOT_KORPRI: TBCDField;
    qrygajipegawaiPOT_GAJI_LEBIH: TBCDField;
    qrygajipegawaiPOT_HUTANG: TBCDField;
    qrygajipegawaiPEMBULATAN: TBCDField;
    qrygajipegawaiPPH: TBCDField;
    qrygajipegawaiTUNJ_UMUM: TBCDField;
    qrygajipegawaiTUNJ_UMUM_TAMB: TBCDField;
    qrygajipegawaiTUNJ_OTSUS: TBCDField;
    qrygajipegawaiTUNJ_DT: TBCDField;
    qrygajipegawaiTUNJ_ASKES: TBCDField;
    qrygajipegawaiTUNJ_PENGHASILAN: TBCDField;
    qrygajipegawaiBIAYA_JABATAN: TBCDField;
    qrygajipegawaiBIAYA_PENSIUN: TBCDField;
    qrygajipegawaiPersen_Gaji: TBCDField;
    qrygajipegawaiIsTTU: TSmallintField;
    qrygajipegawaiAKTIF_KD: TIntegerField;
    qrygajipegawaiPTKP: TIntegerField;
    qrygajipegawaiAKTIF_TGL: TDateTimeField;
    qrygajipegawaiGajiDanTunjangan: TFloatField;
    qrygajipegawaiGajiBersih: TFloatField;
    qrygajipegawaiPotongan: TFloatField;
    qrygajipegawaiTM_BULAN: TStringField;
    qrygajipegawaiTM_TAHUN: TStringField;
    qrygajipegawaiGolonganKd_Lama: TStringField;
    qrygajipegawaiMasaKerja_Lama: TIntegerField;
    qrygajipegawaiJbt_StrukturKd_Lama: TStringField;
    qrygajipegawaiJbt_FungsiKd_Lama: TStringField;
    qrygajipegawaiGapok_Lama: TIntegerField;
    qrygajipegawaiTGL_RAPEL: TDateTimeField;
    qrygajipegawaiTGL_TMT: TDateTimeField;
    qrygajipegawaiTMT_FUNGSI: TDateTimeField;
    qryGajiSTD: TADOQuery;
    procedure FormCreate(Sender: TObject);
    procedure QryJENISAfterScroll(DataSet: TDataSet);
    procedure QryJENISAfterPost(DataSet: TDataSet);
    procedure QryJENISAfterInsert(DataSet: TDataSet);
    procedure btnProsesClick(Sender: TObject);
    procedure qrygajipegawaiAfterInsert(DataSet: TDataSet);
    procedure qrygajipegawaiAfterOpen(DataSet: TDataSet);
    procedure qrygajipegawaiAfterPost(DataSet: TDataSet);
    procedure qrygajipegawaiBeforePost(DataSet: TDataSet);
    procedure qrygajipegawaiCalcFields(DataSet: TDataSet);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit64KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure edtCariKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure QryJENISAfterEdit(DataSet: TDataSet);
    procedure QryJENISAfterCancel(DataSet: TDataSet);
    procedure QryJENISAfterDelete(DataSet: TDataSet);
  private
    { Private declarations }
    MasterFlag:Boolean;
    InProcess:Boolean;
    DefQuery: String;
    procedure AktifKontrol;
    procedure FilterSKPD;
    procedure QueryGaji;
    procedure ButtonNavGaji;
  public
    { Public declarations }
  end;

procedure Rapeldlg;

var
  frmRapel: TfrmRapel;

implementation

{$R *.dfm}

uses _GajiDM, GlobalModule, PegawaiModule, CariPegawai;

procedure Rapeldlg;
begin
  frmRapel:=TfrmRapel.Create(Nil);
end;

procedure TfrmRapel.AktifKontrol;
begin
  Panel2.Enabled:=(not InProcess);
  Panel4.Enabled:=(not InProcess);
  PageControl1.Enabled:=(not InProcess);
  pProses.Visible:=InProcess;
end;

procedure TfrmRapel.FilterSKPD;
begin
  qrySKPD.Filtered:= False;
  if not(GModule.IsAllSKPD) then
    begin
      qrySKPD.Filter:= 'unitkd=' + QuotedStr(GModule.UnitKd);
      qrySKPD.Filtered:= True;
    end;
end;

procedure TfrmRapel.QueryGaji;
var S: String;
begin
  S:= DefQuery;
  if (not (GModule.IsAllSKPD)) then
    S:= StringReplace(S, 'AND (UNITKD=''<unitkd>'')', 'AND (UNITKD=''' + GModule.UnitKd + ''')', [rfReplaceAll])
  else
    S:= StringReplace(S, 'AND (UNITKD=''<unitkd>'')', '', [rfReplaceAll]);
  qrygajipegawai.SQL.Text:= S;
end;

procedure TfrmRapel.ButtonNavGaji;
begin
  if (qryJenis.IsEmpty) then
    begin
      DBNavigator2.VisibleButtons:= [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbEdit, nbDelete, nbPost, nbCancel, nbRefresh];
      DBNavigator2.Enabled:= False;
      Exit;
    end;
  if (qryJenis.FieldByName('POSTED').AsBoolean) then
    DBNavigator2.VisibleButtons:= [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
  else
    DBNavigator2.VisibleButtons:= [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbEdit, nbDelete, nbPost, nbCancel, nbRefresh];
  DBNavigator2.Enabled:= not ((qryJenis.IsEmpty) or (not qryJenis.Active) or (qryJenis.State in[dsInsert, dsEdit]));
end;

procedure TfrmRapel.FormCreate(Sender: TObject);
begin
  DefQuery:= qrygajipegawai.SQL.Text;
  QueryGaji;
  MasterFlag:=True;
  qryJenis.SQL.Text:= StringReplace(qryJenis.SQL.Text, 'THN', GModule.Tahun, [rfReplaceAll]);
  qryJenis.OPen;
  QryBulan.Open;
  InProcess:=False;
end;

procedure TfrmRapel.QryJENISAfterScroll(DataSet: TDataSet);
begin
  if (not (Dataset.State in[dsInsert, dsEdit])) then
  begin
    if (not qrygajipegawai.Active) then qrygajipegawai.Open;
    btnProses.Enabled:= not (Dataset.IsEmpty);
  end;
  ButtonNavGaji;
  if (Dataset.IsEmpty) then qrygajipegawai.Close;
end;

procedure TfrmRapel.QryJENISAfterPost(DataSet: TDataSet);
begin
    if (qrygajipegawai.Active) then qrygajipegawai.Requery()
    else qrygajipegawai.Open;
    btnProses.Enabled:= not (Dataset.IsEmpty);
    ButtonNavGaji;
end;

procedure TfrmRapel.QryJENISAfterInsert(DataSet: TDataSet);
begin
  with qryJenis do
  begin
    FieldByName('Tahun').Value:=GModule.Tahun;
    FieldByName('Bulan').Value:=FormatFloat('00',1+MonthOf(Now));
    FieldByName('Tanggal_Buat').Value:=Now;
    FieldByName('TM_Tahun').Value:=GModule.Tahun;
    FieldByName('TM_Bulan').Value:=FormatFloat('00',1+MonthOf(Now));
    FieldByName('Posted').Value:= False;
  end;
  btnProses.Enabled:= False;
  ButtonNavGaji;
end;

procedure TfrmRapel.btnProsesClick(Sender: TObject);
var strSQL, sDel:string;
    iCount, nCount:Integer;
begin

  if (InProcess) Then
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
    strSQL:='INSERT INTO PEGAWAI_GAJI_RAPEL( TAHUN, BULAN, JENIS, URUT, TM_TAHUN, TM_BULAN, '+
      'NIP, UNITKD, SUB, NAMA, TGL_LAHIR, TMP_LAHIR, JNS_KELAMIN, BANK, REKENING, NPWP, '+
      'NO_PEGAWAI, NOJJP, ALAMAT, NAMASI, STS_PEGAWAIKD, TMT_PEGAWAI, STS_KWN, STS_SIPIL, '+
      'AGAMA, JML_SI, JML_ANAK, GOLONGANKD, TMT_GOLONGAN, MASAKERJA, JBT_FUNGSIKD, JBT_STRUKTURKD, '+
      'TMT_JABATAN, TUNJ_JAB_FUNGSI, TUNJ_JAB_STRUKTUR, GAJI_POKOK, TMT_GAJI_POKOK, '+
      'TUNJ_ISTRI, TUNJ_ANAK, TUNJ_BERAS, GURUKD, OPERATOR, TGL_UBAH, TUNJ_KERJA, TDTKD, '+
      'PEND_TERAKHIR, PEND_JURUSAN, V_JAB_STRUKTUR, POT_IWP, POT_TAPERUM, POT_SEWA_RUMAH, '+
      'POT_PANGAN, POT_KORPRI, POT_GAJI_LEBIH, POT_HUTANG, PEMBULATAN, PPH, TUNJ_UMUM, '+
      'TUNJ_UMUM_TAMB, TUNJ_OTSUS, TUNJ_DT, TUNJ_ASKES, TUNJ_PENGHASILAN, BIAYA_JABATAN, '+
      'BIAYA_PENSIUN, Persen_Gaji, IsTTU, AKTIF_KD, PTKP, AKTIF_TGL, '+
      'GOLONGANKD_LAMA, MASAKERJA_LAMA, JBT_STRUKTURKD_LAMA, JBT_FUNGSIKD_LAMA, GAPOK_LAMA) '+
          'SELECT 	'''+qryJenis.FieldByName('Tahun').Asstring+''','+
          ''''+qryJenis.FieldByName('Bulan').Asstring+''','+
          ''''+qryJenis.FieldByName('Jenis').Asstring+''',0,'+
          ''''+qryJenis.FieldByName('TM_Tahun').Asstring+''','+
          ''''+qryJenis.FieldByName('TM_Bulan').Asstring+''','+
          'NIP, UNITKD, SUB, NAMA, TGL_LAHIR, TMP_LAHIR, JNS_KELAMIN, BANK, REKENING, NPWP, '+
          'NO_PEGAWAI, NOJJP, ALAMAT, NAMASI, STS_PEGAWAIKD, TMT_PEGAWAI, STS_KWN, STS_SIPIL, '+
          'AGAMA, JML_SI, JML_ANAK, GOLONGANKD, TMT_GOLONGAN, MASAKERJA, JBT_FUNGSIKD, JBT_STRUKTURKD, '+
          'TMT_JABATAN, TUNJ_JAB_FUNGSI, TUNJ_JAB_STRUKTUR, GAJI_POKOK, TMT_GAJI_POKOK, '+
          'TUNJ_ISTRI, TUNJ_ANAK, TUNJ_BERAS, GURUKD, OPERATOR, TGL_UBAH, TUNJ_KERJA, TDTKD, '+
          'PEND_TERAKHIR, PEND_JURUSAN, V_JAB_STRUKTUR, POT_IWP, POT_TAPERUM, POT_SEWA_RUMAH, '+
          'POT_PANGAN, POT_KORPRI, POT_GAJI_LEBIH, POT_HUTANG, PEMBULATAN, PPH, TUNJ_UMUM, '+
          'TUNJ_UMUM_TAMB, TUNJ_OTSUS, TUNJ_DT, TUNJ_ASKES, TUNJ_PENGHASILAN, BIAYA_JABATAN, '+
          'BIAYA_PENSIUN, Persen_Gaji, IsTTU, AKTIF_KD, PTKP, AKTIF_TGL, '+
          'GOLONGANKD as GOLONGANKD_LAMA, '+
          'MASAKERJA as MASAKERJA_LAMA, '+
          'JBT_STRUKTURKD as JBT_STRUKTURKD_LAMA, '+
          'JBT_FUNGSIKD as JBT_FUNGSIKD_LAMA, ' +
          'Gaji_Pokok as GAPOK_LAMA '+
          'FROM PEGAWAI_GAJI  WHERE JENIS=0 AND BULAN=' + QuotedStr(qryJenis.FieldByName('bulan').AsString) + ' and tahun=' +
              QuotedStr(qryJenis.FieldByName('tahun').AsString);
          //'FROM PEGAWAI  WHERE AKTIF_KD NOT IN (3, 4, 5, 6) ';
    //if (not GModule.fIsAllSKPD) then
    //          strSQL:= strSQL + ' AND (UnitKd=''' + GModule.fGSKPD + ''')';
    if (not GModule.IsAllSKPD) then strSQL:= strSQL + ' and unitkd=' + QuotedStr(GModule.UnitKd);
    if not qryGajiPegawai.IsEmpty then
      begin
        if MessageDlg('Data sudah ada, proses ulang ?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
          begin
            sDel:= 'DELETE FROM PEGAWAI_GAJI_RAPEL '+
              'WHERE (TAHUN='''+qryJenis.FieldByName('Tahun').Asstring+''') AND '+
              '(BULAN='''+qryJenis.FieldByName('Bulan').Asstring+''') AND '+
              '(JENIS='+qryJenis.FieldByName('Jenis').Asstring+ ') AND '+
              '(TM_TAHUN='''+qryJenis.FieldByName('TM_Tahun').Asstring+''') AND '+
              '(TM_BULAN='''+qryJenis.FieldByName('TM_Bulan').Asstring+''')';
            if (not GModule.IsAllSKPD) then
              sDel:= sDel + ' AND (UnitKd=''' + GModule.UnitKd + ''')';
            GModule.SQLExecute(sDel);
            Application.ProcessMessages;
          end
        else
          exit;
      end;

    GModule.SQLExecute(strSQL);
    qryGajiPegawai.Requery();
    // -----
    
    iCount:=0;
    nCount:=qryGajiPegawai.RecordCount;
    InProcess:=True;
    LBProcess.Caption:='Processing: 0 of '+IntToStr(nCount);
    AktifKontrol;
    // -----

    qryGajiPegawai.First;


    if qryAktif.Active then qryAktif.Requery
    else qryAktif.Open;

    if qryFungsional.Active then qryFungsional.Requery
    else qryFungsional.Open;

    ProgressBar1.Position:= 0;
    ProgressBar1.Max:= nCount;

    Memo1.Clear;
    while not qryGajiPegawai.eof do
      begin
        qryGajiPegawai.edit;
        qryGajiPegawai.post;

        // -----
        Inc(iCount);
        ProgressBar1.Position:= iCount;
        LBProcess.Caption:='Telah Diproses : '+IntToStr(iCount)+' dari '+IntToStr(nCount);
        Application.ProcessMessages;
        // -----

        qryGajiPegawai.Next;
      end;
    ShowMessage('Data Rapel Gaji Telah Diprosess.');
  except
  end;
  MasterFlag:=True;
  InProcess:=False;
  qryGajiPegawai.Requery();
  AktifKontrol; 
end;

procedure TfrmRapel.qrygajipegawaiAfterInsert(DataSet: TDataSet);
var N:String;
    I, M:Integer;
begin
  //N:=CariPegawaiDlg(' (pgw.aktif_kd not in(3,4,5,6)) ', qryJenis.FieldByName('bulan').AsString, true);
  N:= CariRapelPegawaiDlg(qryJenis.FieldByName('tm_bulan').AsString, qryJenis.FieldByName('bulan').AsString,
    qryJenis.FieldByName('tm_tahun').AsString, qryJenis.FieldByName('tahun').AsString,
    qryJenis.FieldByName('jenis').AsInteger, ' (pgw.aktif_kd not in(3,4,5,6)) ');
  if N='' then
    Dataset.Cancel
  else
    begin
      qryGajiSTD.Close;
      {qryGajiSTD.SQL.Text:= 'select * from pegawai_gaji ' +
        'where nip=' + QuotedStr(N) + ' and (jenis=0 or jenis=6) ' +
        ' and tahun=' + QuotedStr(GModule.Tahun) +
        ' and bulan=' + QuotedStr(qryJenis.FieldByName('bulan').AsString); }
      qryGajiSTD.SQL.Text:= 'select * from pegawai ' +
        'where nip=' + QuotedStr(N);
      qryGajiSTD.Open;

      with qryGajiSTD do
        begin
          if (qryGajiSTD.IsEmpty) then
            Dataset.Cancel
          else
            begin
              M:= FieldCount - 1;
              for I:= 0 to M do
                begin
                  {if (not((UPPERCASE(Fields[I].FieldName)='PENERIMA_UDWUDT') or
                    (UPPERCASE(Fields[I].FieldName)='TGLBYR_UDWUDT')or
                    (UPPERCASE(Fields[I].FieldName)='BULAN')or
                    (UPPERCASE(Fields[I].FieldName)='TAHUN')or
                    (UPPERCASE(Fields[I].FieldName)='JENIS')or
                    (UPPERCASE(Fields[I].FieldName)='TGL_GAJI')))  then }
                  if (Dataset.FindField(Fields[I].FieldName)<>nil) then
                    Dataset.FieldByName(Fields[I].FieldName).Value:= Fields[I].Value;
                end;
              Dataset.FieldByName('Urut').Value:= 0;
            end;
        end;
    end;
end;

procedure TfrmRapel.qrygajipegawaiAfterOpen(DataSet: TDataSet);
var i:integer;
begin
  with  qryGajiPegawai do
  begin

    for I:= 0 to FieldCount - 1 do
    begin
      if (Fields[i].DataType = ftFloat) then
      begin
        TFloatField(Fields[i]).EditFormat := '0.0';
        TFloatField(Fields[i]).DisplayFormat := '#,0.0';
      end
      else  if (Fields[i].DataType = ftInteger) then
      begin
        TIntegerField(Fields[i]).EditFormat := '0';
        TIntegerField(Fields[i]).DisplayFormat := '#,0';
      end
      else  if (Fields[i].DataType = ftBCD) then
      begin
        tBCDField(Fields[i]).EditFormat := '0';
        tBCDField(Fields[i]).DisplayFormat := '#,0';
      end;
      if (UpperCase(Fields[i].FieldName) = 'POSTED') then
        TBooleanField(Fields[i]).DisplayValues := 'POSTED';
    end;
  end;
  qrySKPD.Open;
  qryGuru.Open;
  qryFungsional.Open;
  qryStruktur.Open;
  qryStatus.Open;
  qryGolongan.Open;
  qryAktif.Open;
  qrySIPIL.Open;
  qryKawin.Open;
end;

procedure TfrmRapel.qrygajipegawaiAfterPost(DataSet: TDataSet);
begin
  if (MasterFlag) then
  begin
    if (MessageDlg('Update Data Master Pegawai.?', mtConfirmation, [mbYes, mbNo], 0)= IDYES) then
      begin
        With Dataset do
          begin
            DMPegawai.UpdateMasterPegawai(FieldByName('Tahun').AsString,
              FieldByName('Bulan').AsString, IntToStr(FieldByName('Jenis').AsInteger),
              FieldByName('NIP').AsString, FieldByName('TM_Bulan').AsString, FieldByName('TM_Tahun').AsString)
          end;
      end; 
  end;
end;

procedure TfrmRapel.qrygajipegawaiBeforePost(DataSet: TDataSet);
var
    pokok,tunjangan,potongan:double;
    oldround:TFPURoundingMode;
    persengaji:Double;
    HitungKd:integer;
    nerror:integer;
    jnsRapel: Integer;
begin
  
  oldround := GetRoundMode;
  SetRoundMode(rmNearest);
  if qryParam.Active then qryParam.Requery
  else qryParam.Open;

  if qryJenisGaji.Active then qryJenisGaji.Requery()
  else  qryJenisGaji.Open;
  
  With qryGajiPegawai do
  begin
      nerror:=0;

      //------------------------------------------------------------------------
      // CHECK Field Status
      if  FieldByName('STS_PEGAWAIKD').AsString='' then
      begin
          Memo1.Lines.Add('NIP:'+FieldByName('NIP').AsString+' Status pegawai harus diisi');
          nerror:=1;
      end;

      if  FieldByName('AKTIF_KD').AsString='' then
      begin
          Memo1.Lines.Add('NIP:'+FieldByName('NIP').AsString+' Status aktif harus diisi');
          nerror:=1;
      end;

      //------------------------------------------------------------------------
        persengaji:=qryAktif.FieldByName('Gaji_Pokok').asFloat;

        HitungKd:= qryAktif.FieldByName('HitungKd').AsInteger;

        if not(FieldByName('Aktif_Tgl').IsNull) then
          begin
            if (HitungKd=-1) and
              (MonthsBetween(now,FieldByName('Aktif_Tgl').Value )> qryAktif.FieldByName('Accress').AsInteger) then
              persengaji:=0;
          end;

      if (qryJenis.IsEmpty) then persenGaji:=0;

        if persenGaji=0 then nerror:=1;
      //------------------------------------------------------------------------

        if nerror=0 then
        begin

          jnsRapel:= qryJenis.FieldByName('jenis').AsInteger;
          
          case jnsRapel of
          10 :
            begin
              FieldByName('GAJI_POKOK').Value:= dmGaji.GetGajiPokok(FieldByName('GOLONGANKD').Value,
                                    FieldByName('MASAKERJA').Value,
                                    FieldByName('Aktif_Kd').Value,
                                    FieldByName('STS_Pegawaikd').Value, 'STD', True);
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
                end;
            end;
          11 :
            begin
              FieldByName('TUNJ_JAB_FUNGSI').Value:= 0;
              FieldByName('TUNJ_UMUM').Value:= 0;
              if (qryAktif.FieldByName('Tunj_Struktural').AsBoolean) then
              FieldByName('TUNJ_JAB_STRUKTUR').Value:=
                dmGaji.GetTunjStrukTural(FieldByName('JBT_STRUKTURKD').asstring, 'STD', FieldByName('Aktif_Kd').AsString, True);
            end;
          12 :
            begin
              FieldByName('TUNJ_JAB_STRUKTUR').Value:= 0;
              FieldByName('TUNJ_UMUM').Value:= 0;
              if (qryAktif.FieldByName('Tunj_Fungsional').AsBoolean) then
                FieldByName('TUNJ_JAB_FUNGSI').Value:=
                  dmGaji.GetTunjFungsional(FieldByName('JBT_FUNGSIKD').asstring, 'STD', FieldByName('Aktif_Kd').AsString, True);
            end;
          13 :
            begin
              FieldByName('TUNJ_JAB_STRUKTUR').Value:= 0;
              FieldByName('TUNJ_JAB_FUNGSI').Value:= 0;
              FieldByName('TUNJ_UMUM').Value:=
              dmGaji.GetTunjanganUmum(FieldByName('GOLONGANKD').asstring, 'STD', FieldByName('Aktif_Kd').AsString, True);

              if (qryFungsional.FieldByName('ISTunjUmum').AsBoolean)then
                FieldByName('TUNJ_UMUM').Value:=
                  dmGaji.GetTunjanganUmum(FieldByName('GOLONGANKD').asstring, 'STD', FieldByName('Aktif_Kd').AsString, True);
            end;
          14 :
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
          end;

          if (FieldByName('GAJI_POKOK').Value>0)  then
          begin

            {FieldByName('TUNJ_ISTRI').Value:=round(FieldByName('GAJI_POKOK').Value *
                FieldByName('JML_SI').Value * qryParam.FieldByName('TUNJ_ISTRI').Value);

            if FieldByName('JML_ANAK').Value>qryParam.FieldByName('TUNJ_ANAK_MAX').Value then
              FieldByName('TUNJ_ANAK').Value:=round(FieldByName('GAJI_POKOK').Value *
                qryParam.FieldByName('TUNJ_ANAK_Max').Value * qryParam.FieldByName('TUNJ_ANAK').Value)
            else
              FieldByName('TUNJ_ANAK').Value:=Round(FieldByName('GAJI_POKOK').Value *
                FieldByName('JML_ANAK').Value*qryParam.FieldByName('TUNJ_ANAK').Value);
             }

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
            round(dmGaji.GetIWP(pokok, 'STD', FieldByName('Aktif_Kd').AsString, True));
          
          if qryAktif.FieldByName('Pot_Taperum').AsBoolean then
            FieldByName('POT_TAPERUM').Value:=
              dmGaji.GetTaperum(FieldByName('GOLONGANKD').Value, 'STD', FieldByName('Aktif_Kd').AsString);

          potongan:= FieldByName('POT_IWP').Value+
                FieldByName('POT_TAPERUM').Value+
                FieldByName('POT_SEWA_RUMAH').Value+
                FieldByName('POT_PANGAN').Value+
                FieldByName('POT_KORPRI').Value+
                FieldByName('POT_GAJI_LEBIH').Value+
                FieldByName('POT_HUTANG').Value;

          //LAIN-LAIN
          FieldByName('PEMBULATAN').Value:=100-StrToFloat(RightStr(FormatFloat('#,##0',pokok+tunjangan-potongan),2));
          if FieldByName('PEMBULATAN').Value=100 then FieldByName('PEMBULATAN').Value:=0;

          FieldByName('PPH').Value:=round(dmGaji.GetPPH((pokok+tunjangan-FieldByName('Biaya_Jabatan').Value-
                FieldByName('BIAYA_PENSIUN').Value)*12,
                FieldByName('PTKP').AsInteger, 0, True, 'STD', FieldByName('Aktif_Kd').AsString));
        end; //gajipokok
      end; //nerror
    //end; // Boleh digaji
  end; //qryGajiPegawai
  SetRoundMode(oldround);     
end;

procedure TfrmRapel.qrygajipegawaiCalcFields(DataSet: TDataSet);
begin
  with qryGajiPegawai do
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
      FieldByName('POT_GAJI_LEBIH').AsFloat+
      FieldByName('POT_HUTANG').AsFloat;

    FieldByName('GajiBersih').AsFloat:=
      FieldByName('GajiDanTunjangan').AsFloat+
      FieldByName('Pembulatan').AsFloat-
      FieldByName('Potongan').AsFloat;
  end; 
end;

procedure TfrmRapel.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if (not (Key in ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'])) then Key:=#0;
end;

procedure TfrmRapel.DBEdit64KeyPress(Sender: TObject; var Key: Char);
begin
  if (not (Key in ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'])) then Key:=#0;
end;

procedure TfrmRapel.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TfrmRapel.BitBtn1Click(Sender: TObject);
begin
  qrygajipegawai.Filtered:=False;
  if edtCari.Text<>'' then
  begin
    qrygajipegawai.Filter:='UnitKD='''+edtCari.Text+''' OR NIP Like ''%'+edtCari.Text+'%''  '+
        ' OR NAMA Like ''%'+edtCari.Text+'%''  ';
    qrygajipegawai.Filtered:=True;
  end;
end;

procedure TfrmRapel.edtCariKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13) then BitBtn1.Click;
end;

procedure TfrmRapel.FormShow(Sender: TObject);
begin
  AktifKontrol;
  FilterSKPD;
end;

procedure TfrmRapel.QryJENISAfterEdit(DataSet: TDataSet);
begin
  btnProses.Enabled:= False;
  ButtonNavGaji;
end;

procedure TfrmRapel.QryJENISAfterCancel(DataSet: TDataSet);
begin
  btnProses.Enabled:= not (Dataset.IsEmpty);
  ButtonNavGaji;
end;

procedure TfrmRapel.QryJENISAfterDelete(DataSet: TDataSet);
begin
  ButtonNavGaji;
end;

end.
