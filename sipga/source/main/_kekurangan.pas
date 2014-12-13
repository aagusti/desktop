unit _Kekurangan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, ToolEdit, RXDBCtrl, DBCtrls, ComCtrls, Buttons,
  StdCtrls, ExtCtrls, RxLookup, Mask, Grids, DBGrids, DateUtils, Math,StrUtils;

type
  TfrmKurangGaji = class(TForm)
    Memo1: TMemo;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Uraian: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    btnProses: TButton;
    DBGrid1: TDBGrid;
    DBEdit1: TDBEdit;
    RxDBLookupCombo1: TRxDBLookupCombo;
    DBEdit2: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBNavigator1: TDBNavigator;
    DBEdit64: TDBEdit;
    RxDBLookupCombo2: TRxDBLookupCombo;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBGrid2: TDBGrid;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    QryJENIS: TADOQuery;
    dsJenis: TDataSource;
    qryBulan: TADOQuery;
    dsBulan: TDataSource;
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
    dsGajiPegawai: TDataSource;
    qryJenisGaji: TADOQuery;
    qrygajipegawaiTGL_RAPEL: TDateTimeField;
    qrygajipegawaiTGL_TMT: TDateTimeField;
    qrygajipegawaiTMT_FUNGSI: TDateTimeField;
    Panel4: TPanel;
    Panel5: TPanel;
    Label68: TLabel;
    edtCari: TEdit;
    BitBtn1: TBitBtn;
    pProses: TPanel;
    LBProcess: TLabel;
    ProgressBar1: TProgressBar;
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
    qryGajiSTD: TADOQuery;
    procedure QryJENISAfterInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure QryJENISAfterScroll(DataSet: TDataSet);
    procedure QryJENISAfterPost(DataSet: TDataSet);
    procedure qrygajipegawaiAfterInsert(DataSet: TDataSet);
    procedure qrygajipegawaiAfterOpen(DataSet: TDataSet);
    procedure qrygajipegawaiAfterPost(DataSet: TDataSet);
    procedure qrygajipegawaiCalcFields(DataSet: TDataSet);
    procedure qrygajipegawaiBeforePost(DataSet: TDataSet);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit64KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure edtCariKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure QryJENISAfterEdit(DataSet: TDataSet);
    procedure QryJENISAfterDelete(DataSet: TDataSet);
    procedure QryJENISAfterCancel(DataSet: TDataSet);
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

procedure Kekurangandlg;

var
  frmKurangGaji: TfrmKurangGaji;

implementation

{$R *.dfm}

uses _GajiDM, GlobalModule, PegawaiModule, CariPegawai;

procedure Kekurangandlg;
begin
  frmKurangGaji:=TfrmKurangGaji.Create(Nil);
end;

procedure TfrmKurangGaji.AktifKontrol;
begin
  Panel2.Enabled:=(not InProcess);
  Panel4.Enabled:=(not InProcess);
  PageControl1.Enabled:=(not InProcess);
  pProses.Visible:=InProcess;
end;

procedure TfrmKurangGaji.FilterSKPD;
begin
  qrySKPD.Filtered:= False;
  if not(GModule.IsAllSKPD) then
    begin
      qrySKPD.Filter:= 'unitkd=' + QuotedStr(GModule.UnitKd);
      qrySKPD.Filtered:= True;
    end;
end;

procedure TfrmKurangGaji.QueryGaji;
var S: String;
begin
  S:= DefQuery;
  if (not (GModule.IsAllSKPD)) then
    S:= StringReplace(S, 'AND (UNITKD=''<unitkd>'')', 'AND (UNITKD=''' + GModule.UnitKd + ''')', [rfReplaceAll])
  else
    S:= StringReplace(S, 'AND (UNITKD=''<unitkd>'')', '', [rfReplaceAll]);
  qrygajipegawai.SQL.Text:= S;
end;

procedure TfrmKurangGaji.ButtonNavGaji;
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

procedure TfrmKurangGaji.QryJENISAfterInsert(DataSet: TDataSet);
begin
  with Dataset do
  begin
    FieldByName('Tahun').Value:=GModule.Tahun;
    FieldByName('Bulan').Value:=FormatFloat('00',1+MonthOf(Now));
    FieldByName('Tanggal_Buat').Value:=Now;
    FieldByName('TM_Tahun').Value:=GModule.Tahun;
    FieldByName('TM_Bulan').Value:=FormatFloat('00',1+MonthOf(Now));
    FieldByName('Jenis').AsInteger:=15;
    FieldByName('Posted').Value:= False;
  end;
  ButtonNavGaji;
end;

procedure TfrmKurangGaji.FormCreate(Sender: TObject);
begin
  DefQuery:= qrygajipegawai.SQL.Text;
  QueryGaji;
  MasterFlag:=True;
  qryJenis.SQL.Text:= StringReplace(qryJenis.SQL.Text, 'THN', GModule.Tahun, [rfReplaceAll]);
  qryJenis.OPen;
  QryBulan.Open;
  InProcess:=False;
end;

procedure TfrmKurangGaji.QryJENISAfterScroll(DataSet: TDataSet);
begin
  if (not (Dataset.State in[dsInsert, dsEdit])) then
  begin
    if (qrygajipegawai.Active) then qrygajipegawai.Requery()
    else qrygajipegawai.Open;
  end;
  ButtonNavGaji;
  if (Dataset.IsEmpty) then qrygajipegawai.Close;
end;

procedure TfrmKurangGaji.QryJENISAfterPost(DataSet: TDataSet);
begin
    if (qrygajipegawai.Active) then qrygajipegawai.Requery()
    else qrygajipegawai.Open;
    ButtonNavGaji;
end;

procedure TfrmKurangGaji.qrygajipegawaiAfterInsert(DataSet: TDataSet);
var N:String;
    I, M:Integer;
begin
  //N:=CariPegawaiDlg('', qryJenis.FieldByName('bulan').AsString, true);
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

procedure TfrmKurangGaji.qrygajipegawaiAfterOpen(DataSet: TDataSet);
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

procedure TfrmKurangGaji.qrygajipegawaiAfterPost(DataSet: TDataSet);
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
end;

procedure TfrmKurangGaji.qrygajipegawaiCalcFields(DataSet: TDataSet);
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

procedure TfrmKurangGaji.qrygajipegawaiBeforePost(DataSet: TDataSet);
var
    pokok,tunjangan,potongan:double;
    oldround:TFPURoundingMode;
    persengaji:Double;
    HitungKd:integer;
    nerror:integer;
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
      FieldByName('GAJI_POKOK').Value:=0;
      FieldByName('TUNJ_JAB_STRUKTUR').Value:=0;
      FieldByName('TUNJ_JAB_FUNGSI').Value:=0;
      FieldByName('TUNJ_UMUM').Value:=0;
      FieldByName('TUNJ_UMUM_TAMB').Value:=0;
      FieldByName('TUNJ_OTSUS').Value:=0;
      FieldByName('TUNJ_ISTRI').Value:=0;

      FieldByName('TUNJ_ANAK').Value:=0;

      FieldByName('TUNJ_DT').Value:=0;

      FieldByName('TUNJ_ASKES').Value:=0;
      FieldByName('TUNJ_KERJA').Value:=0;
      FieldByName('TUNJ_PENGHASILAN').Value:=0;
      FieldByName('TUNJ_BERAS').Value:=0;
      FieldByName('PEMBULATAN').Value:=0;

      FieldByName('PPH').Value:=0;

      FieldByName('BIAYA_JABATAN').Value:=0;
      FieldByName('BIAYA_PENSIUN').Value:=0;

      //POTONGANPOTONGAN
      FieldByName('POT_IWP').Value:=0;
      FieldByName('POT_TAPERUM').Value:=0;
      FieldByName('POT_SEWA_RUMAH').Value:=0;
      FieldByName('POT_PANGAN').Value:=0;
      FieldByName('POT_KORPRI').Value:=0;
      FieldByName('POT_GAJI_LEBIH').Value:=0;
      FieldByName('POT_HUTANG').Value:=0;
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

      //showmessage(J);
        if nerror=0 then
        begin
          FieldByName('GAJI_POKOK').Value:=
                dmGaji.GetGajiPokok(FieldByName('GOLONGANKD').Value,
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
              dmGaji.GetTunjStrukTural(FieldByName('JBT_STRUKTURKD').asstring, 'STD', FieldByName('Aktif_Kd').AsString, True);

          if (qryAktif.FieldByName('Tunj_Fungsional').AsBoolean) then
            FieldByName('TUNJ_JAB_FUNGSI').Value:=
              dmGaji.GetTunjFungsional(FieldByName('JBT_FUNGSIKD').asstring, 'STD', FieldByName('Aktif_Kd').AsString, True);

          if (qryAktif.FieldByName('Tunj_Umum_Tambah').AsBoolean) then
            FieldByName('TUNJ_UMUM_TAMB').Value:=
              dmGaji.GetTunjUmumTambahan(FieldByName('GOLONGANKD').asstring);

          if (qryAktif.FieldByName('Tunj_Otsus').AsBoolean) then
            FieldByName('TUNJ_OTSUS').Value:=
              dmGaji.GetTunjOtsus(FieldByName('GOLONGANKD').asstring, 'STD', FieldByName('Aktif_Kd').AsString, True);

          if (qryAktif.FieldByName('Tunj_DT').AsBoolean) then
            FieldByName('TUNJ_DT').Value:=
              dmGaji.GetTunjDT(FieldByName('GOLONGANKD').asstring, 'STD', FieldByName('Aktif_Kd').AsString, True);

          if (qryAktif.FieldByName('Tunj_Askes').AsBoolean) then
            FieldByName('TUNJ_ASKES').Value:=
              dmGaji.GetTunjanganAskes(FieldByName('GOLONGANKD').asstring);

          if (qryAktif.FieldByName('Tunj_Kerja').AsBoolean) then
            FieldByName('TUNJ_KERJA').Value:=dmGaji.GetTunjKerja(FieldByName('GOLONGANKD').asstring);

          if (qryAktif.FieldByName('Tunj_PP').AsBoolean) then
            FieldByName('TUNJ_PENGHASILAN').Value:=dmGaji.GetTPP(FieldByName('GOLONGANKD').asstring);

          if ((FieldByName('TUNJ_JAB_STRUKTUR').AsFloat+FieldByName('TUNJ_JAB_FUNGSI').AsFloat)=0) then
            FieldByName('TUNJ_UMUM').Value:=
              dmGaji.GetTunjanganUmum(FieldByName('GOLONGANKD').asstring, 'STD', FieldByName('Aktif_Kd').AsString, True);

          if (qryFungsional.FieldByName('ISTunjUmum').AsBoolean)then
              FieldByName('TUNJ_UMUM').Value:=
                dmGaji.GetTunjanganUmum(FieldByName('GOLONGANKD').asstring, 'STD', FieldByName('Aktif_Kd').AsString, True);

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
          //if (LastIWP>FieldByName('POT_IWP').Value) then GajiLebih:= GajiLebih + (LastIWP - FieldByName('POT_IWP').Value);

          if qryAktif.FieldByName('Pot_Taperum').AsBoolean then
            FieldByName('POT_TAPERUM').Value:=
              dmGaji.GetTaperum(FieldByName('GOLONGANKD').Value, 'STD', FieldByName('Aktif_Kd').AsString, True);

          FieldByName('POT_SEWA_RUMAH').Value:=dmGaji.GetSewaRumah;
          FieldByName('POT_PANGAN').Value:=dmGaji.GetPotonganPangan;
          FieldByName('POT_KORPRI').Value:=dmGaji.GetPOtonganKorpri;
          FieldByName('POT_GAJI_LEBIH').Value:=dmGaji.GetKelebihanGaji;
          FieldByName('POT_HUTANG').Value:=dmGaji.GetHutangLebih;

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
                FieldByName('PTKP').AsInteger, 0,True, 'STD', FieldByName('Aktif_Kd').AsString));
                //FieldByName('JML_SI').AsInteger, FieldByName('JML_ANAK').AsInteger
        end; //gajipokok
      end; //nerror
    //end; // Boleh digaji
  end; //qryGajiPegawai
  SetRoundMode(oldround);
end;

procedure TfrmKurangGaji.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if (not (Key in ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'])) then Key:=#0;
end;

procedure TfrmKurangGaji.DBEdit64KeyPress(Sender: TObject; var Key: Char);
begin
  if (not (Key in ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'])) then Key:=#0;
end;

procedure TfrmKurangGaji.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TfrmKurangGaji.BitBtn1Click(Sender: TObject);
begin
  qrygajipegawai.Filtered:=False;
  if edtCari.Text<>'' then
  begin
    qrygajipegawai.Filter:='UnitKD='''+edtCari.Text+''' OR NIP Like '''+edtCari.Text+'%''  '+
        ' OR NAMA Like '''+edtCari.Text+'%''  ';
    qrygajipegawai.Filtered:=True;
  end;
end;

procedure TfrmKurangGaji.edtCariKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13) then BitBtn1.Click;
end;

procedure TfrmKurangGaji.FormShow(Sender: TObject);
begin
  AktifKontrol;
  FilterSKPD;
end;

procedure TfrmKurangGaji.QryJENISAfterEdit(DataSet: TDataSet);
begin
  ButtonNavGaji;
end;

procedure TfrmKurangGaji.QryJENISAfterDelete(DataSet: TDataSet);
begin
  ButtonNavGaji;
end;

procedure TfrmKurangGaji.QryJENISAfterCancel(DataSet: TDataSet);
begin
  ButtonNavGaji;
end;

end.
