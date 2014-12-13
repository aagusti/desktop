unit _TunjOtsus;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, DBCtrls, StdCtrls, Buttons, DB, ADODB,
  SMDBGrid;

type
  TfrmTunjOtsus = class(TForm)
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    btnPrint: TButton;
    PanelClose: TPanel;
    btnClose: TBitBtn;
    dsTunjOtsus: TDataSource;
    TunjOtsus: TADOQuery;
    SMDBGrid1: TSMDBGrid;

    procedure btnCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TunjOtsusAfterOpen(DataSet: TDataSet);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

  Procedure TunjOtsusDlg;

var
  frmTunjOtsus: TfrmTunjOtsus;

implementation

uses //_reportf,
  GlobalModule;

{$R *.dfm}
Procedure TunjOtsusDlg;
begin
  With TfrmTunjOtsus.Create(Nil) do
  begin
    if TunjOtsus.Active then
      TunjOtsus.Requery()
    else
      TunjOtsus.Open;
  end;
end;

procedure TfrmTunjOtsus.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmTunjOtsus.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TfrmTunjOtsus.TunjOtsusAfterOpen(DataSet: TDataSet);
Var I:integer;
begin
  with  TunjOtsus do
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

