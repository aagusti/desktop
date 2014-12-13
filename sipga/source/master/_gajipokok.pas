unit _GajiPokok;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, DBCtrls, StdCtrls, Buttons, DB, ADODB;

type
  TfrmGajiPokok = class(TForm)
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    GroupBox1: TPanel;
    grdGajiPokok: TDBGrid;
    btnPrint: TButton;
    PanelClose: TPanel;
    btnClose: TBitBtn;
    dsGajiPokok: TDataSource;
    GajiPokok: TADOQuery;

    procedure btnCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    //procedure btnPrintClick(Sender: TObject);
    procedure GajiPokokAfterOpen(DataSet: TDataSet);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

  Procedure GajiPokokDlg;

var
  frmGajiPokok: TfrmGajiPokok;

implementation

uses //_reportf,
  GlobalModule;

{$R *.dfm}
Procedure GajiPokokDlg;
begin
  With TfrmGajiPokok.Create(Nil) do
  begin
    if GajiPokok.Active then
      GajiPokok.Requery()
    else
      GajiPokok.Open;
  end;
end;

procedure TfrmGajiPokok.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmGajiPokok.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

{procedure TfrmGajiPokok.btnPrintClick(Sender: TObject);
begin
 OpenReportSQL(GModule.Path+'rpt-rka\tblGajiPokok.rpt',GModule.DaerahNm, '', '' );
end;}

procedure TfrmGajiPokok.GajiPokokAfterOpen(DataSet: TDataSet);
Var I:Integer;
begin
  with  GajiPokok do
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
      end
      else  if (Fields[i].DataType = ftBCD) then
      begin
        tBCDField(Fields[i]).EditFormat := '0';
        tBCDField(Fields[i]).DisplayFormat := '#,0';
      end;
      if (UpperCase(Fields[i].FieldName) = 'POSTED') then
        TBooleanField(Fields[i]).DisplayValues := 'POSTED';
    end;
  end;
end;

end.

