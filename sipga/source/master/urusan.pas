unit urusan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, DBCtrls, StdCtrls, Buttons, DB, ADODB;

type
  TfrmUrusan = class(TForm)
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    GroupBox1: TPanel;
    grdUrusan: TDBGrid;
    btnPrint: TButton;
    PanelClose: TPanel;
    btnClose: TBitBtn;
    dsUrusan: TDataSource;
    Urusan: TADOQuery;

    procedure btnCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    //procedure btnPrintClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

  Procedure UrusanDlg;

var
  frmUrusan: TfrmUrusan;

implementation

uses //_reportf,
    GlobalModule;

{$R *.dfm}
Procedure UrusanDlg;
begin
  With TfrmUrusan.Create(Nil) do
  begin
    if Urusan.Active then
      Urusan.Requery()
    else
      Urusan.Open;
  end;
end;

procedure TfrmUrusan.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmUrusan.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

{procedure TfrmUrusan.btnPrintClick(Sender: TObject);
begin
 OpenReportSQL(GModule.Path+'rpt-rka\tblUrusan.rpt',GModule.DaerahNm, '', '' );
end;}

end.

