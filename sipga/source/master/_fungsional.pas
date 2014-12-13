unit _Fungsional;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, DBCtrls, StdCtrls, Buttons, DB, ADODB,
  SMDBGrid;

type
  TfrmFungsional = class(TForm)
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    PanelClose: TPanel;
    btnClose: TBitBtn;
    dsFungsional: TDataSource;
    Fungsional: TADOQuery;
    SMDBGrid1: TSMDBGrid;
    Label11: TLabel;
    edtCari: TEdit;

    procedure btnCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    //procedure btnPrintClick(Sender: TObject);
    procedure FungsionalAfterOpen(DataSet: TDataSet);
    procedure edtCariChange(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

  Procedure FungsionalDlg;

var
  frmFungsional: TfrmFungsional;

implementation

uses //_reportf,
  GlobalModule;

{$R *.dfm}
Procedure FungsionalDlg;
begin
  With TfrmFungsional.Create(Nil) do
  begin
    if Fungsional.Active then
      Fungsional.Requery()
    else
      Fungsional.Open;
  end;
end;

procedure TfrmFungsional.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmFungsional.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

{procedure TfrmFungsional.btnPrintClick(Sender: TObject);
begin
 OpenReportSQL(GModule.Path+'rpt-rka\tblFungsional.rpt',GModule.DaerahNm, '', '' );
end;}

procedure TfrmFungsional.FungsionalAfterOpen(DataSet: TDataSet);
var i:integer;
begin
  with  Fungsional do
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

procedure TfrmFungsional.edtCariChange(Sender: TObject);
var F: String;
begin
  if (not Fungsional.Active) then exit;
  Fungsional.Close;
  Fungsional.Filtered:= False;
  if (edtCari.Text<>'') then
    begin
      F:= '(Jbt_FungsiKd Like ' + QuotedStr(edtCari.Text + '%') + ') ' +
        'or (Jbt_Fungsi Like ' + QuotedStr('%' + edtCari.Text + '%') + ')';
      Fungsional.Filter:= F;
      Fungsional.Filtered:= True;
    end;
  Fungsional.Open;
end;

end.

