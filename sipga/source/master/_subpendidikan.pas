unit _subpendidikan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, Buttons, StdCtrls, DBCtrls, ExtCtrls;

type
  TfrmSubPendidikan = class(TForm)
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    btnPrint: TButton;
    PanelClose: TPanel;
    btnClose: TBitBtn;
    GroupBox1: TPanel;
    grdUrusan: TDBGrid;
    dsSubPddk: TDataSource;
    SubPddk: TADOQuery;
    procedure btnCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SubPddkBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

Procedure SubPendidikanDlg;

var
  frmSubPendidikan: TfrmSubPendidikan;

implementation

{$R *.dfm}

uses GlobalModule;

Procedure SubPendidikanDlg;
begin
  With TfrmSubPendidikan.Create(Nil) do
  begin
    if SubPddk.Active then
      SubPddk.Requery()
    else
      SubPddk.Open;
  end;
end;

procedure TfrmSubPendidikan.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmSubPendidikan.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TfrmSubPendidikan.SubPddkBeforePost(DataSet: TDataSet);
begin
  Dataset.FieldByName('unitkd').AsString:= '1.01.01';
end;

end.
