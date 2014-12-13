unit _Guru;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, DBCtrls, StdCtrls, Buttons, DB, ADODB,
  SMDBGrid;

type
  TfrmGuru = class(TForm)
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    btnPrint: TButton;
    PanelClose: TPanel;
    btnClose: TBitBtn;
    dsGuru: TDataSource;
    Guru: TADOQuery;
    SMDBGrid1: TSMDBGrid;

    procedure btnCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure GuruAfterOpen(DataSet: TDataSet);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

  Procedure GuruDlg;

var
  frmGuru: TfrmGuru;

implementation

uses //_reportf,
  GlobalModule;

{$R *.dfm}
Procedure GuruDlg;
begin
  With TfrmGuru.Create(Nil) do
  begin
    if Guru.Active then
      Guru.Requery()
    else
      Guru.Open;
  end;
end;

procedure TfrmGuru.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmGuru.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TfrmGuru.GuruAfterOpen(DataSet: TDataSet);
Var I:integer;
begin
  with  Guru do
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

