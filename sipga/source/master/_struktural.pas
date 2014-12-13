unit _Struktural;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, DBCtrls, StdCtrls, Buttons, DB, ADODB,
  SMDBGrid;

type
  TfrmStruktural = class(TForm)
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    btnPrint: TButton;
    PanelClose: TPanel;
    btnClose: TBitBtn;
    dsStruktural: TDataSource;
    Struktural: TADOQuery;
    SMDBGrid1: TSMDBGrid;

    procedure btnCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    //procedure btnPrintClick(Sender: TObject);
    procedure StrukturalAfterOpen(DataSet: TDataSet);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

  Procedure StrukturalDlg;

var
  frmStruktural: TfrmStruktural;

implementation

uses //_reportf,
  GlobalModule;

{$R *.dfm}
Procedure StrukturalDlg;
begin
  With TfrmStruktural.Create(Nil) do
  begin
    if Struktural.Active then
      Struktural.Requery()
    else
      Struktural.Open;
  end;
end;

procedure TfrmStruktural.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmStruktural.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

{procedure TfrmStruktural.btnPrintClick(Sender: TObject);
begin
 OpenReportSQL(GModule.Path+'rpt-rka\tblStruktural.rpt',GModule.DaerahNm, '', '' );
end;}

procedure TfrmStruktural.StrukturalAfterOpen(DataSet: TDataSet);
var i:integer;
begin
  with  Struktural do
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

