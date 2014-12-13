unit _SKPP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, DB, ADODB, Mask, DBCtrls, ToolEdit, RXDBCtrl,
  RxLookup, Buttons, ComCtrls;

type
  TfrmSKPP = class(TForm)
    Panel1: TPanel;
    qrySKPP: TADOQuery;
    dsSKPP: TDataSource;
    qryBulan: TADOQuery;
    dsBulan: TDataSource;
    Panel4: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    btnBrowse: TButton;
    DBEdit3: TDBEdit;
    DBDateEdit2: TDBDateEdit;
    DBDateEdit1: TDBDateEdit;
    DBEdit4: TDBEdit;
    DBDateEdit3: TDBDateEdit;
    RxDBLookupCombo1: TRxDBLookupCombo;
    DBEdit6: TDBEdit;
    Panel5: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel3: TPanel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit35: TDBEdit;
    DBEdit36: TDBEdit;
    DBEdit37: TDBEdit;
    DBImage1: TDBImage;
    DBEdit39: TDBEdit;
    DBEdit40: TDBEdit;
    DBEdit41: TDBEdit;
    DBEdit57: TDBEdit;
    DBEdit58: TDBEdit;
    DBEdit59: TDBEdit;
    pnlGaji: TPanel;
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
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
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
    DBEdit64: TDBEdit;
    DBEdit65: TDBEdit;
    DBNavigator1: TDBNavigator;
    Pegawai: TADOQuery;
    dsPegawai: TDataSource;
    DBEdit7: TDBEdit;
    DBEdit66: TDBEdit;
    DBEdit67: TDBEdit;
    DBEdit68: TDBEdit;
    DBEdit69: TDBEdit;
    DBEdit70: TDBEdit;
    DBEdit71: TDBEdit;
    DBEdit72: TDBEdit;
    DBEdit73: TDBEdit;
    DBEdit74: TDBEdit;
    DBEdit75: TDBEdit;
    DBEdit76: TDBEdit;
    DBText1: TDBText;
    Pembilang: TATTerbilang;
    Label11: TLabel;
    qryAktif: TADOQuery;
    dsAktif: TDataSource;
    RxDBLookupCombo2: TRxDBLookupCombo;
    dsGaji: TDataSource;
    qryGaji: TADOQuery;
    qryGajiTAHUN: TStringField;
    qryGajiBULAN: TStringField;
    qryGajiJENIS: TSmallintField;
    qryGajiURUT: TSmallintField;
    qryGajiNIP: TStringField;
    qryGajiUNITKD: TStringField;
    qryGajiSUB: TSmallintField;
    qryGajiNAMA: TStringField;
    qryGajiTGL_LAHIR: TDateTimeField;
    qryGajiTMP_LAHIR: TStringField;
    qryGajiJNS_KELAMIN: TStringField;
    qryGajiBANK: TStringField;
    qryGajiREKENING: TStringField;
    qryGajiNPWP: TStringField;
    qryGajiNO_PEGAWAI: TStringField;
    qryGajiNOJJP: TStringField;
    qryGajiALAMAT: TStringField;
    qryGajiNAMASI: TStringField;
    qryGajiSTS_PEGAWAIKD: TStringField;
    qryGajiTMT_PEGAWAI: TDateTimeField;
    qryGajiSTS_KWN: TStringField;
    qryGajiSTS_SIPIL: TStringField;
    qryGajiAGAMA: TStringField;
    qryGajiJML_SI: TIntegerField;
    qryGajiJML_ANAK: TIntegerField;
    qryGajiGOLONGANKD: TStringField;
    qryGajiTMT_GOLONGAN: TDateTimeField;
    qryGajiMASAKERJA: TIntegerField;
    qryGajiJBT_FUNGSIKD: TStringField;
    qryGajiJBT_STRUKTURKD: TStringField;
    qryGajiTMT_JABATAN: TDateTimeField;
    qryGajiTUNJ_JAB_FUNGSI: TBCDField;
    qryGajiTUNJ_JAB_STRUKTUR: TBCDField;
    qryGajiGAJI_POKOK: TIntegerField;
    qryGajiTMT_GAJI_POKOK: TDateTimeField;
    qryGajiTUNJ_ISTRI: TBCDField;
    qryGajiTUNJ_ANAK: TBCDField;
    qryGajiTUNJ_BERAS: TBCDField;
    qryGajiGURUKD: TStringField;
    qryGajiOPERATOR: TStringField;
    qryGajiTGL_UBAH: TDateTimeField;
    qryGajiPIC_FOTO: TBlobField;
    qryGajiTUNJ_KERJA: TBCDField;
    qryGajiTDTKD: TStringField;
    qryGajiPEND_TERAKHIR: TStringField;
    qryGajiPEND_JURUSAN: TStringField;
    qryGajiV_JAB_STRUKTUR: TStringField;
    qryGajiPOT_IWP: TBCDField;
    qryGajiPOT_TAPERUM: TBCDField;
    qryGajiPOT_SEWA_RUMAH: TBCDField;
    qryGajiPOT_PANGAN: TBCDField;
    qryGajiPOT_KORPRI: TBCDField;
    qryGajiPOT_GAJI_LEBIH: TBCDField;
    qryGajiPOT_HUTANG: TBCDField;
    qryGajiPEMBULATAN: TBCDField;
    qryGajiPPH: TBCDField;
    qryGajiTUNJ_UMUM: TBCDField;
    qryGajiTUNJ_UMUM_TAMB: TBCDField;
    qryGajiTUNJ_OTSUS: TBCDField;
    qryGajiTUNJ_DT: TBCDField;
    qryGajiTUNJ_ASKES: TBCDField;
    qryGajiTUNJ_PENGHASILAN: TBCDField;
    qryGajiBIAYA_JABATAN: TBCDField;
    qryGajiBIAYA_PENSIUN: TBCDField;
    qryGajiPersen_Gaji: TBCDField;
    qryGajiIsTTU: TSmallintField;
    qryGajiAKTIF_KD: TIntegerField;
    qryGajiPTKP: TIntegerField;
    qryGajiAKTIF_TGL: TDateTimeField;
    qryGajiGajiDanTunjangan: TFloatField;
    qryGajiGajiBersih: TFloatField;
    qryGajiPotongan: TFloatField;
    qryTahun: TADOQuery;
    dsTahun: TDataSource;
    rxCoTahun: TRxDBLookupCombo;
    Label74: TLabel;
    DBEdit5: TDBEdit;
    Label75: TLabel;
    DBDateEdit4: TDBDateEdit;
    Label76: TLabel;
    DBEdit77: TDBEdit;
    procedure btnBrowseClick(Sender: TObject);
    procedure PegawaiAfterOpen(DataSet: TDataSet);
    procedure qrySKPPAfterOpen(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure DBEdit2Change(Sender: TObject);
    procedure DBEdit6Change(Sender: TObject);
    procedure qryGajiCalcFields(DataSet: TDataSet);
    procedure qryGajiAfterOpen(DataSet: TDataSet);
    procedure qrySKPPAfterPost(DataSet: TDataSet);
    procedure PegawaiAfterScroll(DataSet: TDataSet);
    procedure RxDBLookupCombo1Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qrySKPPAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
    PgwSQL: String;
    procedure OpenPegawai;
  public
    { Public declarations }
  end;

procedure SKPPDlg;

var
  frmSKPP: TfrmSKPP;

implementation

{$R *.dfm}

uses GlobalModule, CariPegawai;

procedure SKPPDlg;
begin
  frmSKPP:=TfrmSKPP.Create(Nil);
end;

procedure TfrmSKPP.OpenPegawai;
//var S, R:String;
begin
  //R:= ' where Pegawai.NIP= ' + QuotedStr(DBEdit2.Text);
  //Pegawai.Close;
  //S:= PgwSQL;
  //S:= StringReplace(S, '--{where}', R, []);
  //Pegawai.SQL.Text:= S;
  //Pegawai.Open;
  if (Pegawai.IsEmpty) then exit;
  if (qrySKPP.State in [dsInsert]) then
    qrySKPP.FieldByName('TMT_AKTIF').AsDateTime:=
        Pegawai.FieldByName('AKTIF_TGL').AsDateTime;
end;

procedure TfrmSKPP.btnBrowseClick(Sender: TObject);
var N:String;
begin
  if (not (qrySKPP.State in[dsInsert, dsEdit])) then exit;
  N:=CariPegawaiDlg;
  if (N<>'') then qrySKPP.FieldByName('NIP').AsString:=N;
end;

procedure TfrmSKPP.PegawaiAfterOpen(DataSet: TDataSet);
begin
  if (qryGaji.Active) then qryGaji.Requery()
  else qryGaji.Open;
end;

procedure TfrmSKPP.qrySKPPAfterOpen(DataSet: TDataSet);
var i:integer;
begin
  with  DataSet do
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
end;

procedure TfrmSKPP.FormCreate(Sender: TObject);
begin
  PgwSQL:= Pegawai.SQL.Text;
  qryBulan.Open;
  qrySKPP.Open;
  qryAktif.Open;
  qryTahun.Open;
  if (qryTahun.RecordCount>8) then
    rxCoTahun.DropDownCount:=8
  else if (qryTahun.RecordCount=0) then
    rxCoTahun.DropDownCount:=1
  else
    rxCoTahun.DropDownCount:=qryTahun.RecordCount;
end;

procedure TfrmSKPP.DBEdit2Change(Sender: TObject);
begin
  OpenPegawai;
end;

procedure TfrmSKPP.DBEdit6Change(Sender: TObject);
begin
  if (qrySKPP.State in[dsInsert, dsEdit]) then
    begin
      if (DBEdit6.Text='') or (StrToInt(DBEdit6.Text)<1) then
        qrySKPP.FieldByName('PERSEKOT_BILANG').AsString:=''
      else
        begin
          Pembilang.Number:= StrToInt(DBEdit6.Text);
          qrySKPP.FieldByName('PERSEKOT_BILANG').AsString:= Pembilang.Terbilang;
        end;
    end;
end;

procedure TfrmSKPP.qryGajiCalcFields(DataSet: TDataSet);
begin
  with qryGaji do
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

procedure TfrmSKPP.qryGajiAfterOpen(DataSet: TDataSet);
var i:integer;
begin
  with  qryGaji do
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
end;

procedure TfrmSKPP.qrySKPPAfterPost(DataSet: TDataSet);
var S: String;
begin
  S:= 'update pegawai set aktif_kd=' + IntToStr(Dataset.FieldByName('Aktif_Kd').AsInteger) +
      ', Aktif_Tgl = ' + QuotedStr(DateToStr(Dataset.FieldByName('TMT_Aktif').AsDateTime)) +
      '  where nip= ' + QuotedStr(Dataset.FieldByName('NIP').AsString);
  try
    GModule.conn.Execute(S);
    if (Pegawai.Active) then Pegawai.Requery
    else Pegawai.Open;
  except
  end;
end;

procedure TfrmSKPP.PegawaiAfterScroll(DataSet: TDataSet);
//var S:String;
begin
  {S:= 'SELECT top 1 * FROM pegawai_gaji ' +
      'WHERE (NIP=' + QuotedStr(Dataset.FieldByName('NIP').AsString) + ')' +
      ' AND (jenis=0) AND (gaji_pokok>0) ' +
      ' AND (Tahun=' + QuotedStr(qrySKPP.FieldByName('Tahun_Pindah').AsString) + ')' +
      ' AND (bulan=' + QuotedStr(qrySKPP.FieldByName('Bulan_Pindah').AsString) + ')' +
      ' ORDER BY tahun desc ,bulan desc';
  qryGaji.Close;
  qryGaji.SQL.Text:= S;
  qryGaji.Open;}
  if (qryGaji.Active) then qryGaji.Requery()
  else qryGaji.Open;
end;

procedure TfrmSKPP.RxDBLookupCombo1Change(Sender: TObject);
begin
  OpenPegawai;
end;

procedure TfrmSKPP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TfrmSKPP.qrySKPPAfterScroll(DataSet: TDataSet);
begin
  if (Pegawai.Active) then Pegawai.Requery
    else Pegawai.Open;
end;

end.
