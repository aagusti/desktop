unit _Umum;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, DBCtrls, StdCtrls, Buttons, DB, ADODB;

type
  TfrmUmum = class(TForm)
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    GroupBox1: TPanel;
    grdUmum: TDBGrid;
    btnPrint: TButton;
    PanelClose: TPanel;
    btnClose: TBitBtn;
    dsUmum: TDataSource;
    Umum: TADOQuery;

    procedure btnCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnPrintClick(Sender: TObject);
    procedure UmumAfterOpen(DataSet: TDataSet);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

  Procedure UmumDlg;

var
  frmUmum: TfrmUmum;

implementation

uses _reportf, GlobalModule;

{$R *.dfm}
Procedure UmumDlg;
begin
  With TfrmUmum.Create(Nil) do
  begin
    if Umum.Active then
      Umum.Requery()
    else
      Umum.Open;
  end;
end;

procedure TfrmUmum.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmUmum.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TfrmUmum.btnPrintClick(Sender: TObject);
begin
 OpenReportSQL(GModule.Path+'rpt-rka\tblUmum.rpt',GModule.DaerahNm, '', '' );
end;

procedure TfrmUmum.UmumAfterOpen(DataSet: TDataSet);
var i:integer;
begin
  with  Umum do
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

