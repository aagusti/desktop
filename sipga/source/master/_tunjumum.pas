unit _TunjUmum;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, DBCtrls, StdCtrls, Buttons, DB, ADODB,
  SMDBGrid;

type
  TfrmTunjUmum = class(TForm)
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    btnPrint: TButton;
    PanelClose: TPanel;
    btnClose: TBitBtn;
    dsTunjUmum: TDataSource;
    TunjUmum: TADOQuery;
    SMDBGrid1: TSMDBGrid;

    procedure btnCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TunjUmumAfterOpen(DataSet: TDataSet);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

  Procedure TunjUmumDlg;

var
  frmTunjUmum: TfrmTunjUmum;

implementation

uses //_reportf,
  GlobalModule;

{$R *.dfm}
Procedure TunjUmumDlg;
begin
  With TfrmTunjUmum.Create(Nil) do
  begin
    if TunjUmum.Active then
      TunjUmum.Requery()
    else
      TunjUmum.Open;
  end;
end;

procedure TfrmTunjUmum.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmTunjUmum.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TfrmTunjUmum.TunjUmumAfterOpen(DataSet: TDataSet);
Var I:integer;
begin
  with  TunjUmum do
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

