unit _Terusan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, ADODB, Grids, DBGrids, RxLookup, Mask,
  DBCtrls, DateUtils, Math,StrUtils, Buttons, ToolEdit, RXDBCtrl, ComCtrls;

type
  TfrmTerusan = class(TForm)
    Memo1: TMemo;
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
    Panel4: TPanel;
    Panel5: TPanel;
    Label68: TLabel;
    edtCari: TEdit;
    BitBtn1: TBitBtn;
    pProses: TPanel;
    LBProcess: TLabel;
    ProgressBar1: TProgressBar;
    QryJENIS: TADOQuery;
    dsJenis: TDataSource;
    qryBulan: TADOQuery;
    dsBulan: TDataSource;
    qryJenisGaji: TADOQuery;
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
    qrygajipegawaiTGL_GAJI: TDateTimeField;
    qrygajipegawaiTMT_FUNGSI: TDateTimeField;
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
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBGrid2: TDBGrid;
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
    DBNavigator2: TDBNavigator;
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
    procedure FormCreate(Sender: TObject);
    procedure QryJENISAfterInsert(DataSet: TDataSet);
    procedure btnProsesClick(Sender: TObject);
    procedure qrygajipegawaiBeforePost(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure qrygajipegawaiAfterOpen(DataSet: TDataSet);
    procedure QryJENISAfterScroll(DataSet: TDataSet);
    procedure qrygajipegawaiCalcFields(DataSet: TDataSet);
    procedure qrygajipegawaiAfterPost(DataSet: TDataSet);
    procedure edtCariKeyPress(Sender: TObject; var Key: Char);
    procedure qrygajipegawaiAfterInsert(DataSet: TDataSet);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure QryJENISBeforePost(DataSet: TDataSet);
    procedure QryJENISAfterPost(DataSet: TDataSet);
    procedure QryJENISAfterCancel(DataSet: TDataSet);
    procedure QryJENISAfterDelete(DataSet: TDataSet);
    procedure QryJENISAfterEdit(DataSet: TDataSet);
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

procedure Terusandlg;

var
  frmTerusan: TfrmTerusan;

implementation

uses _GajiDM, GlobalModule, PegawaiModule, CariPegawai;

{$R *.dfm}

procedure Terusandlg;
begin
  frmTerusan:=TfrmTerusan.Create(Nil);
end;

procedure TfrmTerusan.AktifKontrol;
begin
  Panel2.Enabled:=(not InProcess);
  Panel4.Enabled:=(not InProcess);
  PageControl1.Enabled:=(not InProcess);
  pProses.Visible:=InProcess;
end;

procedure TfrmTerusan.FilterSKPD;
begin
  qrySKPD.Filtered:= False;
  if not(GModule.IsAllSKPD) then
    begin
      qrySKPD.Filter:= 'unitkd=' + QuotedStr(GModule.UnitKd);
      qrySKPD.Filtered:= True;
    end;
end;

procedure TfrmTerusan.QueryGaji;
var S: String;
begin
  S:= DefQuery;
  if (not (GModule.IsAllSKPD)) then
    S:= StringReplace(S, 'AND (UNITKD=''<unitkd>'')', 'AND (UNITKD=''' + GModule.UnitKd + ''')', [rfReplaceAll])
  else
    S:= StringReplace(S, 'AND (UNITKD=''<unitkd>'')', '', [rfReplaceAll]);
  qrygajipegawai.SQL.Text:= S;
end;

procedure TfrmTerusan.ButtonNavGaji;
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

procedure TfrmTerusan.FormCreate(Sender: TObject);
begin
  DefQuery:= qrygajipegawai.SQL.Text;
  QueryGaji;
  MasterFlag:=True;
  qryJenis.SQL.Text:= StringReplace(qryJenis.SQL.Text, 'THN', GModule.Tahun, [rfReplaceAll]);
  qryJenis.OPen;
  QryBulan.Open;
  InProcess:=False;
end;

procedure TfrmTerusan.QryJENISAfterInsert(DataSet: TDataSet);
begin
  with qryJenis do
  begin
    FieldByName('Tahun').Value:=GModule.Tahun;
    FieldByName('Bulan').Value:=FormatFloat('00',1+MonthOf(Now));
    FieldByName('Tanggal_Buat').Value:=Now;
    FieldByName('POSTED').Value:= False;
  end;
  ButtonNavGaji;
end;

procedure TfrmTerusan.btnProsesClick(Sender: TObject);
var strSQL, sDel:string;
    iCount, nCount:Integer;
    //NonStandar:Boolean;
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
          'BIAYA_PENSIUN, Persen_Gaji, IsTTU, AKTIF_KD, PTKP, AKTIF_TGL FROM PEGAWAI WHERE AKTIF_KD IN(4,5)';
    if (not GModule.IsAllSKPD) then strSQL:= strSQL + ' and unitkd=' + QuotedStr(GModule.UnitKd);
    if not qryGajiPegawai.IsEmpty then
      begin
        if MessageDlg('Data sudah ada, proses ulang ?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
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

    GModule.SQLExecute(strSQL);
    qryGajiPegawai.Requery();
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
  strSQL:= 'delete from pegawai_gaji where jenis=6 and bulan=' + QuotedStr(qryJenis.FieldByName('bulan').AsString) +
      ' and tahun=' + QuotedStr(qryJenis.FieldByName('tahun').AsString) + ' and gaji_pokok<1';
  GModule.SQLExecute(strSQL);
  qryGajiPegawai.Requery();
end;

procedure TfrmTerusan.qrygajipegawaiBeforePost(DataSet: TDataSet);
var
    pokok,tunjangan,potongan:double; // temp:double; temstr:string;
    oldround:TFPURoundingMode;
    persengaji:Double;
    //HitungKd:integer;
    accr, Trsn, Y1, Y2: Integer;
    nerror:integer;
    //Bts: TDateTime;
    //Btw,
    Bln1, Bln2: Integer; //, Thn1, Thn2: Integer;
begin

  oldround := GetRoundMode;
  SetRoundMode(rmNearest);
  if qryParam.Active then qryParam.Requery
  else qryParam.Open;

  if qryJenisGaji.Active then qryJenisGaji.Requery()
  else  qryJenisGaji.Open;

  if qryAktif.Active then qryAktif.Requery()
  else  qryAktif.Open;

  //Bts:= StrToDate(qryJenis.FieldByName('Bulan').AsString + '/01/' + qryJenis.FieldByName('Tahun').AsString);
  
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

      qryAktif.Locate('aktif_kd', FieldByName('AKTIF_KD').AsString, []);

      //------------------------------------------------------------------------
        persengaji:=qryAktif.FieldByName('Gaji_Pokok').asFloat;

        //HitungKd:= qryAktif.FieldByName('HitungKd').AsInteger;
        Accr:= qryAktif.FieldByName('Accress').AsInteger;
        
        {if not(FieldByName('Aktif_Tgl').IsNull) then
          begin
            //Btw:= MonthsBetween(Bts, FieldByName('Aktif_Tgl').Value);
            Bln1:= MonthOf(FieldByName('Aktif_Tgl').Value);
            Thn1:= YearOf(FieldByName('Aktif_Tgl').Value);
            Bln2:= StrToInt(qryJenis.FieldByName('Bulan').AsString);
            Thn2:= StrToInt(qryJenis.FieldByName('Tahun').AsString);
            {if (Thn1=Thn2) then
              begin
                if (Bln1>Bln2) then
                  Btw:= -1
                else
                  Btw:= Bln2 - Bln1;
              end
            else if (Thn1<Thn2) then
              begin
                Bln2:= Bln2 + 12;
                Btw:= Bln2-Bln1;
              end
            else
              Btw:= -1;
            if (HitungKd=-1) and (Btw>Accr) then
              begin
                persengaji:=0;
                //ShowMessage('Error');
              end;
            if (Btw<1) then persengaji:=0;
              //if (HitungKd=-1) and
              //(MonthsBetween(now,FieldByName('Aktif_Tgl').Value )+1> qryAktif.FieldByName('Accress').AsInteger) then
              //  persengaji:=0;
            //ShowMessage(IntToStr(Accr) + ' -- ' + IntToStr(Btw));
          end;                                                       }

        if persenGaji=0 then nerror:=1;
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
            if ((Trsn>accr)or(Trsn<0))  then nerror:= 1;
            //ShowMessage(IntToStr(Trsn));
          end;
        //abort;
        //exit;
        if nerror=0 then
        begin
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
                FieldByName('POT_GAJI_LEBIH').Value+
                FieldByName('POT_HUTANG').Value;

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

procedure TfrmTerusan.BitBtn1Click(Sender: TObject);
begin
  qrygajipegawai.Filtered:=False;
  if edtCari.Text<>'' then
  begin
    qrygajipegawai.Filter:='UnitKD='''+edtCari.Text+''' OR NIP Like '''+edtCari.Text+'%''  '+
        ' OR NAMA Like '''+edtCari.Text+'%''  ';
    qrygajipegawai.Filtered:=True;
  end;
end;

procedure TfrmTerusan.qrygajipegawaiAfterOpen(DataSet: TDataSet);
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

procedure TfrmTerusan.QryJENISAfterScroll(DataSet: TDataSet);
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
    btnProses.Enabled:= not ((qryJenis.FieldByName('Jenis').AsInteger=2)or(qryJenis.FieldByName('Jenis').AsInteger=3))
  end;
  ButtonNavGaji;
  if (Dataset.IsEmpty) then qrygajipegawai.Close;
end;

procedure TfrmTerusan.qrygajipegawaiCalcFields(DataSet: TDataSet);
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

procedure TfrmTerusan.qrygajipegawaiAfterPost(DataSet: TDataSet);
begin
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
    if (Dataset.FieldByName('GAJI_POKOK').AsFloat<=0) then Dataset.Delete;
  end;
end;

procedure TfrmTerusan.edtCariKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13) then BitBtn1.Click;
end;

procedure TfrmTerusan.qrygajipegawaiAfterInsert(DataSet: TDataSet);
var N:String;
begin
  N:=CariPegawaiDlg(qryJenis.FieldByName('jenis').AsInteger, ' d.aktif_kd in(4,5) ', qryJenis.FieldByName('bulan').AsString);
  if N='' then
    Dataset.Cancel
  else
    begin
      if (DMPegawai.TempPegawai.Active) then DMPegawai.TempPegawai.Requery()
      else DMPegawai.TempPegawai.Open;
      with DMPegawai.TempPegawai do
        begin
          if (not Locate('nip', N, [])) then
            Dataset.Cancel
          else
            begin
              Dataset.FieldByName('Tahun').Value:= qryJenis.FieldByName('Tahun').Value;
              Dataset.FieldByName('Bulan').Value:= qryJenis.FieldByName('Bulan').Value;
              Dataset.FieldByName('Jenis').Value:= qryJenis.FieldByName('Jenis').Value;
              Dataset.FieldByName('Urut').Value:= 0;
              Dataset.FieldByName('NIP').Value:= FieldByName('NIP').Value;
              Dataset.FieldByName('UNITKD').Value:= FieldByName('UNITKD').Value;
              Dataset.FieldByName('SUB').Value:= FieldByName('SUB').Value;
              Dataset.FieldByName('NAMA').Value:= FieldByName('NAMA').Value;
              Dataset.FieldByName('TGL_LAHIR').Value:= FieldByName('TGL_LAHIR').Value;
              Dataset.FieldByName('TMP_LAHIR').Value:= FieldByName('TMP_LAHIR').Value;
              Dataset.FieldByName('JNS_KELAMIN').Value:= FieldByName('JNS_KELAMIN').Value;
              Dataset.FieldByName('BANK').Value:= FieldByName('BANK').Value;
              Dataset.FieldByName('REKENING').Value:= FieldByName('REKENING').Value;
              Dataset.FieldByName('NPWP').Value:= FieldByName('NO_PEGAWAI').Value;
              Dataset.FieldByName('NOJJP').Value:= FieldByName('NOJJP').Value;
              Dataset.FieldByName('ALAMAT').Value:= FieldByName('ALAMAT').Value;
              Dataset.FieldByName('NAMASI').Value:= FieldByName('NAMASI').Value;
              Dataset.FieldByName('STS_PEGAWAIKD').Value:= FieldByName('STS_PEGAWAIKD').Value;
              Dataset.FieldByName('TMT_PEGAWAI').Value:= FieldByName('TMT_PEGAWAI').Value;
              Dataset.FieldByName('STS_KWN').Value:= FieldByName('STS_KWN').Value;
              Dataset.FieldByName('STS_SIPIL').Value:= FieldByName('STS_SIPIL').Value;
              Dataset.FieldByName('AGAMA').Value:= FieldByName('AGAMA').Value;
              Dataset.FieldByName('JML_SI').Value:= FieldByName('JML_SI').Value;
              Dataset.FieldByName('JML_ANAK').Value:= FieldByName('JML_ANAK').Value;
              Dataset.FieldByName('GOLONGANKD').Value:= FieldByName('GOLONGANKD').Value;
              Dataset.FieldByName('TMT_GOLONGAN').Value:= FieldByName('TMT_GOLONGAN').Value;
              Dataset.FieldByName('MASAKERJA').Value:= FieldByName('MASAKERJA').Value;
              Dataset.FieldByName('JBT_FUNGSIKD').Value:= FieldByName('JBT_FUNGSIKD').Value;
              Dataset.FieldByName('JBT_STRUKTURKD').Value:= FieldByName('JBT_STRUKTURKD').Value;
              Dataset.FieldByName('TMT_JABATAN').Value:= FieldByName('TMT_JABATAN').Value;
              Dataset.FieldByName('TUNJ_JAB_FUNGSI').Value:= FieldByName('TUNJ_JAB_FUNGSI').Value;
              Dataset.FieldByName('TUNJ_JAB_STRUKTUR').Value:= FieldByName('TUNJ_JAB_STRUKTUR').Value;
              Dataset.FieldByName('GAJI_POKOK').Value:= FieldByName('GAJI_POKOK').Value;
              Dataset.FieldByName('TMT_GAJI_POKOK').Value:= FieldByName('TMT_GAJI_POKOK').Value;
              Dataset.FieldByName('TUNJ_ISTRI').Value:= FieldByName('TUNJ_ISTRI').Value;
              Dataset.FieldByName('TUNJ_ANAK').Value:= FieldByName('TUNJ_ANAK').Value;
              Dataset.FieldByName('TUNJ_BERAS').Value:= FieldByName('TUNJ_BERAS').Value;
              Dataset.FieldByName('GURUKD').Value:= FieldByName('GURUKD').Value;
              Dataset.FieldByName('OPERATOR').Value:= FieldByName('OPERATOR').Value;
              Dataset.FieldByName('TGL_UBAH').Value:= FieldByName('TGL_UBAH').Value;
              Dataset.FieldByName('PIC_FOTO').Value:= FieldByName('PIC_FOTO').Value;
              Dataset.FieldByName('TUNJ_KERJA').Value:= FieldByName('TUNJ_KERJA').Value;
              Dataset.FieldByName('TDTKD').Value:= FieldByName('TDTKD').Value;
              Dataset.FieldByName('PEND_TERAKHIR').Value:= FieldByName('PEND_TERAKHIR').Value;
              Dataset.FieldByName('PEND_JURUSAN').Value:= FieldByName('PEND_JURUSAN').Value;
              Dataset.FieldByName('V_JAB_STRUKTUR').Value:= FieldByName('V_JAB_STRUKTUR').Value;
              Dataset.FieldByName('POT_IWP').Value:= FieldByName('POT_TAPERUM').Value;
              Dataset.FieldByName('POT_SEWA_RUMAH').Value:= FieldByName('POT_SEWA_RUMAH').Value;
              Dataset.FieldByName('POT_PANGAN').Value:= FieldByName('POT_PANGAN').Value;
              Dataset.FieldByName('POT_KORPRI').Value:= FieldByName('POT_KORPRI').Value;
              Dataset.FieldByName('POT_GAJI_LEBIH').Value:= FieldByName('POT_GAJI_LEBIH').Value;
              Dataset.FieldByName('POT_HUTANG').Value:= FieldByName('POT_HUTANG').Value;
              Dataset.FieldByName('PEMBULATAN').Value:= FieldByName('PEMBULATAN').Value;
              Dataset.FieldByName('PPH').Value:= FieldByName('PPH').Value;
              Dataset.FieldByName('TUNJ_UMUM').Value:= FieldByName('TUNJ_UMUM').Value;
              Dataset.FieldByName('TUNJ_UMUM_TAMB').Value:= FieldByName('TUNJ_UMUM_TAMB').Value;
              Dataset.FieldByName('TUNJ_OTSUS').Value:= FieldByName('TUNJ_OTSUS').Value;
              Dataset.FieldByName('TUNJ_DT').Value:= FieldByName('TUNJ_DT').Value;
              Dataset.FieldByName('TUNJ_ASKES').Value:= FieldByName('TUNJ_ASKES').Value;
              Dataset.FieldByName('TUNJ_PENGHASILAN').Value:= FieldByName('TUNJ_PENGHASILAN').Value;
              Dataset.FieldByName('BIAYA_JABATAN').Value:= FieldByName('BIAYA_JABATAN').Value;
              Dataset.FieldByName('BIAYA_PENSIUN').Value:= FieldByName('BIAYA_PENSIUN').Value;
              Dataset.FieldByName('PERSEN_GAJI').Value:= FieldByName('PERSEN_GAJI').Value;
              Dataset.FieldByName('ISTTU').Value:= FieldByName('ISTTU').Value;
              Dataset.FieldByName('AKTIF_KD').Value:= FieldByName('AKTIF_KD').Value;
              Dataset.FieldByName('PTKP').Value:= FieldByName('PTKP').Value;
              Dataset.FieldByName('AKTIF_TGL').Value:= FieldByName('AKTIF_TGL').Value;
            end;
        end;
    end;
end;

procedure TfrmTerusan.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if (not (Key in ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9', #8])) then Key:=#0;
end;

procedure TfrmTerusan.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TfrmTerusan.FormShow(Sender: TObject);
begin
  AktifKontrol;
  FilterSKPD;
end;

procedure TfrmTerusan.QryJENISBeforePost(DataSet: TDataSet);
begin
  Dataset.FieldByName('JENIS').AsInteger:= 6;
end;

procedure TfrmTerusan.QryJENISAfterPost(DataSet: TDataSet);
begin
  if (qrygajipegawai.Active) then qrygajipegawai.Requery()
  else qrygajipegawai.Open;
  ButtonNavGaji;
end;

procedure TfrmTerusan.QryJENISAfterCancel(DataSet: TDataSet);
begin
  ButtonNavGaji;
end;

procedure TfrmTerusan.QryJENISAfterDelete(DataSet: TDataSet);
begin
  ButtonNavGaji;
end;

procedure TfrmTerusan.QryJENISAfterEdit(DataSet: TDataSet);
begin
  ButtonNavGaji;
end;

end.
