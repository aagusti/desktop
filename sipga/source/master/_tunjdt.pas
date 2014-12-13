unit _TunjDT;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, DBCtrls, StdCtrls, Buttons, DB, ADODB,
  SMDBGrid;

type
  TfrmTunjDT = class(TForm)
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    btnPrint: TButton;
    PanelClose: TPanel;
    btnClose: TBitBtn;
    dsTunjDT: TDataSource;
    TunjDT: TADOQuery;
    SMDBGrid1: TSMDBGrid;

    procedure btnCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TunjDTAfterOpen(DataSet: TDataSet);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

  Procedure TunjDTDlg;

var
  frmTunjDT: TfrmTunjDT;

implementation

uses //_reportf,
  GlobalModule;

{$R *.dfm}
Procedure TunjDTDlg;
begin
  With TfrmTunjDT.Create(Nil) do
  begin
    if TunjDT.Active then
      TunjDT.Requery()
    else
      TunjDT.Open;
  end;
end;

procedure TfrmTunjDT.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmTunjDT.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TfrmTunjDT.TunjDTAfterOpen(DataSet: TDataSet);
Var I:integer;
begin
  with  TunjDT do
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

