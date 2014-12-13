unit _Taperum;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, DBCtrls, StdCtrls, Buttons, DB, ADODB,
  SMDBGrid;

type
  TfrmTaperum = class(TForm)
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    btnPrint: TButton;
    PanelClose: TPanel;
    btnClose: TBitBtn;
    dsTaperum: TDataSource;
    Taperum: TADOQuery;
    SMDBGrid1: TSMDBGrid;

    procedure btnCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TaperumAfterOpen(DataSet: TDataSet);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

  Procedure TaperumDlg;

var
  frmTaperum: TfrmTaperum;

implementation

uses //_reportf,
  GlobalModule;

{$R *.dfm}
Procedure TaperumDlg;
begin
  With TfrmTaperum.Create(Nil) do
  begin
    if Taperum.Active then
      Taperum.Requery()
    else
      Taperum.Open;
  end;
end;

procedure TfrmTaperum.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmTaperum.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TfrmTaperum.TaperumAfterOpen(DataSet: TDataSet);
Var I:integer;
begin
  with  Taperum do
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
        TIntegerField(Fields[i]).EditFormat := '0';
        TIntegerField(Fields[i]).DisplayFormat := '#,0';
      end;
      if (UpperCase(Fields[i].FieldName) = 'POSTED') then
        TBooleanField(Fields[i]).DisplayValues := 'POSTED';

    end;
  end;


end;

end.

