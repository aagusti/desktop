unit _tanggungan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, DBCtrls, ToolEdit, RXDBCtrl, DB, ADODB;

type
  TfrmTanggungan = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Button1: TButton;
    Button2: TButton;
    dsHub: TDataSource;
    qryHubungan: TADOQuery;
    DBLookupComboBox1: TDBLookupComboBox;
    DBDateEdit1: TDBDateEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

procedure TanggunganDlg;

var
  frmTanggungan: TfrmTanggungan;

implementation

{$R *.dfm}

uses GlobalModule, PegawaiModule;

procedure TanggunganDlg;
begin
  if (not (DMPegawai.qryTanggungan.State in [dsInsert, dsEdit])) then exit;
  if (frmTanggungan=nil) then frmTanggungan:=TfrmTanggungan.Create(nil);
  frmTanggungan.ShowModal;
  frmTanggungan:= nil;
end;

procedure TfrmTanggungan.FormShow(Sender: TObject);
begin
  if (qryHubungan.Active) then qryHubungan.Requery()
  else qryHubungan.Open;
end;

procedure TfrmTanggungan.Button1Click(Sender: TObject);
begin
  try
    DMPegawai.qryTanggungan.Post;
    ModalResult:= mrOK;
  except
    on ex:Exception do
      begin
        MessageDlg(ex.Message, mtWarning, [mbOK], 0);
      end;
  end;
end;

procedure TfrmTanggungan.Button2Click(Sender: TObject);
begin
  DMPegawai.qryTanggungan.Cancel;
  ModalResult:= mrCancel;
end;

procedure TfrmTanggungan.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:= caFree;
end;

end.
