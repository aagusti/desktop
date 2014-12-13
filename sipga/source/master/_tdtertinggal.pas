unit _TDTertinggal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, DBCtrls, StdCtrls, Buttons, DB, ADODB;

type
  TfrmTDTertinggal = class(TForm)
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    GroupBox1: TPanel;
    grdTDTertinggal: TDBGrid;
    btnPrint: TButton;
    PanelClose: TPanel;
    btnClose: TBitBtn;
    dsTDTertinggal: TDataSource;
    TDTertinggal: TADOQuery;

    procedure btnCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnPrintClick(Sender: TObject);
    procedure TDTertinggalAfterOpen(DataSet: TDataSet);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

  Procedure TDTertinggalDlg;

var
  frmTDTertinggal: TfrmTDTertinggal;

implementation

uses _reportf, GlobalModule;

{$R *.dfm}
Procedure TDTertinggalDlg;
begin
  With TfrmTDTertinggal.Create(Nil) do
  begin
    if TDTertinggal.Active then
      TDTertinggal.Requery()
    else
      TDTertinggal.Open;
  end;
end;

procedure TfrmTDTertinggal.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmTDTertinggal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TfrmTDTertinggal.btnPrintClick(Sender: TObject);
begin
 OpenReportSQL(GModule.Path+'rpt-rka\tblTDTertinggal.rpt',GModule.DaerahNm, '', '' );
end;

procedure TfrmTDTertinggal.TDTertinggalAfterOpen(DataSet: TDataSet);
var i:integer;
begin
  with  TDTertinggal do
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
      end;
      if (UpperCase(Fields[i].FieldName) = 'POSTED') then
        TBooleanField(Fields[i]).DisplayValues := 'POSTED';

    end;
  end;

end;

end.

