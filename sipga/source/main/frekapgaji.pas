unit FRekapGaji;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, ADODB, Grids, DBGrids, SMDBGrid, StdCtrls, DBCtrls,
  Mask, ToolEdit, RXDBCtrl, Buttons, DateUtils, ComCtrls, StrUtils;

type
  TfrmRekapGaji = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    qryRekap: TADOQuery;
    Splitter1: TSplitter;
    qryJRekap: TADOQuery;
    qryRekapDet: TADOQuery;
    grdRekap: TSMDBGrid;
    Panel4: TPanel;
    dsRekap: TDataSource;
    dsRekapDet: TDataSource;
    dsJRekap: TDataSource;
    qryRekapTahun: TStringField;
    qryRekapBulan: TStringField;
    qryRekapNoUrut: TIntegerField;
    qryRekapSP2DDate: TDateTimeField;
    qryRekapRJenis: TSmallintField;
    qryRekapRekapNotes: TStringField;
    Panel5: TPanel;
    Label1: TLabel;
    cboBulan: TComboBox;
    qryBulan: TADOQuery;
    dsBulan: TDataSource;
    qryRekapUraianJenis: TStringField;
    qryJRekapRJenis: TSmallintField;
    qryJRekapRUraian: TStringField;
    qryBulanBULAN: TStringField;
    qryBulanBULAN_NO: TSmallintField;
    qryBulanBULANNM: TStringField;
    qryBulanNMLENGKAP: TStringField;
    DBNavigator1: TDBNavigator;
    grdRekapDetail: TSMDBGrid;
    Panel6: TPanel;
    Panel11: TPanel;
    btnClose: TSpeedButton;
    DBNavigator2: TDBNavigator;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label3: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    DBLookupComboBox7: TDBLookupComboBox;
    Label4: TLabel;
    DBDateEdit7: TDBDateEdit;
    Label6: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    Label7: TLabel;
    DBEdit2: TDBEdit;
    qryRekapTTDNIP: TStringField;
    qryRekapTTDNama: TStringField;
    qryRekapTTDJabatan: TStringField;
    Label8: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label9: TLabel;
    DBEdit5: TDBEdit;
    Label10: TLabel;
    qryRealisasi: TADOQuery;
    dsRealisasi: TDataSource;
    qryRealisasiTAHUN: TStringField;
    qryRealisasiBULAN: TStringField;
    qryRealisasiUNITKD: TStringField;
    qryRealisasiUnitNm: TStringField;
    qryRealisasiNOURUT: TIntegerField;
    qryRealisasiRJENIS: TSmallintField;
    qryRealisasiJENIS: TSmallintField;
    qryRealisasiURAIAN: TStringField;
    qryRealisasiJML_PGW: TIntegerField;
    qryRealisasiJML_SI: TIntegerField;
    qryRealisasiJML_ANAK: TIntegerField;
    qryRealisasiGAJI_POKOK: TFloatField;
    qryRealisasiTUNJ_ISTRI: TFloatField;
    qryRealisasiTUNJ_ANAK: TFloatField;
    qryRealisasiTUNJ_KELUARGA: TFloatField;
    qryRealisasiTUNJ_JAB_STRUKTUR: TFloatField;
    qryRealisasiTUNJ_JAB_FUNGSI: TFloatField;
    qryRealisasiTUNJ_UMUM: TFloatField;
    qryRealisasiTUNJ_BERAS: TFloatField;
    qryRealisasiPPH: TFloatField;
    qryRealisasiPEMBULATAN: TFloatField;
    qryRealisasiPOT_TAPERUM: TFloatField;
    qryRealisasiIWP10: TFloatField;
    qryRealisasiIWP2: TFloatField;
    qryRealisasiGAJI_KOTOR: TFloatField;
    qryRealisasiJML_POTONGAN: TFloatField;
    qryRealisasiJML_BERSIH: TFloatField;
    qryRealisasiJML_JIWA: TFloatField;
    Panel7: TPanel;
    btnProses: TSpeedButton;
    DBNavigator3: TDBNavigator;
    qryRealisasiSP2DDATE: TDateTimeField;
    qryRekapDetTahun: TStringField;
    qryRekapDetBulan: TStringField;
    qryRekapDetNoUrut: TIntegerField;
    qryRekapDetSP2DDate: TDateTimeField;
    qryRekapDetRJenis: TSmallintField;
    qryRekapDetUnitKd: TStringField;
    qryRekapDetJenis: TSmallintField;
    qryRekapDetGajiNotes: TStringField;
    qryJRekap2: TADOQuery;
    SmallintField1: TSmallintField;
    StringField1: TStringField;
    qryRekapDetRUraian: TStringField;
    qryBulan2: TADOQuery;
    StringField2: TStringField;
    SmallintField2: TSmallintField;
    StringField3: TStringField;
    StringField4: TStringField;
    qryRekapDetBulanNM: TStringField;
    qryRealisasiLAIN_LAIN: TFloatField;
    Panel8: TPanel;
    btnPrint: TSpeedButton;
    qryRealisasiUNITGROUP: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cboBulanChange(Sender: TObject);
    procedure qryRekapAfterClose(DataSet: TDataSet);
    procedure btnCloseClick(Sender: TObject);
    procedure qryRekapAfterInsert(DataSet: TDataSet);
    procedure qryRekapAfterPost(DataSet: TDataSet);
    procedure qryRealisasiCalcFields(DataSet: TDataSet);
    procedure qryRealisasiAfterOpen(DataSet: TDataSet);
    procedure btnProsesClick(Sender: TObject);
    procedure qryRealisasiAfterClose(DataSet: TDataSet);
    procedure qryRealisasiBeforeDelete(DataSet: TDataSet);
    procedure qryRealisasiBeforeEdit(DataSet: TDataSet);
    procedure qryRealisasiBeforeInsert(DataSet: TDataSet);
    procedure qryRekapDetAfterEdit(DataSet: TDataSet);
    procedure qryRekapDetBeforeInsert(DataSet: TDataSet);
    procedure qryRekapDetBeforeEdit(DataSet: TDataSet);
    procedure qryRekapDetAfterPost(DataSet: TDataSet);
    procedure qryRekapAfterScroll(DataSet: TDataSet);
    procedure btnPrintClick(Sender: TObject);
    procedure qryRekapDetAfterDelete(DataSet: TDataSet);
    procedure grdRekapDetailDrawFooterCell(Sender: TObject;
      Canvas: TCanvas; FooterCellRect: TRect; Field: TField;
      var FooterText: String; var DefaultDrawing: Boolean);
  private
    { Private declarations }
    DefaultSQL: string;
    procedure OpenRealisasi;
  public
    { Public declarations }
  end;

Procedure RekapGajiDlg;

var
  frmRekapGaji: TfrmRekapGaji;

implementation

uses GlobalModule, FEditRekap, FPrintRekapGaji;

{$R *.dfm}

Procedure RekapGajiDlg;
begin
  With TfrmRekapGaji.Create(Nil) do
  begin

  end;
end;

procedure TfrmRekapGaji.OpenRealisasi;
var strSQL, NewStr: string;
begin
  qryRealisasi.Close;
  strSQL:= DefaultSQL;
  NewStr:= DateToStr(qryRekap.FieldByName('SP2DDATE').AsDateTime+1);
  strSQL:= StringReplace(strSQL, 'GETDATE()+1', QuotedStr(NewStr), [rfReplaceAll]);
  strSQL:= StringReplace(strSQL, '<9999>', qryRekap.FieldByName('Tahun').AsString, [rfReplaceAll]);
  strSQL:= StringReplace(strSQL, '<77>', qryRekap.FieldByName('Bulan').AsString, [rfReplaceAll]);
  strSQL:= StringReplace(strSQL, '5555', IntToStr(qryRekap.FieldByName('NoUrut').AsInteger), [rfReplaceAll]);
  strSQL:= StringReplace(strSQL, '8888', IntToStr(qryRekap.FieldByName('RJenis').AsInteger), [rfReplaceAll]);
  NewStr:= DateToStr(qryRekap.FieldByName('SP2DDATE').AsDateTime);
  strSQL:= StringReplace(strSQL, 'GETDATE()', QuotedStr(NewStr), [rfReplaceAll]);
  qryRealisasi.SQL.Text:= strSQL;
  //ShowMessage(strSQL);
  try
    qryRealisasi.Open;
    Application.ProcessMessages;
  except
  end;
end;

procedure TfrmRekapGaji.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TfrmRekapGaji.FormCreate(Sender: TObject);
begin
  DefaultSQL:= qryRealisasi.SQL.Text;
  WindowState:= wsMaximized;
  qryBulan.Open;
  qryJRekap.Open;
  qryBulan2.Open;
  qryJRekap2.Open;
  qryRekap.Close;
end;

procedure TfrmRekapGaji.FormShow(Sender: TObject);
begin
  cboBulan.ItemIndex:= MonthOf(Now);
  cboBulanChange(nil);
end;

procedure TfrmRekapGaji.cboBulanChange(Sender: TObject);
var strSQL: string;
begin
  qryRekap.Close;
  strSQL:= 'select * from grekap where tahun=''' + GModule.Tahun + ''' ';
  if (cboBulan.ItemIndex>0) then
    strSQL:= strSQL + ' and bulan=''' + FormatFloat('00', cboBulan.ItemIndex) + ''' ';
  qryRekap.SQL.Text:= strSQL;
  try
    qryRekap.Open;
  except
    on ex: Exception do
      MessageDlg('Error !!!' + #13#10 + ex.Message, mtError, [mbOK], 0);
  end;
end;

procedure TfrmRekapGaji.qryRekapAfterClose(DataSet: TDataSet);
begin
  qryRealisasi.Close;
end;

procedure TfrmRekapGaji.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmRekapGaji.qryRekapAfterInsert(DataSet: TDataSet);
begin
  qryRekap.FieldByName('Tahun').AsString:= GModule.Tahun;
  qryRekap.FieldByName('Bulan').AsString:= FormatFloat('00', MonthOf(Now));
  qryRekap.FieldByName('SP2DDATE').AsDateTime:= Date;
  qryRekap.FieldByName('RJENIS').AsInteger:= 1;
end;

procedure TfrmRekapGaji.qryRekapAfterPost(DataSet: TDataSet);
begin
  qryRekap.Refresh;
end;

procedure TfrmRekapGaji.qryRealisasiCalcFields(DataSet: TDataSet);
var JmlKotor, JmlPot: Double;
begin
  with qryRealisasi do
    begin
      FieldByName('JML_JIWA').AsFloat:= FieldByName('JML_PGW').AsFloat +
              FieldByName('JML_SI').AsFloat +
              FieldByName('JML_ANAK').AsFloat;
      JmlKotor:= FieldByName('GAJI_POKOK').AsFloat +
              FieldByName('TUNJ_KELUARGA').AsFloat +
              FieldByName('TUNJ_JAB_STRUKTUR').AsFloat +
              FieldByName('TUNJ_JAB_FUNGSI').AsFloat +
              FieldByName('TUNJ_UMUM').AsFloat +
              FieldByName('TUNJ_BERAS').AsFloat +
              FieldByName('PEMBULATAN').AsFloat +
              FieldByName('PPH').AsFloat;
      FieldByName('GAJI_KOTOR').AsFloat:= JmlKotor;
      JmlPot:= FieldByName('POT_TAPERUM').AsFloat + FieldByName('IWP10').AsFloat +
              FieldByName('IWP2').AsFloat + FieldByName('LAIN_LAIN').AsFloat;
      FieldByName('JML_POTONGAN').AsFloat:= JmlPot;
      FieldByName('JML_BERSIH').AsFloat:= JmlKotor - JmlPot;
    end;
end;

procedure TfrmRekapGaji.qryRealisasiAfterOpen(DataSet: TDataSet);
var I: Integer;
begin
  for I:= 0 to DataSet.FieldCount - 1 do
    begin
      if (DataSet.Fields[I].DataType = ftFloat) then
        begin
          TFloatField(DataSet.Fields[I]).DisplayFormat:= '#,0';
          TFloatField(DataSet.Fields[I]).EditFormat:= '#0';
        end;
    end;
  qryRekapDet.Open;
  grdRekapDetail.CalculateTotals;
end;

procedure TfrmRekapGaji.btnProsesClick(Sender: TObject);
var strSQL: string;
    TglStr: string;
    ResDel: Integer;
begin
  if (qryRekap.IsEmpty) then Exit;
  if (not (qryRekap.State = dsBrowse)) then Exit;
  if (not qryRealisasi.IsEmpty) then
    begin
      ResDel:= MessageDlg('Hapus data yang ada?', mtWarning, [mbYes, mbNo, mbCancel], 0);
      if (ResDel = IDCANCEL) then Exit;
      if (ResDel = IDYES) then
        begin
          strSQL:= 'DELETE FROM gRekapDet ' +
            'WHERE Tahun = ' + QuotedStr(qryRekap.FieldByName('Tahun').AsString) +
            ' AND Bulan = ' + QuotedStr(qryRekap.FieldByName('Bulan').AsString) +
            ' AND RJenis = ' + qryRekap.FieldByName('RJenis').AsString +
            ' AND NoUrut = ' + qryRekap.FieldByName('NoUrut').AsString;
          GModule.SQLExecute(strSQL);
          qryRealisasi.Close;
        end;
    end;
  TglStr:= DateToStr(qryRekap.FieldByName('SP2DDate').AsDateTime + 1);
  strSQL:= 'INSERT INTO gRekapDet(Tahun, Bulan, NoUrut, SP2DDate, RJenis, UnitKd, Jenis, GajiNotes) ' +
    'SELECT ' + QuotedStr(qryRekap.FieldByName('Tahun').AsString) + ', ' +
    QuotedStr(qryRekap.FieldByName('Bulan').AsString) + ', ' +
    qryRekap.FieldByName('NoUrut').AsString + ', ' +
    QuotedStr(DateToStr(qryRekap.FieldByName('SP2DDate').AsDateTime)) + ', ' +
    qryRekap.FieldByName('RJenis').AsString + ', ' +
    'V.UnitKd, V.Jenis, NULL FROM ViewPembayaranGajiSummary V ' +
    'LEFT OUTER JOIN gRekapDet RD ON RD.Tahun = V.Tahun AND RD.Bulan = V.Bulan ' +
    'AND RD.UnitKd = V.UnitKd AND RD.Jenis = V.Jenis ' +
    'WHERE V.Tahun = ' + QuotedStr(qryRekap.FieldByName('Tahun').AsString) +
    ' AND V.Bulan = ' + QuotedStr(qryRekap.FieldByName('Bulan').AsString) +
    ' AND V.RJenis = ' + qryRekap.FieldByName('RJenis').AsString +
    ' AND V.TANGGAL_BUAT<=' + QuotedStr(TglStr) +
    ' AND (RD.UnitKd Is Null) ' +
    ' GROUP BY V.Tahun, V.Bulan, V.UnitKd, V.Jenis, V.RJenis';
  GModule.SQLExecute(strSQL);
  //if (qryRealisasi.Active) then qryRealisasi.Requery
  //else qryRealisasi.Open;
  OpenRealisasi;
end;

procedure TfrmRekapGaji.qryRealisasiAfterClose(DataSet: TDataSet);
begin
  qryRekapDet.Close;
end;

procedure TfrmRekapGaji.qryRealisasiBeforeDelete(DataSet: TDataSet);
begin
  Abort;
end;

procedure TfrmRekapGaji.qryRealisasiBeforeEdit(DataSet: TDataSet);
begin
  Abort;
end;

procedure TfrmRekapGaji.qryRealisasiBeforeInsert(DataSet: TDataSet);
begin
  Abort;
end;

procedure TfrmRekapGaji.qryRekapDetAfterEdit(DataSet: TDataSet);
begin
  EditRekapDlg(dsRekapDet, qryRekap.FieldByName('RJENIS').AsInteger);
end;

procedure TfrmRekapGaji.qryRekapDetBeforeInsert(DataSet: TDataSet);
begin
  Abort;
end;

procedure TfrmRekapGaji.qryRekapDetBeforeEdit(DataSet: TDataSet);
begin
  if (qryRealisasi.IsEmpty) then
    begin
      MessageDlg('Tidak ada data yang akan di edit', mtWarning, [mbOK], 0);
      Abort;
    end;
end;

procedure TfrmRekapGaji.qryRekapDetAfterPost(DataSet: TDataSet);
begin
  OpenRealisasi;
end;

procedure TfrmRekapGaji.qryRekapAfterScroll(DataSet: TDataSet);
begin
  OpenRealisasi;
end;

procedure TfrmRekapGaji.btnPrintClick(Sender: TObject);
begin
  if (not qryRealisasi.Active) then exit;
  if (qryRealisasi.IsEmpty) then exit;
  if (not qryRekap.Active) then Exit;
  if (qryRekap.IsEmpty) then exit;
  with qryRekap do
    begin
      ShowRekapGaji(FieldByName('Tahun').AsString, FieldByName('Bulan').AsString,
          FieldByName('RJenis').AsInteger, FieldByName('NoUrut').AsInteger,
          FieldByName('SP2DDate').AsDateTime, FieldByName('SP2DDate').AsDateTime+1);
    end;
end;

procedure TfrmRekapGaji.qryRekapDetAfterDelete(DataSet: TDataSet);
begin
  OpenRealisasi;
end;

procedure TfrmRekapGaji.grdRekapDetailDrawFooterCell(Sender: TObject;
  Canvas: TCanvas; FooterCellRect: TRect; Field: TField;
  var FooterText: String; var DefaultDrawing: Boolean);
var strFoot: string;
begin
  if ((Field.DataType = ftFloat) or (Field.DataType = ftInteger)) then
    begin
      strFoot:= FooterText;
      if strFoot = '' then strFoot:= '0';
      FooterText:= FormatFloat('#,0', StrToFloat(strFoot));
    end;
  Canvas.Font.Style:= [fsBold];
end;

end.
