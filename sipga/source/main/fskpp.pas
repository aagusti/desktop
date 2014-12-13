unit FSKPP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, ExtCtrls, StdCtrls, Buttons, DBCtrls, Mask, ToolEdit,
  RXDBCtrl, Grids, DBGrids, SMDBGrid, DateUtils, StrUtils, Menus;

type
  TfrmSKPP = class(TForm)
    qrySKPP: TADOQuery;
    dsSKPP: TDataSource;
    qryGaji: TADOQuery;
    qryGajiTAHUN: TStringField;
    qryGajiBULAN: TStringField;
    qryGajiJENIS: TSmallintField;
    qryGajiNIP: TStringField;
    qryGajiUNITKD: TStringField;
    qryGajiNAMA: TStringField;
    qryGajiTGL_LAHIR: TDateTimeField;
    qryGajiTMP_LAHIR: TStringField;
    qryGajiTGL_BUP: TDateTimeField;
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
    qryGajiJML_SI: TSmallintField;
    qryGajiJML_ANAK: TSmallintField;
    qryGajiPTKP: TIntegerField;
    qryGajiPEND_TERAKHIR: TStringField;
    qryGajiPEND_JURUSAN: TStringField;
    qryGajiV_JAB_STRUKTUR: TStringField;
    qryGajiGOLONGANKD: TStringField;
    qryGajiTMT_GOLONGAN: TDateTimeField;
    qryGajiMASAKERJA: TIntegerField;
    qryGajiTMT_GAJI_POKOK: TDateTimeField;
    qryGajiJBT_FUNGSIKD: TStringField;
    qryGajiTMT_FUNGSI: TDateTimeField;
    qryGajiJBT_STRUKTURKD: TStringField;
    qryGajiTMT_JABATAN: TDateTimeField;
    qryGajiAKTIF_KD: TIntegerField;
    qryGajiAKTIF_TGL: TDateTimeField;
    qryGajiGURUKD: TStringField;
    qryGajiTDTKD: TStringField;
    qryGajiPIC_FOTO: TBlobField;
    qryGajiGAJI_POKOK: TFloatField;
    qryGajiTUNJ_ISTRI: TFloatField;
    qryGajiTUNJ_ANAK: TFloatField;
    qryGajiTUNJ_BERAS: TFloatField;
    qryGajiTUNJ_JAB_STRUKTUR: TFloatField;
    qryGajiTUNJ_JAB_FUNGSI: TFloatField;
    qryGajiTUNJ_KERJA: TFloatField;
    qryGajiTUNJ_UMUM: TFloatField;
    qryGajiTUNJ_UMUM_TAMB: TFloatField;
    qryGajiTUNJ_OTSUS: TFloatField;
    qryGajiTUNJ_DT: TFloatField;
    qryGajiTUNJ_ASKES: TFloatField;
    qryGajiTUNJ_PENGHASILAN: TFloatField;
    qryGajiPEMBULATAN: TFloatField;
    qryGajiPPH: TFloatField;
    qryGajiPOT_IWP: TFloatField;
    qryGajiPOT_TAPERUM: TFloatField;
    qryGajiPOT_SEWA_RUMAH: TFloatField;
    qryGajiPOT_PANGAN: TFloatField;
    qryGajiPOT_KORPRI: TFloatField;
    qryGajiPOT_GAJI_LEBIH: TFloatField;
    qryGajiPOT_HUTANG: TFloatField;
    qryGajiBIAYA_JABATAN: TFloatField;
    qryGajiBIAYA_PENSIUN: TFloatField;
    qryGajiPersen_Gaji: TFloatField;
    qryGajiIsTTU: TSmallintField;
    qryGajiISBAYARGJ: TBooleanField;
    qryGajiOPERATOR: TStringField;
    qryGajiTGL_UBAH: TDateTimeField;
    qryGajiGOLPGW: TStringField;
    qryGajiGajiBersih: TFloatField;
    qryGajiPotongan: TFloatField;
    qryGajiGajiDanTunjangan: TFloatField;
    qryGajiNIP_LAMA: TStringField;
    dsGaji: TDataSource;
    qrySKPD: TADOQuery;
    qryFungsional: TADOQuery;
    qryStruktur: TADOQuery;
    qryGolongan: TADOQuery;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Label6: TLabel;
    txtCari: TEdit;
    Panel11: TPanel;
    btnClose: TSpeedButton;
    Panel10: TPanel;
    Panel1: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    DBDateEdit2: TDBDateEdit;
    DBEdit2: TDBEdit;
    Label7: TLabel;
    LookJenis: TDBLookupComboBox;
    LB1: TLabel;
    TglPensiun: TDBDateEdit;
    LB2: TLabel;
    qryUnit: TADOQuery;
    sdUnit: TDataSource;
    LookSKPD: TDBLookupComboBox;
    qryJenisSKPP: TADOQuery;
    dsJenisSKPP: TDataSource;
    Panel5: TPanel;
    qryGajiSKPD: TStringField;
    qryGajiJabatan: TStringField;
    Panel6: TPanel;
    Label8: TLabel;
    DBEdit3: TDBEdit;
    btnCari: TBitBtn;
    Label9: TLabel;
    DBEdit4: TDBEdit;
    Label10: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Label11: TLabel;
    Label12: TLabel;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    Label13: TLabel;
    Panel7: TPanel;
    Label30: TLabel;
    DBEdit30: TDBEdit;
    DBEdit32: TDBEdit;
    Label32: TLabel;
    Label33: TLabel;
    DBEdit33: TDBEdit;
    DBEdit29: TDBEdit;
    Label28: TLabel;
    Label29: TLabel;
    DBEdit28: TDBEdit;
    DBEdit34: TDBEdit;
    Label34: TLabel;
    Label14: TLabel;
    DBEdit42: TDBEdit;
    DBEdit43: TDBEdit;
    Label43: TLabel;
    Label48: TLabel;
    DBEdit10: TDBEdit;
    Label49: TLabel;
    DBEdit16: TDBEdit;
    Label55: TLabel;
    DBEdit51: TDBEdit;
    Label58: TLabel;
    DBEdit54: TDBEdit;
    DBEdit53: TDBEdit;
    Label57: TLabel;
    Label60: TLabel;
    DBEdit56: TDBEdit;
    Panel8: TPanel;
    Label56: TLabel;
    DBEdit52: TDBEdit;
    GroupBox1: TGroupBox;
    Label15: TLabel;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    Label16: TLabel;
    DBEdit13: TDBEdit;
    qryGaji13: TADOQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    SmallintField1: TSmallintField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    DateTimeField1: TDateTimeField;
    StringField6: TStringField;
    DateTimeField2: TDateTimeField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    DateTimeField3: TDateTimeField;
    StringField16: TStringField;
    StringField17: TStringField;
    StringField18: TStringField;
    SmallintField2: TSmallintField;
    SmallintField3: TSmallintField;
    IntegerField1: TIntegerField;
    StringField19: TStringField;
    StringField20: TStringField;
    StringField21: TStringField;
    StringField22: TStringField;
    DateTimeField4: TDateTimeField;
    IntegerField2: TIntegerField;
    DateTimeField5: TDateTimeField;
    StringField23: TStringField;
    DateTimeField6: TDateTimeField;
    StringField24: TStringField;
    DateTimeField7: TDateTimeField;
    IntegerField3: TIntegerField;
    DateTimeField8: TDateTimeField;
    StringField25: TStringField;
    StringField26: TStringField;
    BlobField1: TBlobField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    FloatField7: TFloatField;
    FloatField8: TFloatField;
    FloatField9: TFloatField;
    FloatField10: TFloatField;
    FloatField11: TFloatField;
    FloatField12: TFloatField;
    FloatField13: TFloatField;
    FloatField14: TFloatField;
    FloatField15: TFloatField;
    FloatField16: TFloatField;
    FloatField17: TFloatField;
    FloatField18: TFloatField;
    FloatField19: TFloatField;
    FloatField20: TFloatField;
    FloatField21: TFloatField;
    FloatField22: TFloatField;
    FloatField23: TFloatField;
    FloatField24: TFloatField;
    FloatField25: TFloatField;
    SmallintField4: TSmallintField;
    BooleanField1: TBooleanField;
    StringField27: TStringField;
    DateTimeField9: TDateTimeField;
    StringField28: TStringField;
    FloatField26: TFloatField;
    FloatField27: TFloatField;
    FloatField28: TFloatField;
    StringField29: TStringField;
    dsGaji13: TDataSource;
    qryBulan: TADOQuery;
    qryGaji13BulanNm: TStringField;
    Panel9: TPanel;
    Panel13: TPanel;
    Label17: TLabel;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    SMDBGrid1: TSMDBGrid;
    qrySKPPDet: TADOQuery;
    dsSKPPDet: TDataSource;
    btnPrint: TSpeedButton;
    qryCari: TADOQuery;
    Label22: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    dsBulanGaji: TDataSource;
    qryBulanGaji: TADOQuery;
    pmF1: TPopupMenu;
    DesignEdit1: TMenuItem;
    dbNav: TDBNavigator;
    Label67: TLabel;
    tglTTD: TDateEdit;
    Label1: TLabel;
    coBulan: TComboBox;
    Label2: TLabel;
    coJenis: TComboBox;
    LB3: TLabel;
    DLuarDaerah: TDBEdit;
    procedure btnCloseClick(Sender: TObject);
    procedure qryGajiAfterOpen(DataSet: TDataSet);
    procedure qryGajiCalcFields(DataSet: TDataSet);
    procedure qryGaji13AfterOpen(DataSet: TDataSet);
    procedure qrySKPPDetBeforeInsert(DataSet: TDataSet);
    procedure qrySKPPBeforeInsert(DataSet: TDataSet);
    procedure btnCariClick(Sender: TObject);
    procedure txtCariChange(Sender: TObject);
    procedure qrySKPPAfterInsert(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qrySKPPAfterOpen(DataSet: TDataSet);
    procedure LookJenisClick(Sender: TObject);
    procedure qrySKPPAfterScroll(DataSet: TDataSet);
    procedure qrySKPPBeforePost(DataSet: TDataSet);
    procedure btnPrintClick(Sender: TObject);
    procedure DesignEdit1Click(Sender: TObject);
    procedure qrySKPPAfterPost(DataSet: TDataSet);
    procedure qrySKPPAfterCancel(DataSet: TDataSet);
    procedure qrySKPPAfterDelete(DataSet: TDataSet);
  private
    { Private declarations }
    BaruBuka: Boolean;
    procedure RequerySKPP;
    function CariData(strSQL: String; TargetKolom: Integer = 0): String;
    procedure VisibleControls;
  public
    { Public declarations }
  end;

Procedure SKPPDlg;

var
  frmSKPP: TfrmSKPP;

implementation

{$R *.dfm}

uses GlobalModule, CariPegawai, ReportsModule;

Procedure SKPPDlg;
begin
  if (frmSKPP=nil) then frmSKPP:= TfrmSKPP.Create(Nil);
  frmSKPP.Show;
  frmSKPP:= nil;
end;

procedure TfrmSKPP.RequerySKPP;
var strSQL, strWhere, strSKPD, strCari, strFilter: String;
begin
  if (BaruBuka) then exit;
  strSQL:= 'select * from SKPP where (tahun=' + QuotedStr(Gmodule.Tahun) + ') ';
  strSKPD:= GModule.GetFilterSKPD;
  if (txtCari.Text<>'') then
      strCari:= ' ((NIP Like ' + QuotedStr(txtCari.Text + '%') + ') or ' +
                ' (SKPPNo Like ' + QuotedStr(txtCari.Text + '%') + ')) '
  else strCari:= '';
  strFilter:= '';
  if (coBulan.ItemIndex>0) then strFilter:= ' (Month(SKPPTgl)=' + IntToStr(coBulan.ItemIndex) + ') ';
  if (coJenis.ItemIndex>0) then
    begin
      if (strFilter<>'') then strFilter:= strFilter + ' and (Jns_SKPP=' + IntToStr(coJenis.ItemIndex) + ') '
      else strFilter:= ' (Jns_SKPP=' + IntToStr(coJenis.ItemIndex) + ') ';
    end;
  strWhere:= strSKPD;
  if (strCari<>'') then
    begin
      if (strWhere<>'') then strWhere:= strWhere + ' and ' + strCari
      else strWhere:= strCari;
    end;
  if (strFilter<>'') then
    begin
      if (strWhere<>'') then strWhere:= strWhere + ' and ' + strFilter
      else strWhere:= strFilter;
    end;
  if (strWhere<>'') then strWhere:= ' and ' + strWhere;
  strSQL:= strSQL + ' ' + strWhere + ' order by SKPPTgl, SKPPNo, Jns_SKPP ';
  qrySKPP.Close;
  qrySKPP.SQL.Text:= strSQL;
  qrySKPP.Open;
end;

function TfrmSKPP.CariData(strSQL: String; TargetKolom: Integer = 0): String;
begin
  Result:= '';
  qryCari.Close;
  qryCari.SQL.Text:= strSQL;
  qryCari.Open;
  Result:= qryCari.Fields[TargetKolom].AsString;
end;

procedure TfrmSKPP.VisibleControls;
begin
  Lb1.Visible:= (qrySKPP.FieldByName('JNS_SKPP').AsInteger=1);
  Lb2.Visible:= (qrySKPP.FieldByName('JNS_SKPP').AsInteger=3);
  TglPensiun.Visible:= (qrySKPP.FieldByName('JNS_SKPP').AsInteger=1);
  LookSKPD.Visible:= (qrySKPP.FieldByName('JNS_SKPP').AsInteger=3);
  Lb3.Visible:= (qrySKPP.FieldByName('JNS_SKPP').AsInteger=2);
  DLuarDaerah.Visible:= (qrySKPP.FieldByName('JNS_SKPP').AsInteger=2);
end;

procedure TfrmSKPP.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmSKPP.qryGajiAfterOpen(DataSet: TDataSet);
var i:integer;
begin
  with  Dataset do
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
      else  if (Fields[i].DataType = ftDateTime) then
      begin
        TDateTimeField(Fields[i]).DisplayFormat := 'dd-mm-yyyy';
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
  qrySKPD.Open;
  qryFungsional.Open;
  qryStruktur.Open;
  qryGolongan.Open;
end;

procedure TfrmSKPP.qryGajiCalcFields(DataSet: TDataSet);
var Jbt: String;
begin
  if (TDataset(Dataset).Tag<>13) then
    begin
      if (qryStruktur.Active) then qryStruktur.Requery
      else qryStruktur.Open;
      if (qryFungsional.Active) then qryFungsional.Requery
      else qryFungsional.Open;
      Jbt:= 'Staff';
      if (Dataset.FieldByName('Tunj_Jab_Struktur').AsFloat>0) then
        begin
          if (qryStruktur.Locate('Jbt_StrukturKd',
            Dataset.FieldByName('Jbt_strukturKd').AsString, [loPartialKey])) then
            Jbt:= qryStruktur.FieldByName('Uraian').AsString;
        end
      else if (Dataset.FieldByName('Tunj_Jab_Fungsi').AsFloat>0) then
        begin
          if (qryFungsional.Locate('Jbt_FungsiKd',
            Dataset.FieldByName('Jbt_FungsiKd').AsString, [loPartialKey])) then
            Jbt:= qryFungsional.FieldByName('Jbt_Fungsi').AsString;
        end
      else Jbt:= 'Staff';
      Dataset.FieldByName('Jabatan').AsString:= Jbt;
    end;
  with Dataset do
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

procedure TfrmSKPP.qryGaji13AfterOpen(DataSet: TDataSet);
var i:integer;
begin
  with  Dataset do
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
      else  if (Fields[i].DataType = ftDateTime) then
      begin
        TDateTimeField(Fields[i]).DisplayFormat := 'dd-mm-yyyy';
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
  qryBulan.Open;
end;

procedure TfrmSKPP.qrySKPPDetBeforeInsert(DataSet: TDataSet);
begin
  if (qrySKPP.State in[dsInsert, dsEdit]) then
    begin
      try
        qrySKPP.Post;
      except
        on Ex: Exception do
          begin
            MessageDlg('Error...!!!' + #13#10 + Ex.Message, mtError, [mbOK], 0);
            Abort;
          end;
      end;
    end
  else
    begin
      if (qrySKPP.IsEmpty) then begin abort; exit; end;
    end;
end;

procedure TfrmSKPP.qrySKPPBeforeInsert(DataSet: TDataSet);
begin
  if (qrySKPPDet.State in[dsInsert, dsEdit]) then
    begin
      if (MessageDlg('Simpan Perubahan Pada Daftar Hutang ?', mtConfirmation, [mbYes, mbNo], 0)=IDYes) then
        begin
          try
            qrySKPPDet.Post;
          except
            on Ex: Exception do
              begin
                MessageDlg('Error...!!!' + #13#10 + Ex.Message, mtError, [mbOK], 0);
                Abort;
              end;
          end;
        end;
    end;
end;

procedure TfrmSKPP.btnCariClick(Sender: TObject);
var N, S: String;
begin
  if (not (qrySKPP.State in[dsInsert, dsEdit])) then exit;
  case qrySKPP.FieldByName('JNS_SKPP').AsInteger of
  1     : N:= CariPegawaiSKPPDlg('(d.aktif_kd in(3, 4, 5))');
  2, 3  : N:= CariPegawaiSKPPDlg('(d.aktif_kd = 6)');
  else N:= '';
  end;
  if (N<>'') then
    begin
      qrySKPP.FieldByName('NIP').AsString:= N;
      qrySKPP.FieldByName('Tembusan2').AsString:=
        CariData('select nama from pegawai where nip=' + QuotedStr(N));
      S:= CariData('select UnitKd from pegawai where nip=' + QuotedStr(N));
      qrySKPP.FieldByName('UnitKd').AsString:= S;
      qrySKPP.FieldByName('Tembusan4').AsString:=
          CariData('select UnitNm from tblUnit where UnitKd=' +
            QuotedStr(LeftStr(S, 7)));
    end;
end;

procedure TfrmSKPP.txtCariChange(Sender: TObject);
begin
  RequerySKPP;
end;

procedure TfrmSKPP.qrySKPPAfterInsert(DataSet: TDataSet);
begin
  if (coBulan.ItemIndex>0) then Dataset.FieldByName('Jns_SKPP').AsInteger:= coBulan.ItemIndex;
  Dataset.FieldByName('Keputusan').AsString:= 'Bupati Tangerang';
  Dataset.FieldByName('Tembusan3').AsString:=
    CariData('select UnitNm from tblUnit where UnitKd=''1.20.09''');
  Dataset.FieldByName('SKPPTgl').AsDateTime:= Date;
  Dataset.FieldByName('Tahun').AsString:= GModule.Tahun;
  Dataset.FieldByName('JNS_SKPP').AsInteger:= 1;
  VisibleControls;
end;

procedure TfrmSKPP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TfrmSKPP.FormShow(Sender: TObject);
begin
  WindowState:= wsMaximized;
  coBulan.ItemIndex:= MonthOf(Now);
  coJenis.ItemIndex:= 0;
  BaruBuka:= False;
  ReQuerySKPP;
  TglTTD.Date:= Date;
end;

procedure TfrmSKPP.FormCreate(Sender: TObject);
begin
  BaruBuka:= True;
end;

procedure TfrmSKPP.qrySKPPAfterOpen(DataSet: TDataSet);
begin
  qryJenisSKPP.Open;
  qryGaji.Open;
  qryGaji13.Open;
  qryUnit.Open;
  qrySKPPDet.Open;
  qryBulanGaji.Open;
  VisibleControls;
end;

procedure TfrmSKPP.LookJenisClick(Sender: TObject);
begin
  VisibleControls;
end;

procedure TfrmSKPP.qrySKPPAfterScroll(DataSet: TDataSet);
begin
  VisibleControls;
end;

procedure TfrmSKPP.qrySKPPBeforePost(DataSet: TDataSet);
begin
  Dataset.FieldByName('Operator').AsString:= GModule.UserID;
  Dataset.FieldByName('Tgl_Ubah').AsDateTime:= Now;
end;

procedure TfrmSKPP.btnPrintClick(Sender: TObject);
var F: String;
begin
  if (not qrySKPP.Active) then exit;
  if (qrySKPP.State in[dsInsert, dsEdit]) then exit;
  if (qrySKPP.IsEmpty) then exit;
  F:= GModule.Path + 'Rpt-Pegawai\SKPP.fr3';
  DMReports.ShowReportPegawai(F,
    qrySKPP.FieldByName('SKPPNo').AsString, GModule.Tahun, '', TglTTD.Date);
end;

procedure TfrmSKPP.DesignEdit1Click(Sender: TObject);
var F: String;
begin
  if (not qrySKPP.Active) then exit;
  if (qrySKPP.State in[dsInsert, dsEdit]) then exit;
  //if (qrySKPP.IsEmpty) then exit;
  F:= GModule.Path + 'Rpt-Pegawai\SKPP.fr3';
  DMReports.DesignReportPegawai(F,
    qrySKPP.FieldByName('SKPPNo').AsString, GModule.Tahun, '', TglTTD.Date);
end;

procedure TfrmSKPP.qrySKPPAfterPost(DataSet: TDataSet);
begin
  VisibleControls;
end;

procedure TfrmSKPP.qrySKPPAfterCancel(DataSet: TDataSet);
begin
  VisibleControls;
end;

procedure TfrmSKPP.qrySKPPAfterDelete(DataSet: TDataSet);
begin
  VisibleControls;
end;

end.
