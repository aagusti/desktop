unit _proses;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, ADODB, Grids, DBGrids, RxLookup, Mask,
  DBCtrls, DateUtils, Math,StrUtils, Buttons, ToolEdit, RXDBCtrl, ComCtrls;

type
  TfrmProses = class(TForm)
    QryJENIS: TADOQuery;
    dsJenis: TDataSource;
    qryBulan: TADOQuery;
    dsBulan: TDataSource;
    qrygajipegawai: TADOQuery;
    dsGajiPegawai: TDataSource;
    qryParam: TADOQuery;
    dsParam: TDataSource;
    Memo1: TMemo;
    qryAktif: TADOQuery;
    dsAktif: TDataSource;
    dsFungsional: TDataSource;
    qryFungsional: TADOQuery;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Uraian: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    btnProses: TButton;
    DBGrid1: TDBGrid;
    DBEdit1: TDBEdit;
    RxDBLookupCombo1: TRxDBLookupCombo;
    DBEdit2: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBNavigator1: TDBNavigator;
    OptJenis: TDBRadioGroup;
    Panel4: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
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
    DBGrid2: TDBGrid;
    qrySKPD: TADOQuery;
    dsSKPD: TDataSource;
    qryStatus: TADOQuery;
    dsStatus: TDataSource;
    dsStruktur: TDataSource;
    qryGuru: TADOQuery;
    dsGuru: TDataSource;
    qryStruktur: TADOQuery;
    qryGolongan: TADOQuery;
    dsGolongan: TDataSource;
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
    DBNavigator2: TDBNavigator;
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
    qryJenisGaji: TADOQuery;
    qrygajipegawaiTGL_GAJI: TDateTimeField;
    qrygajipegawaiTMT_FUNGSI: TDateTimeField;
    Panel5: TPanel;
    Label68: TLabel;
    edtCari: TEdit;
    BitBtn1: TBitBtn;
    pProses: TPanel;
    LBProcess: TLabel;
    ProgressBar1: TProgressBar;
    qrySIPIL: TADOQuery;
    dsSIPIL: TDataSource;
    qryKawin: TADOQuery;
    dsKawin: TDataSource;
    Panel3: TPanel;
    DBImage1: TDBImage;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    DBDateSP2DDate: TDBDateEdit;
    Label9: TLabel;
    DBComboBox1: TDBComboBox;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    Label15: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    Label16: TLabel;
    DBDateEdit2: TDBDateEdit;
    Label63: TLabel;
    DBLookupComboBox6: TDBLookupComboBox;
    Label65: TLabel;
    DBDateEdit5: TDBDateEdit;
    Label22: TLabel;
    DBLookupComboBox5: TDBLookupComboBox;
    Label23: TLabel;
    DBDateEdit1: TDBDateEdit;
    Label24: TLabel;
    DBEdit24: TDBEdit;
    Label31: TLabel;
    DBDateEdit4: TDBDateEdit;
    Label17: TLabel;
    DBLookupComboBox8: TDBLookupComboBox;
    Label14: TLabel;
    DBEdit14: TDBEdit;
    Label19: TLabel;
    DBEdit19: TDBEdit;
    Label20: TLabel;
    DBEdit20: TDBEdit;
    Label21: TLabel;
    DBEdit21: TDBEdit;
    Label18: TLabel;
    DBLookupComboBox7: TDBLookupComboBox;
    Label64: TLabel;
    DBEdit59: TDBEdit;
    Label26: TLabel;
    DBLookupSDana: TDBLookupComboBox;
    Label27: TLabel;
    DBDateEdit3: TDBDateEdit;
    Label25: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label96: TLabel;
    DBDateEdit6: TDBDateEdit;
    Label41: TLabel;
    DBEdit40: TDBEdit;
    Label42: TLabel;
    DBEdit41: TDBEdit;
    Label35: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
    Label40: TLabel;
    DBEdit39: TDBEdit;
    Label62: TLabel;
    DBEdit57: TDBEdit;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    Label12: TLabel;
    DBEdit11: TDBEdit;
    Label28: TLabel;
    DBEdit12: TDBEdit;
    Label29: TLabel;
    DBEdit15: TDBEdit;
    Label36: TLabel;
    DBEdit36: TDBEdit;
    Label37: TLabel;
    DBEdit37: TDBEdit;
    qryUDWUDT: TADOQuery;
    qrygajipegawaiPENERIMA_UDWUDT: TStringField;
    qrygajipegawaiTGLBYR_UDWUDT: TDateTimeField;
    LBPenerima: TLabel;
    Penerima: TDBEdit;
    LBTGLHITUNG: TLabel;
    TGLHITUNG: TDBDateEdit;
    qrygajipegawaiGAJI_POKOK: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure QryJENISAfterInsert(DataSet: TDataSet);
    procedure btnProsesClick(Sender: TObject);
    procedure qrygajipegawaiBeforePost(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure qrygajipegawaiAfterOpen(DataSet: TDataSet);
    procedure QryJENISAfterScroll(DataSet: TDataSet);
    procedure qrygajipegawaiCalcFields(DataSet: TDataSet);
    procedure qrygajipegawaiAfterPost(DataSet: TDataSet);
    procedure QryJENISAfterPost(DataSet: TDataSet);
    procedure edtCariKeyPress(Sender: TObject; var Key: Char);
    procedure qrygajipegawaiAfterInsert(DataSet: TDataSet);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
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
    procedure ShowUDWUDT;
    procedure FilterSKPD;
    procedure QueryGaji;
    procedure ButtonNavGaji;
  public
    { Public declarations }
  end;
  procedure prosesdlg;

Const JenisID: Array[0..3] of String = ('STD', 'GJ13', 'UDW', 'UDT');

var
  frmProses: TfrmProses;

implementation

uses _GajiDM, GlobalModule, PegawaiModule, CariPegawai;

{$R *.dfm}

procedure prosesdlg;
begin
  frmProses:=TfrmProses.Create(Nil);
end;

procedure TfrmProses.AktifKontrol;
begin
  Panel2.Enabled:=(not InProcess);
  Panel4.Enabled:=(not InProcess);
  PageControl1.Enabled:=(not InProcess);
  pProses.Visible:=InProcess;
end;

procedure TfrmProses.FilterSKPD;
begin
  qrySKPD.Filtered:= False;
  if not(GModule.IsAllSKPD) then
    begin
      qrySKPD.Filter:= 'unitkd=' + QuotedStr(GModule.UnitKd);
      qrySKPD.Filtered:= True;
    end;
end;

procedure TfrmProses.QueryGaji;
var S: String;
begin
  S:= DefQuery;
  if (not (GModule.IsAllSKPD)) then
    S:= StringReplace(S, 'AND (UNITKD=''<unitkd>'')', 'AND (UNITKD=''' + GModule.UnitKd + ''')', [rfReplaceAll])
  else
    S:= StringReplace(S, 'AND (UNITKD=''<unitkd>'')', '', [rfReplaceAll]);
  qrygajipegawai.SQL.Text:= S;
end;

procedure TfrmProses.ShowUDWUDT;
var B: Boolean;
begin
  B:= ((qryJenis.FieldByName('Jenis').AsInteger=2)
        or(qryJenis.FieldByName('Jenis').AsInteger=3));
  LBPenerima.Visible:= B;
  Penerima.Visible:= B;
  LBTGLHitung.Visible:= B;
  TGLHitung.Visible:= B;
end;

procedure TfrmProses.ButtonNavGaji;
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

procedure TfrmProses.FormCreate(Sender: TObject);
begin
  DefQuery:= qrygajipegawai.SQL.Text;
  QueryGaji;
  MasterFlag:=True;
  qryJenis.SQL.Text:= StringReplace(qryJenis.SQL.Text, 'THN', GModule.Tahun, [rfReplaceAll]);
  qryJenis.OPen;
  QryBulan.Open;
  InProcess:=False;
end;

procedure TfrmProses.QryJENISAfterInsert(DataSet: TDataSet);
begin
  with qryJenis do
  begin
    FieldByName('Tahun').Value:=GModule.Tahun;
    FieldByName('Bulan').Value:=FormatFloat('00',1+MonthOf(Now));
    FieldByName('Tanggal_Buat').Value:=Now;
    FieldByName('Posted').Value:= False;
    FieldByName('Jenis').AsInteger:=0;
  end;
  btnProses.Enabled:= False;
  ButtonNavGaji;
end;

procedure TfrmProses.btnProsesClick(Sender: TObject);
var strSQL, sDel:string;
    iCount, nCount:Integer;
    //NonStandar:Boolean;
    Ada: Boolean;
begin
  if not (QryJenis.Active) then exit;
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
  //NonStandar:=(qryJenis.FieldByName('Jenis').AsInteger>0);
  try
    if qryJenis.State in [dsInsert,dsEdit] then qryJenis.Post;
    if (qryJenis.IsEmpty) then exit;
    strSQL:='INSERT INTO PEGAWAI_GAJI( TAHUN, BULAN, JENIS, URUT, '+
      'NIP, UNITKD, SUB, NAMA, TGL_LAHIR, TMP_LAHIR, JNS_KELAMIN, BANK, REKENING, NPWP, '+
      'NO_PEGAWAI, NOJJP, ALAMAT, NAMASI, STS_PEGAWAIKD, TMT_PEGAWAI, STS_KWN, STS_SIPIL, '+
      'AGAMA, JML_SI, JML_ANAK, GOLONGANKD, TMT_GOLONGAN, MASAKERJA, JBT_FUNGSIKD, JBT_STRUKTURKD, '+
      'TMT_JABATAN, TUNJ_JAB_FUNGSI, TUNJ_JAB_STRUKTUR, GAJI_POKOK, TMT_GAJI_POKOK, '+
      'TUNJ_ISTRI, TUNJ_ANAK, TUNJ_BERAS, GURUKD, OPERATOR, TGL_UBAH, TUNJ_KERJA, TDTKD, '+
      'PEND_TERAKHIR, PEND_JURUSAN, V_JAB_STRUKTUR, POT_IWP, POT_TAPERUM, POT_SEWA_RUMAH, '+
      'POT_PANGAN, POT_KORPRI, POT_GAJI_LEBIH, POT_HUTANG, PEMBULATAN, PPH, TUNJ_UMUM, '+
      'TUNJ_UMUM_TAMB, TUNJ_OTSUS, TUNJ_DT, TUNJ_ASKES, TUNJ_PENGHASILAN, BIAYA_JABATAN, '+
      'BIAYA_PENSIUN, Persen_Gaji, IsTTU, AKTIF_KD, PTKP, AKTIF_TGL) '+
          'SELECT 	'''+qryJenis.FieldByName('Tahun').Asstring+''','+
          ''''+qryJenis.FieldByName('Bulan').Asstring+''','+
          ''''+qryJenis.FieldByName('Jenis').Asstring+''',0,'+
          'NIP, UNITKD, SUB, NAMA, TGL_LAHIR, TMP_LAHIR, JNS_KELAMIN, BANK, REKENING, NPWP, '+
          'NO_PEGAWAI, NOJJP, ALAMAT, NAMASI, STS_PEGAWAIKD, TMT_PEGAWAI, STS_KWN, STS_SIPIL, '+
          'AGAMA, JML_SI, JML_ANAK, GOLONGANKD, TMT_GOLONGAN, MASAKERJA, JBT_FUNGSIKD, JBT_STRUKTURKD, '+
          'TMT_JABATAN, TUNJ_JAB_FUNGSI, TUNJ_JAB_STRUKTUR, GAJI_POKOK, TMT_GAJI_POKOK, '+
          'TUNJ_ISTRI, TUNJ_ANAK, TUNJ_BERAS, GURUKD, OPERATOR, TGL_UBAH, TUNJ_KERJA, TDTKD, '+
          'PEND_TERAKHIR, PEND_JURUSAN, V_JAB_STRUKTUR, POT_IWP, POT_TAPERUM, POT_SEWA_RUMAH, '+
          'POT_PANGAN, POT_KORPRI, POT_GAJI_LEBIH, POT_HUTANG, PEMBULATAN, PPH, TUNJ_UMUM, '+
          'TUNJ_UMUM_TAMB, TUNJ_OTSUS, TUNJ_DT, TUNJ_ASKES, TUNJ_PENGHASILAN, BIAYA_JABATAN, '+
          'BIAYA_PENSIUN, Persen_Gaji, IsTTU, AKTIF_KD, PTKP, AKTIF_TGL FROM PEGAWAI WHERE AKTIF_KD NOT IN (3,4,5,6)';
    if (not GModule.IsAllSKPD) then strSQL:= strSQL + ' and unitkd=' + QuotedStr(GModule.UnitKd);
    Ada:= not qryGajiPegawai.IsEmpty;

    if Ada then
      begin
        if (MessageDlg('Data sudah ada, proses ulang ?',mtConfirmation,[mbYes,mbNo],0)=mrYes) then
          begin
            sDel:= 'DELETE FROM PEGAWAI_GAJI '+
              'WHERE (TAHUN='''+qryJenis.FieldByName('Tahun').Asstring+''') AND '+
              '(BULAN='''+qryJenis.FieldByName('Bulan').Asstring+''') AND '+
              '(JENIS='+qryJenis.FieldByName('Jenis').Asstring+ ')';
            if (not GModule.IsAllSKPD) then
              sDel:= sDel + ' AND (UnitKd=''' + GModule.UnitKd + ''')';
            GModule.SQLExecute(sDel);
            Application.ProcessMessages;
          end
        else
          exit;
      end;
    if (qryJenis.FieldByName('Jenis').AsInteger=1) then                // Check jika gaji 13 sudah diproses pada tahun yang dipilih
      begin
        if (dmGaji.Gaji_13_SudahDiProses(qryJenis.FieldByName('Tahun').AsString)) then
          begin
            MessageDlg('Gaji-13 tahun '+qryJenis.FieldByName('Tahun').AsString+' sudah diproses. Proses dibatalkan', mtWarning, [mbOK], 0);
            qryJenis.Delete;
            Exit;
          end;
      end;
    //Ada:= False;
    //if (not Ada) then
    GModule.SQLExecute(strSQL);

    if (qryGajiPegawai.Active) then qryGajiPegawai.Requery()
    else qryGajiPegawai.Open;
    // -----
    //if (NonStandar) then
    //begin
      iCount:=0;
      nCount:=qryGajiPegawai.RecordCount;
      InProcess:=True;
      LBProcess.Caption:='Telah Diproses : 0 dari '+IntToStr(nCount);
      AktifKontrol;

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

          Inc(iCount);
          ProgressBar1.Position:= iCount;
          LBProcess.Caption:='Telah Diproses : '+IntToStr(iCount)+' dari '+IntToStr(nCount);
          Application.ProcessMessages;

          qryGajiPegawai.Next;
        end;
    //end;
    ShowMessage('Data Gaji Telah Diprosess.');
  except
  end;
  MasterFlag:=True;
  InProcess:=False;
  AktifKontrol;
  strSQL:= 'delete from pegawai_gaji where jenis=' + IntToStr(qryJenis.FieldByName('jenis').AsInteger) +
      ' and bulan=' + QuotedStr(qryJenis.FieldByName('bulan').AsString) +
      ' and tahun=' + QuotedStr(qryJenis.FieldByName('tahun').AsString) + ' and gaji_pokok<=0';
  GModule.SQLExecute(strSQL);
  qryGajiPegawai.Requery();
end;

procedure TfrmProses.qrygajipegawaiBeforePost(DataSet: TDataSet);
var
    pokok,tunjangan,potongan:double; // temp:double; temstr:string;
    oldround:TFPURoundingMode;
    persengaji:Double;
    accr, HitungKd:integer;
    nerror:integer;
    J:String;
    IsUDTUDW: Boolean;
begin

  accr:= 1;

  if qryJenisGaji.Active then qryJenisGaji.Requery()
  else  qryJenisGaji.Open;

  J:= JenisId[QryJenis.FieldByName('Jenis').AsInteger];
  if (qryJenisGaji.Locate('Jenis_Kd', J, [])) then
    accr:= qryJenisGaji.FieldByName('accress').AsInteger;

  IsUDTUDW:= ((QryJenis.FieldByName('Jenis').AsInteger=2)or(QryJenis.FieldByName('Jenis').AsInteger=3));
  {if (not(IsUDTUDW))and(MasterFlag) then
    begin
      if (qrygajipegawai.FieldByName('aktif_kd').AsInteger=4) or (qrygajipegawai.FieldByName('aktif_kd').AsInteger=5) then
        begin
          qrygajipegawai.Cancel;
          //MessageDlg('Pegawai tersebut tidak dimasukkan ke proses gaji induk, melainkan ke terusan.', mtWarning, [mbOK], 0);
          //Application.ProcessMessages;
          exit;
        end;
    end;
   } 
  oldround := GetRoundMode;
  SetRoundMode(rmNearest);
  if qryParam.Active then qryParam.Requery
  else qryParam.Open;

  With qryGajiPegawai do
  begin
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
          Memo1.Lines.Add('NIP:'+FieldByName('NIP').AsString+' Status pegawai harus diisi');
          nerror:=1;
      end;

      if  FieldByName('AKTIF_KD').AsString='' then
      begin
          Memo1.Lines.Add('NIP:'+FieldByName('NIP').AsString+' Status aktif harus diisi');
          nerror:=1;
      end;
// ---------- Boleh digaji
      //if (dmGaji.BolehDigaji(FieldByName('NIP').AsString, IntToStr(FieldByName('Aktif_Kd').AsInteger),
      //    qryJenis.FieldByName('Jenis').AsInteger, FieldByName('Aktif_Tgl').AsDateTime)) then
      //begin

      //------------------------------------------------------------------------
        persengaji:=qryAktif.FieldByName('Gaji_Pokok').asFloat;

        HitungKd:= qryAktif.FieldByName('HitungKd').AsInteger;

        if not(FieldByName('Aktif_Tgl').IsNull) then
          begin
            if (HitungKd=-1) and (not (IsUDTUDW))and
            (MonthsBetween(now,FieldByName('Aktif_Tgl').Value )> qryAktif.FieldByName('Accress').AsInteger) then
                persengaji:=0;
          end;

        if persenGaji=0 then nerror:=1;
      //------------------------------------------------------------------------

      //showmessage(J);
        if nerror=0 then
        begin
          FieldByName('GAJI_POKOK').Value:=
                dmGaji.GetGajiPokok(FieldByName('GOLONGANKD').Value,
                                    FieldByName('MASAKERJA').Value,
                                    FieldByName('Aktif_Kd').Value,
                                    FieldByName('STS_Pegawaikd').Value, JenisId[QryJenis.FieldByName('Jenis').AsInteger]);

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
              dmGaji.GetTunjStrukTural(FieldByName('JBT_STRUKTURKD').asstring, JenisId[QryJenis.FieldByName('Jenis').AsInteger], FieldByName('Aktif_Kd').AsString);

          if (qryAktif.FieldByName('Tunj_Fungsional').AsBoolean) then
            FieldByName('TUNJ_JAB_FUNGSI').Value:=
              dmGaji.GetTunjFungsional(FieldByName('JBT_FUNGSIKD').asstring, JenisId[QryJenis.FieldByName('Jenis').AsInteger], FieldByName('Aktif_Kd').AsString);

          if (qryAktif.FieldByName('Tunj_Umum_Tambah').AsBoolean) then
            FieldByName('TUNJ_UMUM_TAMB').Value:=
              dmGaji.GetTunjUmumTambahan(FieldByName('GOLONGANKD').asstring);

          if (qryAktif.FieldByName('Tunj_Otsus').AsBoolean) then
            FieldByName('TUNJ_OTSUS').Value:=
              dmGaji.GetTunjOtsus(FieldByName('GOLONGANKD').asstring, JenisId[QryJenis.FieldByName('Jenis').AsInteger], FieldByName('Aktif_Kd').AsString);

          if (qryAktif.FieldByName('Tunj_DT').AsBoolean) then
            FieldByName('TUNJ_DT').Value:=
              dmGaji.GetTunjDT(FieldByName('GOLONGANKD').asstring, JenisId[QryJenis.FieldByName('Jenis').AsInteger], FieldByName('Aktif_Kd').AsString);

          //if (qryAktif.FieldByName('Tunj_Askes').AsBoolean) then
      //  FieldByName('TUNJ_ASKES').Value:=dmGaji.GetTunjanganAskes(FieldByName('GOLONGANKD').asstring);
      if ((not qryAktif.FieldByName('Tunj_Askes').AsBoolean) or
        (FieldByName('Tunj_Askes').IsNull)) then
        FieldByName('TUNJ_ASKES').Value:= 0;
      //if (qryAktif.FieldByName('Tunj_Kerja').AsBoolean) then
      //  FieldByName('TUNJ_KERJA').Value:=dmGaji.GetTunjKerja(FieldByName('GOLONGANKD').asstring);
      if ((not qryAktif.FieldByName('Tunj_Kerja').AsBoolean) or
        (FieldByName('Tunj_Kerja').IsNull)) then
        FieldByName('TUNJ_KERJA').Value:= 0;
      //if (qryAktif.FieldByName('Tunj_PP').AsBoolean) then
      //  FieldByName('TUNJ_PENGHASILAN').Value:=dmGaji.GetTPP(FieldByName('GOLONGANKD').asstring);
      if ((not qryAktif.FieldByName('Tunj_PP').AsBoolean) or
        (FieldByName('TUNJ_PENGHASILAN').IsNull)) then
        FieldByName('TUNJ_PENGHASILAN').Value:= 0;

          if ((FieldByName('TUNJ_JAB_STRUKTUR').AsFloat+FieldByName('TUNJ_JAB_FUNGSI').AsFloat)=0) then
            FieldByName('TUNJ_UMUM').Value:=
              dmGaji.GetTunjanganUmum(FieldByName('GOLONGANKD').asstring, JenisId[QryJenis.FieldByName('Jenis').AsInteger], FieldByName('Aktif_Kd').AsString);

          if (qryFungsional.FieldByName('ISTunjUmum').AsBoolean)then
              FieldByName('TUNJ_UMUM').Value:=
                dmGaji.GetTunjanganUmum(FieldByName('GOLONGANKD').asstring, JenisId[QryJenis.FieldByName('Jenis').AsInteger], FieldByName('Aktif_Kd').AsString);

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
            round(dmGaji.GetIWP(pokok, JenisId[QryJenis.FieldByName('Jenis').AsInteger], FieldByName('Aktif_Kd').AsString));

          if qryAktif.FieldByName('Pot_Taperum').AsBoolean then
            FieldByName('POT_TAPERUM').Value:=
              dmGaji.GetTaperum(FieldByName('GOLONGANKD').Value, JenisId[QryJenis.FieldByName('Jenis').AsInteger], FieldByName('Aktif_Kd').AsString);

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
                FieldByName('POT_GAJI_LEBIH').Value+
                FieldByName('POT_HUTANG').Value;

          //LAIN-LAIN
          FieldByName('PEMBULATAN').Value:=100-StrToFloat(RightStr(FormatFloat('#,##0',pokok+tunjangan-potongan),2));
          if FieldByName('PEMBULATAN').Value=100 then FieldByName('PEMBULATAN').Value:=0;
          FieldByName('PPH').Value:=round(dmGaji.GetPPH((pokok+tunjangan-FieldByName('Biaya_Jabatan').Value-
                FieldByName('BIAYA_PENSIUN').Value)*12, 
                FieldByName('PTKP').AsInteger, 0,True, JenisId[QryJenis.FieldByName('Jenis').AsInteger], FieldByName('Aktif_Kd').AsString));
          if (IsUDTUDW) then
            begin
              //ShowMessage('Yes');
              FieldByName('TGLBYR_UDWUDT').Value:= NOW;
              FieldByName('GAJI_POKOK').Value:= FieldByName('GAJI_POKOK').Value * accr;
              FieldByName('TUNJ_JAB_STRUKTUR').Value:= FieldByName('TUNJ_JAB_STRUKTUR').Value * accr;
              FieldByName('TUNJ_JAB_FUNGSI').Value:= FieldByName('TUNJ_JAB_FUNGSI').Value * accr;
              FieldByName('TUNJ_UMUM').Value:= FieldByName('TUNJ_UMUM').Value * accr;
              FieldByName('TUNJ_UMUM_TAMB').Value:= FieldByName('TUNJ_UMUM_TAMB').Value * accr;
              FieldByName('TUNJ_OTSUS').Value:= FieldByName('TUNJ_OTSUS').Value * accr;
              FieldByName('TUNJ_ISTRI').Value:= FieldByName('TUNJ_ISTRI').Value * accr;

              FieldByName('TUNJ_ANAK').Value:= FieldByName('TUNJ_ANAK').Value * accr;

              FieldByName('TUNJ_DT').Value:= FieldByName('TUNJ_DT').Value * accr;

              FieldByName('TUNJ_ASKES').Value:= FieldByName('TUNJ_ASKES').Value * accr;
              FieldByName('TUNJ_KERJA').Value:= FieldByName('TUNJ_KERJA').Value * accr;
              FieldByName('TUNJ_PENGHASILAN').Value:= FieldByName('TUNJ_PENGHASILAN').Value * accr;
              FieldByName('TUNJ_BERAS').Value:= FieldByName('TUNJ_BERAS').Value * accr;
              //FieldByName('PEMBULATAN').Value:= FieldByName('PEMBULATAN').Value * accr;

              FieldByName('PPH').Value:= FieldByName('PPH').Value * accr;

              FieldByName('BIAYA_JABATAN').Value:= 0; //FieldByName('BIAYA_JABATAN').Value * accr;
              FieldByName('BIAYA_PENSIUN').Value:= 0; //FieldByName('BIAYA_PENSIUN').Value * accr;

              //POTONGANPOTONGAN
              FieldByName('POT_IWP').Value:= FieldByName('POT_IWP').Value * accr;
              FieldByName('POT_TAPERUM').Value:= FieldByName('POT_TAPERUM').Value * accr;
              FieldByName('POT_SEWA_RUMAH').Value:= FieldByName('POT_SEWA_RUMAH').Value * accr;
              FieldByName('POT_PANGAN').Value:= FieldByName('POT_PANGAN').Value * accr;
              FieldByName('POT_KORPRI').Value:= FieldByName('POT_KORPRI').Value * accr;
              FieldByName('POT_GAJI_LEBIH').Value:= FieldByName('POT_GAJI_LEBIH').Value * accr;
              FieldByName('POT_HUTANG').Value:= FieldByName('POT_HUTANG').Value * accr;

              pokok:=FieldByName('TUNJ_ISTRI').Value+FieldByName('GAJI_POKOK').Value+FieldByName('TUNJ_ANAK').Value;

              tunjangan:=FieldByName('TUNJ_JAB_STRUKTUR').Value+
                     FieldByName('TUNJ_JAB_FUNGSI').Value+
                     FieldByName('TUNJ_UMUM').Value+
                     FieldByName('TUNJ_UMUM_TAMB').Value+
                     FieldByName('TUNJ_KERJA').Value+
                     FieldByName('TUNJ_BERAS').Value;

              potongan:= FieldByName('POT_IWP').Value+
                FieldByName('POT_TAPERUM').Value+
                FieldByName('POT_SEWA_RUMAH').Value+
                FieldByName('POT_PANGAN').Value+
                FieldByName('POT_KORPRI').Value+
                FieldByName('POT_GAJI_LEBIH').Value+
                FieldByName('POT_HUTANG').Value;

              FieldByName('PEMBULATAN').Value:= 100 -
                    StrToFloat(RightStr(FormatFloat('#,##0',pokok+tunjangan-potongan),2));
              if FieldByName('PEMBULATAN').Value=100 then FieldByName('PEMBULATAN').Value:=0;
            end;
        end; //gajipokok
      end; //nerror
    //end; // Boleh digaji
  end; //qryGajiPegawai
  SetRoundMode(oldround);
end;

procedure TfrmProses.BitBtn1Click(Sender: TObject);
begin
  qrygajipegawai.Filtered:=False;
  if edtCari.Text<>'' then
  begin
    qrygajipegawai.Filter:='UnitKD='''+edtCari.Text+''' OR NIP Like ''%'+edtCari.Text+'%''  '+
        ' OR NAMA Like ''%'+edtCari.Text+'%''  ';
    qrygajipegawai.Filtered:=True;
  end;
end;

procedure TfrmProses.qrygajipegawaiAfterOpen(DataSet: TDataSet);
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

procedure TfrmProses.QryJENISAfterScroll(DataSet: TDataSet);
begin
  if (not (Dataset.State in[dsInsert, dsEdit])) then
  begin
    if (not qrygajipegawai.Active) then qrygajipegawai.Open;
    {qryGajiPegawai.Close;
    qryGajiPegawai.SQL.Text:='SELECT * FROM pegawai_gaji '+
      'WHERE (Tahun='''+qryJenis.FieldByName('Tahun').AsString+''') '+
      ' AND (Bulan='''+qryJenis.FieldByName('Bulan').AsString+''') '+
      ' AND (Jenis='+qryJenis.FieldByName('Jenis').AsString+') '+
      'ORDER BY tahun,bulan,jenis,nip,urut ';
    qryGajiPegawai.Open;}
    btnProses.Enabled:= not ((qryJenis.FieldByName('Jenis').AsInteger=2)
        or(qryJenis.FieldByName('Jenis').AsInteger=3)or qryJenis.IsEmpty);
    //dbNavigator2.Enabled:= not Dataset.FieldByName('posted').AsBoolean;
    if (Dataset.FieldByName('posted').AsBoolean) then
        btnProses.Enabled:= False;
  end;
  ButtonNavGaji;
  if (Dataset.IsEmpty) then qrygajipegawai.Close;
  ShowUDWUDT;
end;

procedure TfrmProses.qrygajipegawaiCalcFields(DataSet: TDataSet);
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

procedure TfrmProses.qrygajipegawaiAfterPost(DataSet: TDataSet);
//var NonStandar:Boolean;
begin
  //NonStandar:=(qryJenis.FieldByName('Jenis').AsInteger>0);
  //if ((MasterFlag)AND(not NonStandar)) then
  if (MasterFlag) then
  begin
    if (MessageDlg('Update Data Master Pegawai.?', mtConfirmation, [mbYes, mbNo], 0)= IDYES) then
      begin
        With Dataset do
          begin
            DMPegawai.UpdateMasterPegawai(FieldByName('Tahun').AsString,
                FieldByName('Bulan').AsString, IntToStr(FieldByName('Jenis').AsInteger),
                FieldByName('NIP').AsString);
          end;
      end; 
  end;
end;

procedure TfrmProses.QryJENISAfterPost(DataSet: TDataSet);
begin
  {qryGajiPegawai.Close;
    qryGajiPegawai.SQL.Text:='SELECT * FROM pegawai_gaji '+
      'WHERE (Tahun='''+qryJenis.FieldByName('Tahun').AsString+''') '+
      ' AND (Bulan='''+qryJenis.FieldByName('Bulan').AsString+''') '+
      ' AND (Jenis='+qryJenis.FieldByName('Jenis').AsString+') '+
      'ORDER BY tahun,bulan,jenis,nip,urut ';
    qryGajiPegawai.Open;}
  //  btnProses.Enabled:= not((Dataset.FieldByName('JENIS').AsInteger=2) or (Dataset.FieldByName('JENIS').AsInteger=3));
  btnProses.Enabled:= not ((qryJenis.FieldByName('Jenis').AsInteger=2)
        or(qryJenis.FieldByName('Jenis').AsInteger=3)or qryJenis.IsEmpty);
    //dbNavigator2.Enabled:= not Dataset.FieldByName('posted').AsBoolean;
    ButtonNavGaji;
    if (Dataset.FieldByName('posted').AsBoolean) then
        btnProses.Enabled:= False;
  if (qrygajipegawai.Active) then qrygajipegawai.Requery()
  else qrygajipegawai.Open;
  ShowUDWUDT;
end;

procedure TfrmProses.edtCariKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13) then BitBtn1.Click;
end;

procedure TfrmProses.qrygajipegawaiAfterInsert(DataSet: TDataSet);
var S, N, Msg:String;
    I, M, J:Integer;
begin
  N:= '';
  J:= qryJenis.FieldByName('Jenis').AsInteger;
  if (J=2)then
    N:=CariPegawaiDlg(qryJenis.FieldByName('jenis').AsInteger, ' d.aktif_kd not in(3,5,6)  ', qryJenis.FieldByName('bulan').AsString)
  else if (J=3) then
    N:=CariPegawaiDlg(qryJenis.FieldByName('jenis').AsInteger, ' d.aktif_kd not in(3,4,6) ', qryJenis.FieldByName('bulan').AsString)
  else
    N:=CariPegawaiDlg(qryJenis.FieldByName('jenis').AsInteger, ' d.aktif_kd not in(3,4,5,6) ', qryJenis.FieldByName('bulan').AsString);
  if N='' then
    Dataset.Cancel
  else
    begin
      if (J=2) or (J=3) then
        begin
          S:= 'select jenis, nip, Nama, aktif_kd from pegawai_gaji where nip=' + QuotedStr(N) + ' and (aktif_kd=4 or aktif_kd=5) and jenis=' + IntToStr(J);
          qryUDWUDT.Close;
          qryUDWUDT.SQL.Text:= S;
          qryUDWUDT.Open;
          if (not(qryUDWUDT.IsEmpty)) then
            begin
              if (J=2) then
                Msg:= 'UDW '
              else
                Msg:= 'UDT ';
              Msg:= Msg + 'untuk Pegawai dengan nama "' + qryUDWUDT.FieldByName('Nama').AsString + '" telah diproses.' +
                #13 + 'Aplikasi tidak dapat melakukan proses ulang.';
              MessageDlg(Msg, mtWarning, [mbOK], 0);
              Dataset.Cancel;
              exit;
            end;
          Dataset.FieldByName('TGLBYR_UDWUDT').Value:= NOW;
        end
      else
        begin
          S:= 'select nip, Nama, aktif_kd from pegawai where nip=' + QuotedStr(N);
          qryUDWUDT.Close;
          qryUDWUDT.SQL.Text:= S;
          qryUDWUDT.Open;
          if (qryUDWUDT.IsEmpty) then begin Dataset.Cancel; exit; end;
          if (qryUDWUDT.FieldByName('aktif_kd').AsInteger=4)or(qryUDWUDT.FieldByName('aktif_kd').AsInteger=5) then
            begin
              MessageDlg('Pegawai tersebut tidak dimasukkan ke proses gaji induk, melainkan ke terusan.', mtWarning, [mbOK], 0);
              Dataset.Cancel;
              exit;
            end;
        end;
      if (DMPegawai.TempPegawai.Active) then DMPegawai.TempPegawai.Requery()
      else DMPegawai.TempPegawai.Open;
      with DMPegawai.TempPegawai do
        begin
          if (not Locate('nip', N, [])) then
            Dataset.Cancel
          else
            begin
              {Dataset.FieldByName('Tahun').Value:= qryJenis.FieldByName('Tahun').Value;
              Dataset.FieldByName('Bulan').Value:= qryJenis.FieldByName('Bulan').Value;
              Dataset.FieldByName('Jenis').Value:= qryJenis.FieldByName('Jenis').Value;}
              Dataset.FieldByName('Urut').Value:= 0;
              M:= FieldCount - 1;
              for I:= 0 to M do
                begin
                  //if not(UPPERCASE(Fields[I].FieldName)='SUB_UNIT') then
                  {if (Dataset.FindField(Fields[I].FieldName)<>nil) then
                    begin
                      if ((Fields[I].DataType=ftFloat)or(Fields[I].DataType=ftBCD))then
                        Dataset.FieldByName(Fields[I].FieldName).Value:= 0
                      else
                        Dataset.FieldByName(Fields[I].FieldName).Value:= Fields[I].Value;
                    end; }
                  if (Dataset.FindField(Fields[I].FieldName)<>nil) then
                    begin
                        //if ((Fields[I].DataType=ftInteger)or(Fields[I].DataType=ftLargeInt)) then
                        //  Dataset.FieldByName(Fields[I].FieldName).AsInteger:= Fields[I].AsInteger
                        //else
                          Dataset.FieldByName(Fields[I].FieldName).Value:= Fields[I].Value;

                    end;
                end;

              if (J=2) then
                Dataset.FieldByName('AKTIF_KD').Value:= 4
              else if (J=3) then
                Dataset.FieldByName('AKTIF_KD').Value:= 5;
            end;
        end;
    end;
end;

procedure TfrmProses.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if (not (Key in ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9', #8])) then Key:=#0;
end;

procedure TfrmProses.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TfrmProses.FormShow(Sender: TObject);
begin
  AktifKontrol;
  FilterSKPD;
  PageControl1.ActivePageIndex:= 1;
end;

procedure TfrmProses.QryJENISAfterEdit(DataSet: TDataSet);
begin
  btnProses.Enabled:= False;
  ButtonNavGaji;
end;

procedure TfrmProses.QryJENISAfterCancel(DataSet: TDataSet);
begin
  btnProses.Enabled:= not ((qryJenis.FieldByName('Jenis').AsInteger=2)
        or(qryJenis.FieldByName('Jenis').AsInteger=3)or qryJenis.IsEmpty);
    //dbNavigator2.Enabled:= not Dataset.FieldByName('posted').AsBoolean;
    ButtonNavGaji;
    if (Dataset.FieldByName('posted').AsBoolean) then
        btnProses.Enabled:= False;
  ShowUDWUDT;
end;

procedure TfrmProses.QryJENISAfterDelete(DataSet: TDataSet);
begin
  btnProses.Enabled:= not ((qryJenis.FieldByName('Jenis').AsInteger=2)
        or(qryJenis.FieldByName('Jenis').AsInteger=3)or qryJenis.IsEmpty);
    //dbNavigator2.Enabled:= not Dataset.FieldByName('posted').AsBoolean;
    ButtonNavGaji;
    if (Dataset.FieldByName('posted').AsBoolean) then
        btnProses.Enabled:= False;
end;

end.
