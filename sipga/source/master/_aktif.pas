unit _Aktif;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, DBCtrls, StdCtrls, Buttons, DB, ADODB,
  Mask, SMDBGrid;

type
  TfrmAktif = class(TForm)
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    GroupBox1: TPanel;
    PanelClose: TPanel;
    btnClose: TBitBtn;
    dsAktif: TDataSource;
    Aktif: TADOQuery;
    Panel2: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    DBCheckBox10: TDBCheckBox;
    DBCheckBox11: TDBCheckBox;
    DBCheckBox12: TDBCheckBox;
    DBCheckBox13: TDBCheckBox;
    DBCheckBox14: TDBCheckBox;
    DBCheckBox15: TDBCheckBox;
    DBCheckBox16: TDBCheckBox;
    DBCheckBox17: TDBCheckBox;
    DBCheckBox18: TDBCheckBox;
    DBCheckBox19: TDBCheckBox;
    DBCheckBox20: TDBCheckBox;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    DBCheckBox21: TDBCheckBox;
    DBCheckBox22: TDBCheckBox;
    DBCheckBox23: TDBCheckBox;
    SMDBGrid1: TSMDBGrid;

    procedure btnCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

  Procedure AktifDlg;

var
  frmAktif: TfrmAktif;

implementation

uses //_reportf,
  GlobalModule;

{$R *.dfm}
Procedure AktifDlg;
begin
  With TfrmAktif.Create(Nil) do
  begin
    if Aktif.Active then
      Aktif.Requery()
    else
      Aktif.Open;
  end;
end;

procedure TfrmAktif.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmAktif.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

end.

