unit _usr_rightf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls, DBGrids, DB, ADODB, ComCtrls, ExtCtrls, DBCtrls,
  Buttons, Mask;

type
  TfrmUR = class(TForm)
    DS: TDataSource;
    tblUser: TADOQuery;
    DBGrid1: TDBGrid;
    tblModule: TADOQuery;
    P1: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label14: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label10: TLabel;
    Image2: TImage;
    I0: TImage;
    I1: TImage;
    Label2: TLabel;
    DBNav: TDBNavigator;
    DBCheckBox1: TDBCheckBox;
    ComboGroup: TDBComboBox;
    EditUserID: TDBEdit;
    EditUserNm: TDBEdit;
    EditTanggal: TDBEdit;
    EditPasswd: TMaskEdit;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    tblUserModule: TADOQuery;
    tblUserModuleUserID: TWideStringField;
    tblUserModuleModuleID: TWideStringField;
    tblUserModuleURead: TBooleanField;
    tblUserModuleUWrite: TBooleanField;
    tblUserModuleUDelete: TBooleanField;
    tblUserModuleUInsert: TBooleanField;
    tblUserModuleUPost: TBooleanField;
    tblUserModuleUUnPost: TBooleanField;
    tblUserModuleModuleNm: TStringField;
    dstblUserModule: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure tblUserBeforePost(DataSet: TDataSet);
    procedure tblUserBeforeDelete(DataSet: TDataSet);
    procedure tblUserAfterScroll(DataSet: TDataSet);
    procedure EditPasswdKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tblUserAfterOpen(DataSet: TDataSet);
    procedure tblUserModuleAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
  procedure UserDlg;
var
  frmUR: TfrmUR;
  bmpCB: array[0..1] of TBitmap;
  usid : string;
  cch  : integer;
  arrKdBid,arrKdUnit : array of string;
  //arrBid,arrUnit


implementation

uses GlobalModule;

{$R *.dfm}

procedure UserDlg;
begin
  With TfrmUR.Create(Nil) do
  begin
     ShowModal;
  end;
end;

procedure TfrmUR.FormCreate(Sender: TObject);
begin
  tblUser.SQL.Text := 'SELECT * FROM tblUser WHERE UserID<>'''+GModule.UserID+''' ORDER BY UserID';
  tblUser.Open;
end;

procedure TfrmUR.FormDestroy(Sender: TObject);
begin
  tblUser.Close;
end;

procedure TfrmUR.SpeedButton1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmUR.tblUserBeforePost(DataSet: TDataSet);
begin
  if (EditUserID.Text = '') OR (EditPasswd.Text='') then abort
  else
  begin
    tblUser.FieldByName('datecreated').Value := Now;
    tbluser.FieldByName('Passwd').AsString:=Encript(EditPasswd.Text);
  end;
end;

procedure TfrmUR.tblUserBeforeDelete(DataSet: TDataSet);
begin
  if UpperCase(tblUser.FieldByName('userid').AsString) = 'SA' then
  begin
    ShowMessage('User ID SA tidak bisa dihapus');
    Abort;
  end;
end;

procedure TfrmUR.tblUserAfterScroll(DataSet: TDataSet);
begin
  if tblUser.FieldByName('Passwd').AsString<>'' then
  EditPasswd.Text:=Decript(tblUser.FieldByName('Passwd').AsString)
end;

procedure TfrmUR.EditPasswdKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If not(ssShift in Shift) then
  begin
     if tblUser.State=dsBrowse then tblUser.Edit;
  end;
end;

procedure TfrmUR.tblUserAfterOpen(DataSet: TDataSet);
begin
  tblModule.Open;
  tblUserModule.Open;
end;

procedure TfrmUR.tblUserModuleAfterInsert(DataSet: TDataSet);
begin
  tblUserModule.FieldByName('URead').AsBoolean:=False;
  tblUserModule.FieldByName('UWrite').AsBoolean:=False;
  tblUserModule.FieldByName('UInsert').AsBoolean:=False;
  tblUserModule.FieldByName('UDelete').AsBoolean:=False;
  tblUserModule.FieldByName('UPost').AsBoolean:=False;
  tblUserModule.FieldByName('UUnPost').AsBoolean:=False;
end;

end.
