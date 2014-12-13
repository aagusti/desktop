unit _Status;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, DBCtrls, StdCtrls, Buttons, DB, ADODB;

type
  TfrmStatus = class(TForm)
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    GroupBox1: TPanel;
    grdStatus: TDBGrid;
    btnPrint: TButton;
    PanelClose: TPanel;
    btnClose: TBitBtn;
    dsStatus: TDataSource;
    Status: TADOQuery;

    procedure btnCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    //procedure btnPrintClick(Sender: TObject);
    procedure StatusAfterOpen(DataSet: TDataSet);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

  Procedure StatusDlg;

var
  frmStatus: TfrmStatus;

implementation

uses //_reportf,
  GlobalModule;

{$R *.dfm}
Procedure StatusDlg;
begin
  With TfrmStatus.Create(Nil) do
  begin
    if Status.Active then
      Status.Requery()
    else
      Status.Open;
  end;
end;

procedure TfrmStatus.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmStatus.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

{procedure TfrmStatus.btnPrintClick(Sender: TObject);
begin
 OpenReportSQL(GModule.Path+'rpt-rka\tblStatus.rpt',GModule.DaerahNm, '', '' );
end;}

procedure TfrmStatus.StatusAfterOpen(DataSet: TDataSet);
var i:integer;
begin
  with  Status do
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

