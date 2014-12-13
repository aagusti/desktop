unit FEditRekap;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBCtrls, DB, ADODB, Buttons;

type
  TfrmEditRekap = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label3: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Label1: TLabel;
    Label7: TLabel;
    dbTahun: TDBText;
    dbBulan: TDBText;
    dbTglSP2D: TDBText;
    dbRJenis: TDBText;
    dbUrut: TDBText;
    dbLookSKPD: TDBLookupComboBox;
    qrySKPD: TADOQuery;
    dsSKPD: TDataSource;
    qrySKPDUnitKd: TStringField;
    qrySKPDUrusanKd: TStringField;
    qrySKPDNoUrut: TStringField;
    qrySKPDUnitNm: TStringField;
    qrySKPDBankName: TStringField;
    qrySKPDBankAccount: TStringField;
    qrySKPDAlamat: TStringField;
    qrySKPDShortUnitNm: TStringField;
    qrySKPDTelp: TStringField;
    qrySKPDFax: TStringField;
    qryJenis: TADOQuery;
    dsJenis: TDataSource;
    dbLookJenis: TDBLookupComboBox;
    btnSimpan: TSpeedButton;
    bntCancel: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure bntCancelClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    MDataset: TDataSource;
  end;

procedure EditRekapDlg(var DS: TDataSource; RJenis: Integer);

var
  frmEditRekap: TfrmEditRekap;

implementation

{$R *.dfm}

uses GlobalModule;

procedure EditRekapDlg(var DS: TDataSource; RJenis: Integer);
begin
  if (frmEditRekap=nil) then frmEditRekap:= TfrmEditRekap.Create(nil);
  with frmEditRekap do
    begin
      qryJenis.close;
      qryJenis.SQL.Text:= 'SELECT A.JENIS, A.URAIAN, A.RJENIS ' +
              'FROM ' +
              '(SELECT JENIS, URAIAN, (CASE WHEN JENIS = 0 THEN 1 ' +
	            'WHEN JENIS = 1 THEN 2 ' +
	            'WHEN JENIS IN (2, 3) THEN 4 ' +
	            'WHEN JENIS = 6 THEN 3 ' +
	            'ELSE 1 END) AS RJENIS  FROM TBLJENISGAJI ' +
              'UNION ' +
              'SELECT JENIS, V_URAIAN AS URAIAN, 6 AS RJENIS FROM TBLJENIS_RAPEL) A ' +
              'WHERE A.RJENIS=' + IntToStr(RJenis)  + '  '+
              'ORDER BY A.RJENIS, A.JENIS';
      qryJenis.Open;
      MDataset:= DS;
      //ShowMessage(qryJenis.SQL.Text);
      if (not (ShowModal = mrOK)) then DS.DataSet.Cancel;
    end;
  frmEditRekap:= nil;
end;

procedure TfrmEditRekap.FormCreate(Sender: TObject);
begin
  qrySKPD.Open;
end;

procedure TfrmEditRekap.bntCancelClick(Sender: TObject);
begin
  ModalResult:= mrCancel;
end;

procedure TfrmEditRekap.btnSimpanClick(Sender: TObject);
begin
  try
    MDataset.DataSet.Post;
    ModalResult:= mrOk;
  except
    on ex: Exception do
      MessageDlg('Error...!!!' + #13#10 + ex.Message, mtError, [mbOK], 0);
  end;
end;

procedure TfrmEditRekap.FormShow(Sender: TObject);
begin
  dbTahun.DataSource:= MDataset;
  dbBulan.DataSource:= MDataset;
  dbTglSP2D.DataSource:= MDataset;
  dbRJenis.DataSource:= MDataset;
  dbUrut.DataSource:= MDataset;
  dbLookSKPD.DataSource:= MDataset;
  dbLookJenis.DataSource:= MDataset;
end;

end.
