unit dbCreate;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, ADODB, ExtCtrls, ComCtrls,StrUtils,userver,
  Grids, DBGrids, GlobalModule;

type
  TfrmDBCreate = class(TForm)
    spAttach: TADOStoredProc;
    OpenDialog1: TOpenDialog;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Label2: TLabel;
    edtFile: TEdit;
    btnSave: TBitBtn;
    btnBackup: TBitBtn;
    SaveDialog1: TSaveDialog;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label3: TLabel;
    optDBCreate: TRadioGroup;
    edtAttach: TEdit;
    btnBrowse: TButton;
    btnProses: TButton;
    edtLog: TEdit;
    Panel1: TPanel;
    btnCancel: TBitBtn;
    btnOk: TBitBtn;
    btnTest: TButton;
    spDump: TADOStoredProc;
    spDrop: TADOStoredProc;
    Label4: TLabel;
    edtSrc: TEdit;
    btnOpen: TBitBtn;
    btnRestore: TBitBtn;
    Label5: TLabel;
    edtDB: TEdit;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    StringGrid1: TStringGrid;
    edtDest: TEdit;
    Label6: TLabel;
    TabSheet4: TTabSheet;
    Panel2: TPanel;
    Button1: TButton;
    Memo1: TMemo;
    aConn: TADOConnection;
    qryExec: TADOCommand;
    FQuery: TADOQuery;
    btnOpenFolder: TBitBtn;
    Panel3: TPanel;
    GroupBox2: TGroupBox;
    txtServer: TLabel;
    txtDBName: TLabel;
    cboServerNm: TComboBox;
    cboDBA: TComboBox;
    chkInt: TCheckBox;
    GroupBox3: TGroupBox;
    txtUserID: TLabel;
    edtUserID: TEdit;
    edtPasswd: TEdit;
    txtPasswd: TLabel;
    procedure cboDBADropDown(Sender: TObject);
    procedure btnBrowseClick(Sender: TObject);
    procedure optDBCreateClick(Sender: TObject);
    procedure chkIntClick(Sender: TObject);
    procedure cboServerNmChange(Sender: TObject);
    procedure btnProsesClick(Sender: TObject);
    procedure cboServerNmDropDown(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure btnTestClick(Sender: TObject);
    procedure btnBackupClick(Sender: TObject);
    procedure btnOpenClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnRestoreClick(Sender: TObject);
    procedure edtDestChange(Sender: TObject);
    procedure edtDBChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnOpenFolderClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
//    function cnDBConnect:Boolean;
    function CheckDB(Value:String):boolean;

  public
    { Public declarations }
    
  end;

function DBCreateDlg(var TargetConn: TADOConnection; var Prop: TPropertiesDB):boolean;

Const CustRowHeight=20;
var
  frmDBCreate: TfrmDBCreate;

implementation


{$R *.dfm}

function DBCreateDlg(var TargetConn: TADOConnection; var Prop: TPropertiesDB):boolean;

begin
  Result := false;
  With TfrmDBCreate.Create(Nil) do
  begin
    cboServerNm.Text := Prop.ServerName;
    edtUserID.Text   := Prop.UserName;
    edtPasswd.Text   := Prop.Password;
    cboDBA.Text      := Prop.Catalog;
    chkInt.Checked   := Prop.SSPI;
 
    //edtFile.Text:='D:\BackupDB\SIPKD_'+FormatDateTime('YYYYmmdd_hhmmss', Now)+'.bak';
    stringGrid1.RowCount:=2;
    StringGrid1.Cells[0,0]:='LogicalName';
    StringGrid1.Cells[1,0]:='PhisycalName';
    StringGrid1.Cells[2,0]:='Type';
    StringGrid1.RowHeights[0]:=CustRowHeight;
    StringGrid1.ColWidths[0]:=150;
    StringGrid1.ColWidths[1]:=150;
    StringGrid1.ColWidths[2]:=50;
    edtSrc.Text:='';
    edtDB.Text:='';
    edtDest.Text:='';
    If ShowModal=MROk Then
    Begin
       Prop.ServerName :=cboServerNm.Text;
       Prop.UserName :=edtUserID.Text;
       Prop.Password:=edtPasswd.Text;
       Prop.Catalog:=cboDBA.Text;
       Prop.SSPI:=chkInt.Checked;

       TargetConn.Close;
       TargetConn.ConnectionString:= 'Provider=SQLOLEDB.1;Persist Security Info=False;' +
              'Initial Catalog=' + Prop.Catalog + ';Data Source=' + Prop.ServerName + ';';
      if Prop.SSPI Then
        TargetConn.ConnectionString:= TargetConn.ConnectionString + 'Integrated Security=SSPI;'
      else
        TargetConn.ConnectionString:= TargetConn.ConnectionString + 'User ID=' + Prop.UserName + ';'+
              'Password=' + Prop.Password + ';';
       TargetConn.Open;
       Result:=True;
    End;
    Free;
  End;
end;

procedure TfrmDBCreate.cboDBADropDown(Sender: TObject);
begin
  if CheckDB('Master') then
    begin
      FQuery.Close;
      FQuery.SQL.Text:= 'SELECT dbid, name ' +
                       'FROM sysdatabases ' +
                       'ORDER BY name ';
      FQuery.Open;
      With (Sender as TComboBox) do
        begin
          Clear;
          Text:='';
          while Not FQuery.Eof do
            begin
              Items.Add(FQuery.Fields[1].Asstring);
              FQuery.Next;
            end;
        end;
      FQuery.Close;
    end;
end;

procedure TfrmDBCreate.btnBrowseClick(Sender: TObject);
begin
  btnProses.Enabled:=False;
  If OpenDialog1.Execute Then
  begin
     If UPPERCASE(RightStr(OpenDialog1.FileName,3))='MDF' then
     begin
        edtAttach.Text:=OpenDialog1.FileName;
        edtLog.Text:=StringReplace(UPPERCASE(edtAttach.Text),'.MDF','.LDF',[rfReplaceAll])
     end
     else
     begin
        edtLog.Text:=OpenDialog1.FileName;
        edtAttach.Text:=StringReplace(edtLog.Text,'.LDF','.MDF',[rfReplaceAll])
     end;
     btnProses.Enabled:=True;
  end;

end;

procedure TfrmDBCreate.optDBCreateClick(Sender: TObject);
begin
  btnBrowse.Enabled := Not (optDBCreate.ItemIndex=0);
  edtAttach.Enabled := btnBrowse.Enabled;
  edtLog.Enabled :=btnBrowse.Enabled;
end;

procedure TfrmDBCreate.chkIntClick(Sender: TObject);
begin
  edtUserID.Enabled:=Not chkInt.Checked;
  edtPasswd.Enabled:=edtUserID.Enabled
end;

procedure TfrmDBCreate.cboServerNmChange(Sender: TObject);
begin
   edtUserID.Text:='';
   edtPasswd.Text:='';
end;

procedure TfrmDBCreate.btnProsesClick(Sender: TObject);
//Var ResultVar:Variant;
begin
  {With APBD do
  begin
    if Not LoginDB(chkInt.Checked,cboServerNm.Text,'Master',edtUserID.Text,edtPasswd.Text)  Then
    begin
      ShowMessage('Lihat Properti Database');
      Exit;
    End;
    Try
     if optDBCreate.ItemIndex=0 Then
        //LoginDB.Koneksi.Execute('Create Database '+cboDBM.Text)
     else
     begin
       spAttach.Connection:=DBConn;
       spAttach.Parameters[0].Value:=ResultVar;
       spAttach.Parameters[1].Value:=cboDBA.Text;
       spAttach.Parameters[2].Value:=edtAttach.Text;
       spAttach.Parameters[3].Value:=edtLog.Text;
       spAttach.ExecProc;
       ShowMessage('Successful Attaching Database');
     end;
    Except
     ShowMessage('Error Attaching Database');
    End;
  end;  }
end;

procedure TfrmDBCreate.cboServerNmDropDown(Sender: TObject);
begin
  cboServerNm.Items.Text:=GetServer($4);
end;

procedure TfrmDBCreate.FormCreate(Sender: TObject);
begin
   btnProses.Enabled:=False;
   chkIntClick(sender);
   PageControl1.ActivePageIndex:= 0;
end;

procedure TfrmDBCreate.btnOkClick(Sender: TObject);
begin
  If CheckDB(cboDBA.Text) Then
        ModalResult:=mrOk;
end;

function TfrmDBCreate.CheckDB(Value:String):Boolean;
begin
  {
  With GModule do
  begin
    dbServ:=cboServerNm.Text;
    dbUser:=edtUserID.Text;
    dbPass:=edtPasswd.Text;
    dbSSPI:=chkInt.Checked;
    dbFile:=Value;
    Result:= GModule.DBLogged;
  end;
  }
  // ----------

  aConn.Close;
  aConn.ConnectionString:='Provider=SQLOLEDB.1;'+
    'Persist Security Info=False;'+
    'Initial Catalog=' + Value + ';'+
    'Data Source=' + cboServerNm.Text + ';';
  if chkInt.Checked Then
    aConn.ConnectionString:= aConn.ConnectionString+'Integrated Security=SSPI;'
  else
    aConn.ConnectionString:= aConn.ConnectionString+'User ID=' + edtUserID.Text + ';'+
      'Password=' + edtPasswd.Text + ';';
  try
     aConn.Open;
  Except
    raise Exception.Create('Login Database Failed Check Property Database');
  End;
  Result:= aConn.Connected;
end;

procedure TfrmDBCreate.btnTestClick(Sender: TObject);
begin
  If CheckDB(cboDBA.Text) then
      ShowMessage('Connection Successfully');
end;

procedure TfrmDBCreate.btnBackupClick(Sender: TObject);
var
  strSQL:String;
begin
  if CheckDB(cboDBA.Text) then
  begin
    try
      strSQL:= 'BACKUP DATABASE ['+cboDBA.Text+'] '+
        'TO DISK='''+edtFile.Text+'''';
      qryExec.CommandText:= strSQL;
      qryExec.Execute;
      //GModule.ExecuteSQL(strSQL);
      Application.ProcessMessages;
      ShowMessage('Backup Berhasil');
    Except
      on e:exception do
      begin
        ShowMessage('Backup tidak berhasil'+#10#13+e.Message);
      end;
    end;
  end;
end;

procedure TfrmDBCreate.btnOpenClick(Sender: TObject);
var n:integer;
begin
  If (not CheckDB(cboDBA.Text)) then exit;
      
  StringGrid1.RowCount:=2;
  OpenDialog1.InitialDir:=GModule.BackupPath;
  if OpenDialog1.Execute then
  begin
    try
     edtSrc.Text:=OpenDialog1.FileName;
     AdoQuery1.SQL.Text:='RESTORE FILELISTONLY FROM DISK='''+edtSRc.Text+'''';
     AdoQuery1.Open;
     n:=StringGrid1.RowCount;
     While Not AdoQuery1.Eof do
     begin
       StringGrid1.RowCount:=n;
       StringGrid1.RowHeights[n-1]:=CustRowHeight;
       StringGrid1.Cells[0,n-1]:=AdoQuery1.FieldByName('LogicalName').Value;
       StringGrid1.Cells[1,n-1]:=AdoQuery1.FieldByName('PhysicalName').Value;
       StringGrid1.Cells[2,n-1]:=AdoQuery1.FieldByName('Type').Value;
       AdoQuery1.Next;
       n:=n+1;
     end;
     GModule.BackupPath:=ExtractFilePath(edtSrc.Text);
     edtDB.Text:=ChangeFileExt(ExtractFileName(edtSrc.Text),'');
     edtDest.Text:=ExtractFilePath(edtSrc.Text)
    except
     on e:exception do
     begin
       ShowMessage('Bukan file database');
     end;
    end;
  end;

end;

procedure TfrmDBCreate.btnSaveClick(Sender: TObject);
begin
  SaveDialog1.InitialDir:=GModule.BackupPath;
  if SaveDialog1.Execute then
  begin
    edtFile.Text:=SaveDialog1.FileName;
    GModule.BackupPath:=ExtractFilePath(edtFile.Text);
  end;
end;

procedure TfrmDBCreate.btnRestoreClick(Sender: TObject);
var
  strSQL:String;i:integer;
begin
  if CheckDB(cboDBA.Text) then
  begin
    try
      strSQL:= 'RESTORE DATABASE ['+edtDB.Text+'] '+
        ' FROM DISK='''+edtSrc.Text+''' '+
        ' WITH  ';
      For i:=1 to StringGrid1.RowCount-1 do
      begin
        strSQL:= strSQL+'MOVE '''+StringGrid1.Cells[0,i]+''' TO '''+StringGrid1.Cells[1,i] +''' ';
        if i<StringGrid1.RowCount-1 then
           strSQL:= strSQL+','
      end;
      qryExec.CommandText:= strSQL;
      qryExec.Execute;
      //GModule.ExecuteSQL(strSQL);
      Application.ProcessMessages;
      ShowMessage('Restore Berhasil');
    Except
      on e:exception do
      begin
        ShowMessage('Restore tidak berhasil'+#10#13+e.Message);
      end;
    end;
  end;
end;

procedure TfrmDBCreate.edtDestChange(Sender: TObject);
Var I:Integer;
begin
  For I:=1 to StringGrid1.RowCount-1 do
  begin
    if StringGrid1.Cells[2,i]='D' then
       StringGrid1.Cells[1,i]:=edtDest.Text+edtDB.Text+'.mdf'
    else StringGrid1.Cells[1,i]:=edtDest.Text+edtDB.Text+'.ldf';
  end;
end;

procedure TfrmDBCreate.edtDBChange(Sender: TObject);
Var DestFile:String; i:integer;
begin
  DestFile:='';
  if edtDest.Text<>'' then
     DestFile:=DestFile+edtDest.Text
  else DestFile:=ExtractFilePath(edtSrc.Text);
  For I:=1 to StringGrid1.RowCount-1 do
  begin
    if StringGrid1.Cells[2,i]='D' then
       StringGrid1.Cells[1,i]:=DestFile+edtDB.Text+'.mdf'
    else StringGrid1.Cells[1,i]:=DestFile+edtDB.Text+'.ldf';
  end;

end;

procedure TfrmDBCreate.Button1Click(Sender: TObject);
begin
  if CheckDB(cboDBA.Text) then
  begin
    try
      //GModule.ExecuteSQL(Memo1.Text);
      qryExec.CommandText:= Memo1.Text;
      qryExec.Execute;
      Application.ProcessMessages;
      ShowMessage('Proses Berhasil');
    Except
      on e:exception do
      begin
        ShowMessage(e.Message);
      end;
    end;
  end;

end;

procedure TfrmDBCreate.btnOpenFolderClick(Sender: TObject);
var sDir, CurDir: String;
begin
  if (edtDest.Text='') then exit;
  CurDir:= edtDest.Text;
  if (Length(CurDir)>3) then CurDir:= LeftStr(CurDir, Length(CurDir) - 1);
  if (GetFolderDialog(Application.Handle, 'Pilih Lokasi File Database', sDir,
    CurDir, True)) then
    begin
      if (RightStr(sDir, 1)<>'\') then sDir:= sDir + '\';
      edtDest.Text:= sDir;
    end;
end;

procedure TfrmDBCreate.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  aConn.Close;
end;

end.
