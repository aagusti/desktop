unit _chgpasswd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TfChgPasswd = class(TForm)
    P1: TPanel;
    Image1: TImage;
    Image2: TImage;
    Label1: TLabel;
    Bevel2: TBevel;
    btnCancel: TSpeedButton;
    btnUbah: TSpeedButton;
    Bevel3: TBevel;
    Bevel1: TBevel;
    Label3: TLabel;
    Label2: TLabel;
    OldPasswd: TEdit;
    UserNm: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    ConfPasswd: TEdit;
    NewPasswd: TEdit;
    procedure btnCancelClick(Sender: TObject);
    procedure btnUbahClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fChgPasswd: TfChgPasswd;

procedure ChgPasswdDlg;

implementation

uses GlobalModule;

{$R *.dfm}
//uses UnitSAB;//,_mainf;

procedure ChgPasswdDlg;
begin
  With TfChgPasswd.Create(nil) Do
  Begin
    UserNm.Text := GModule.UserID;
    OldPasswd.Text := '';
    NewPasswd.Text := '';
    ConfPasswd.Text := '';
    ShowModal;
    Free;
  End;
end;
procedure TfChgPasswd.btnCancelClick(Sender: TObject);
begin
  ModalResult := MrCancel;
end;

procedure TfChgPasswd.btnUbahClick(Sender: TObject);
begin
  if NewPasswd.Text='' then
  begin
     ShowMessage('Password tidak boleh kosong');
     exit;  
  end;
  if NewPasswd.Text<>ConfPasswd.Text Then
     ShowMessage('Password Baru Berbeda.')
  Else if GModule.ChgPasswd(OldPasswd.Text,NewPasswd.Text) then
       begin
         Hide;
         ModalResult := MrOk;
       end
       else ShowMessage('Password Lama Salah.');
end;

end.
