unit _golongan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBCtrls, StdCtrls, Buttons, DB, ADODB,
  SMDBGrid, DBGrids;

type
  TfrmGolongan = class(TForm)
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    GroupBox1: TPanel;
    PanelClose: TPanel;
    btnClose: TBitBtn;
    dsGolongan: TDataSource;
    Golongan: TADOQuery;
    dsGajiPokok: TDataSource;
    GajiPokok: TADOQuery;
    Panel2: TPanel;
    SMDBGrid1: TSMDBGrid;
    Panel4: TPanel;
    SMDBGrid2: TSMDBGrid;
    Panel5: TPanel;
    Panel3: TPanel;
    Splitter1: TSplitter;
    btnExportImport: TSpeedButton;

    procedure btnCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SMDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure GajiPokokAfterOpen(DataSet: TDataSet);
    //procedure btnPrintClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

  Procedure GolonganDlg;

var
  frmGolongan: TfrmGolongan;

implementation

uses //_reportf,
  GlobalModule, _ExportGapo;

{$R *.dfm}
Procedure GolonganDlg;
begin
  With TfrmGolongan.Create(Nil) do
  begin
    if Golongan.Active then
      Golongan.Requery()
    else
      Golongan.Open;
    if GajiPokok.Active then
      GajiPokok.Requery()
    else
      GajiPokok.Open;
  end;
end;

procedure TfrmGolongan.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmGolongan.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

{procedure TfrmGolongan.btnPrintClick(Sender: TObject);
begin
 OpenReportSQL(GModule.Path+'rpt-rka\tblGolongan.rpt',GModule.DaerahNm, '', '' );
end;}

procedure TfrmGolongan.SMDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if (not ((gdSelected in State) and (gdFocused in State))) then
  begin
    if (Golongan.FieldByName('IsSummary').AsBoolean) then
      SMDBGrid1.Canvas.Brush.Color:= clScrollBar
    else SMDBGrid1.Canvas.Brush.Color:= clWhite;
  end;
  SMDBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TfrmGolongan.GajiPokokAfterOpen(DataSet: TDataSet);
Var I:Integer;
begin
  with  GajiPokok do
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
        TIntegerField(Fields[i]).EditFormat := '#0';
        TIntegerField(Fields[i]).DisplayFormat := '#,0';
      end
      else  if (Fields[i].DataType = ftBCD) then
      begin
        tBCDField(Fields[i]).EditFormat := '0';
        tBCDField(Fields[i]).DisplayFormat := '#,0';
      end;
    end;
  end;
end;

end.

