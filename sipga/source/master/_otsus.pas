unit _Otsus;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, DBCtrls, StdCtrls, Buttons, DB, ADODB;

type
  TfrmOtsus = class(TForm)
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    GroupBox1: TPanel;
    grdOtsus: TDBGrid;
    btnPrint: TButton;
    PanelClose: TPanel;
    btnClose: TBitBtn;
    dsOtsus: TDataSource;
    Otsus: TADOQuery;

    procedure btnCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnPrintClick(Sender: TObject);
    procedure OtsusAfterOpen(DataSet: TDataSet);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

  Procedure OtsusDlg;

var
  frmOtsus: TfrmOtsus;

implementation

uses _reportf, GlobalModule;

{$R *.dfm}
Procedure OtsusDlg;
begin
  With TfrmOtsus.Create(Nil) do
  begin
    if Otsus.Active then
      Otsus.Requery()
    else
      Otsus.Open;
  end;
end;

procedure TfrmOtsus.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmOtsus.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TfrmOtsus.btnPrintClick(Sender: TObject);
begin
 OpenReportSQL(GModule.Path+'rpt-rka\tblOtsus.rpt',GModule.DaerahNm, '', '' );
end;

procedure TfrmOtsus.OtsusAfterOpen(DataSet: TDataSet);
var i:integer;
begin
  with  Otsus do
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

