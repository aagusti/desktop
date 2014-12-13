unit _loginf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, DateUtils, DB, ADODB;

type
  TFormLogin = class(TForm)
    OpenDialog: TOpenDialog;
    Image1: TImage;
    Panel1: TPanel;
    Label3: TLabel;
    Label2: TLabel;
    Passwd: TEdit;
    UserID: TEdit;
    Panel2: TPanel;
    btnDatabase: TSpeedButton;
    lblDatabaseNm: TLabel;
    Label1: TLabel;
    Tahun: TEdit;
    Panel3: TPanel;
    btnLogin: TSpeedButton;
    btnCancel: TSpeedButton;
    coSKPD: TComboBox;
    qrySKPD: TADOQuery;
    procedure FormCreate(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnLoginClick(Sender: TObject);
    procedure PasswdKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure btnDatabaseClick(Sender: TObject);
  private
    procedure GetTahun;
    //procedure SelectSKPD;
    //function GetSKPDKD: String;
  public
  published
  end;

  function LoginDlg : TModalResult;

var
  FormLogin: TFormLogin;
  cch  : integer;

implementation

uses GlobalModule, dbCreate, Main;

{$R *.dfm}

Function LoginDlg:TModalResult;
begin
  MainForm.Hide;

  result:=FormLogin.Showmodal;
  If result=mrOK then
     MainForm.Show
  else application.Terminate;
end;

procedure TFormLogin.GetTahun;
begin
  if GModule.Conn.Connected then
  begin
    GModule.OpenSQL('SELECT TOP 1 * FROM tblTahun '+
     'WHERE Tahun='''+GMOdule.Tahun+' '''+
     'ORDER BY Tahun DESC');
    if GModule.FQuery.Eof then
       GModule.OpenSQL('SELECT TOP 1 * FROM tblTahun '+
       'ORDER BY Tahun DESC');

    if Not GModule.FQuery.Eof then
      Tahun.Text:=GModule.FQuery.FieldByName('Tahun').AsString
    else
      Tahun.Text:=IntToStr(YearOf(Now));
  end;
end;

{procedure TFormLogin.SelectSKPD;
var IsConnect: Boolean;
    N: Integer;
begin
  coSKPD.Items.Clear;
  qrySKPD.Close;
  IsConnect:= GModule.conn.Connected;
  if (not IsConnect) then exit;
  qrySKPD.Open;
  if (qrySKPD.IsEmpty) then exit;
  qrySKPD.First;
  coSKPD.Items.Add('ALL');
  N:= 0;
  while (not qrySKPD.Eof) do
    begin
      coSKPD.Items.Add(qrySKPD.FieldByName('unitkd').AsString + ' - ' +
        qrySKPD.FieldByName('unitnm').AsString);
      if (qrySKPD.FieldByName('unitkd').AsString=GModule.fGSKPD) then N:= qrySKPD.RecNo;
      qrySKPD.Next;
    end;
  coSKPD.ItemIndex:= N;
end;}

{function TFormLogin.GetSKPDKD: String;
var T, KD: String;
begin
  T:= coSKPD.Text;
  if (coSKPD.ItemIndex>0) then
    begin
      if (POS(' - ', T)>0) then
        KD:= Copy(T, 0, POS(' - ', T)-1)
      else
        KD:= 'ALL';
    end
  else KD:= 'ALL';
  Result:= KD;
end;}

procedure TFormLogin.FormCreate(Sender: TObject);
begin
  if (FileExists(GModule.Path+'images\logo.bmp')) then
    Image1.Picture.LoadFromFile(GModule.Path+'images\logo.bmp');
  LoginDlg;
end;

procedure TFormLogin.btnCancelClick(Sender: TObject);
begin
  Hide;
  ModalResult := mrCancel;
end;

procedure TFormLogin.btnLoginClick(Sender: TObject);
begin
  GModule.Tahun:=Tahun.Text;
  //GModule.fGSKPD:= GetSKPDKD;
  //GModule.FIsAllSKPD:= (GModule.fGSKPD='ALL');
  if GModule.Debug  then
  begin
    Hide;
    ModalResult:=mrOk;
  end
  else if GModule.LoginDlg(UserId.Text,Passwd.Text) then
  begin
    Hide;
    ModalResult:=mrOk;
  end
  else
    ShowMessage('Masukkan User ID dan Password anda dengan benar.');
end;

procedure TFormLogin.PasswdKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_Return then btnLoginClick(nil)
  else if Key = VK_Escape then btnCancelClick(nil);
end;

procedure TFormLogin.FormShow(Sender: TObject);
begin
  btnLogin.Enabled:=GModule.Conn.Connected;
  Passwd.Text :='';
  lblDatabaseNm.Caption:= Gmodule.SetDB.ServerName + '\' + GModule.SetDB.Catalog;
  GetTahun;
  //SelectSKPD;
  //ShowMessage(GModule.fGSKPD);
end;

procedure TFormLogin.btnDatabaseClick(Sender: TObject);
begin
  dbCreateDlg(GModule.Conn, GModule.SetDB);
  lblDatabaseNm.Caption:= Gmodule.SetDB.ServerName + '\' + GModule.SetDB.Catalog;
  btnLogin.Enabled:=GModule.Conn.Connected;
  GetTahun;
  //SelectSKPD;
end;

end.
