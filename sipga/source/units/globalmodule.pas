unit GlobalModule;

interface

uses
  Windows, Forms, SysUtils, Classes, DB, ADODB, Menus, Messages, StrUtils,
  IniFiles, Dialogs, DateUtils, ShlObj, Graphics, Variants;

Const
  strMsgDet='Isi Detail akan menghapus data yang telah ada, lanjutkan proses?';
  strMsgPosting='Posting Semua Data?';

  MasaKGB: Integer = 2;

type     

  {TRObject=record
    UP:boolean;
    TU:boolean;
    GU:Boolean;
    LS:Boolean;
  end;}

  TTTD=record
    Enabled:Boolean;
    TTDJab:String;
    TTDName:String;
    TTDNIP:String;
    BankName:String;
    BankAccount:String;
    PPN:Integer;
    PPH:Integer;
    SplitByType:Boolean;
    SplitByBelanja:Boolean;
    SplitByGaji:Boolean;
    SplitByInfix:Boolean;
    IsGranted:Boolean;
    //RObject:TRObject;
    Infix:String;
  end;

// --- 2011 ---
type
  vMyMenu = ^TMyMenu;
  TMyMenu = record
    ID: Integer;
    SKPDKd: String;
    GolKd: String;
    GolonganKd: String;
end;

type
  TPropertiesDB = Record
    ServerName: String;
    UserName: String;
    Password: String;
    Catalog: String;
    SSPI: Boolean;
end;

{type
  TUser = record
    UserId: String;
    UserName: String;
    Password: String;
    GroupId: Integer;
    UserGroup: String;
    IsAllUnit: Boolean;
    UnitKd: String;
    UnitNm: String;
    IsAccessSub: Boolean;
    IsAktif: Boolean;
end;}

// --- 2011 ---

  TGModule = class(TDataModule)
    conn: TADOConnection;
    FQuery: TADOQuery;
    BQuery: TADOQuery;
    qryExec: TADOCommand;
    SQuery1: TADOQuery;
    SQuery2: TADOQuery;
    qryParameter: TADOQuery;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
    //database property
    fDBLogged:Boolean;
    {fDBFile:String;
    fDBUser:String;
    fDBPass:String;
    fDBServ:String;
    fDBSSPI:Boolean; }

    //aplication property
    fBackupPath:String;
    fTahun:String;
    fIsSKPKD:Boolean;

    // user property
    fUserID:String;
    fUserNm: String;
    fUserPass: String;
    fUserGrp:String;
    fUserGroupId: Integer;
    fGSKPD:string;
    fGSKPDNm:String;
    fIsAllSKPD:Boolean;
    fIsAccessSub: Boolean;

    // end user property
    fIsGajiBruto:Boolean;

//    fUnitKd:String;
    //FRincianObject:Boolean;
    //fRKATahun:String;

    IniFile:TIniFile;
    //procedure SetDBFile(Value:String);
    procedure SetDBLogged(Value:Boolean);
    function GetCRDBConnString:String;
    procedure SetTahun(Value:String);
    
    //procedure SetUnitKd(Value:String);

  Public

    Path:String;
    DaerahNm:String;
    IbuKota:String;
    Debug:Boolean;

    IsSKPKD :Boolean;

    SetDB: TPropertiesDB;

    function ExecuteSQL(Const SQL:String):integer;
    procedure OpenSQL(SQLText:String);
    
    function LoginDlg(uid,pass:string):boolean;
    function ChgPasswd(OldPass,NewPass:String):Boolean;
    property Tahun:String Read FTahun Write SetTahun;
    property CRDBConnString:String read GetCRDBConnString;

    // user property
    property UserID:String read FUserID write FUserID;
    property UserNm:String read FUserNm write FUserNm;
    property UserPass:String read FUserPass write FUserPass;
    property UserGrp:String read FUserGrp write FUserGrp;
    property UserGroupId:Integer read FUserGroupId write FUserGroupId;   // = -1 berarti tidak ada access sama sekali
    property UnitNm:String read fGSKPDNm write fGSKPDNm;
    property UnitKd:String read fGSKPD Write fGSKPD; 
    property IsAllSKPD:boolean read fIsAllSKPD write fIsAllSKPD;
    property IsAccessSub:boolean read fIsAccessSub write fIsAccessSub;
    // end user property

    property BackupPath:String Read FBackupPath write FBackupPath;
    {property DBFile:String read fdbFile Write SetDBFile;
    property DBUser:String read fDBUser Write fDBUser;
    property DBPass:String read fDBPass Write fDBPass;
    property DBServ:String read fDBServ Write fDBServ;
    property DBSSPI:Boolean read fDBSSPI Write fDBSSPI; }
    property DBLogged:Boolean read FDBLogged Write SetDBLogged;

    //property IsSKPKD:Boolean read fIsSKPKD write fIsSKPKD;

    property IsGajiBruto:Boolean read fIsGajiBruto Write fIsGajiBruto;

    procedure AppendLog(Source,S:string);
    function IsAdmin:Boolean;
    function IsGranted(ModuleNm,ModuleState:String):Boolean;
    //property IsSKPKD:Boolean read fIsSKPKD write fIsSKPKD;

    procedure SQLExecute(SQL:String);

    // ---- 2011 ----
    function GetFilterSKPD: String;

    function AddExtention(sFile, DefEx: String): String;
    function GetConnectionString(DBP:TPropertiesDB):String;
    procedure UpdateParameter(NewTahun: string);
    // ---- end 2011 ----
    function AdaSertifikasi(sTable: String): Boolean;
end;

Function Encript(txtToEncript:string):string;
Function Decript(txtToDecript:string):string;
function NumToText(Nilai:Double):String;
function GetNamaBulan(Bln: Integer): String;

// --- open directory
function BrowseCallbackProc(hwnd: HWND; uMsg: UINT; lParam: LPARAM; lpData: LPARAM): Integer; stdcall;
function GetFolderDialog(Handle: Integer; Caption: string; var strFolder: string;
  InitDirectory: String = ''; CreateNewFolder: Boolean = False): Boolean;
// --- end open directory

var
  GModule: TGModule;

  CariQRY: String;

  InitialDir: String;


implementation

uses dbCreate;

{$R *.dfm}

// ---- 2011 ----

function TGModule.GetFilterSKPD: String;
var R: String;
begin
  R:= '';
  if not IsAllSKPD then
    begin
      if IsAccessSub then R:= 'UnitKd Like ' + QuotedStr(UnitKd + '%')
      else R:= 'UnitKd = ' + QuotedStr(UnitKd);
    end;
  Result:= R;
end;

function TGModule.GetConnectionString(DBP:TPropertiesDB):String;
var sConn:String;
begin
  sConn:='Provider=SQLOLEDB.1;Data Source=' + DBP.ServerName + ';';
  if (DBP.Catalog='') then
    sConn:= sConn + 'Initial Catalog=%%%%%;'
  else
    sConn:= sConn + 'Initial Catalog=' + DBP.Catalog + ';';
  if (DBP.SSPI) then
    sConn:=sConn + 'Integrated Security=SSPI;'
  else
    sConn:=sConn + 'User Id=' + DBP.UserName + ';Password=' + DBP.Password + ';';
  sConn:= sConn + 'Persist Security Info=False;';
  Result:=sConn;
end;

procedure TGModule.UpdateParameter(NewTahun: string);
var strSQL, TA: String;
begin
  qryParameter.Close;
  qryParameter.Parameters[0].Value:= NewTahun;
  qryParameter.Open;
  if (qryParameter.IsEmpty) then
    begin
      TA:= IntToStr(StrToInt(NewTahun)-1);
      strSQL:= 'INSERT INTO tblParameter(Tahun, Tunj_Anak, Tunj_Istri, ' +
                'Tunj_Beras_Rupiah, Tunj_Beras_Kg, Tunj_Pajak, Tunj_Pajak_1, ' +
                'Tunj_Pajak_2, Tunj_Pajak_3, Tunj_Pajak_4, Tunj_Pajak_1_Max, ' +
                'Tunj_Pajak_2_Max, Tunj_Pajak_3_Max, Tunj_Pajak_4_Max, ' +
                'Tunj_Biaya_Jabatan, Tunj_Maks_Biaya_Jabatan, MaxStaff, ' +
                'MaxGuru, Iuran_Pemda, PTKP_Pribadi, PTKP_Anak, PTKP_SI, ' +
                'Tunj_Anak_Max, PTKP_Anak_Max, Iuran_Pensiun, Askes, ' +
                'Tunj_Hari_Tua, IsWKSingle, UDW, UDT, Operator, Tgl_Ubah) ' +
            'select ' + QuotedStr(NewTahun) + ', Tunj_Anak, Tunj_Istri, Tunj_Beras_Rupiah, ' +
            'Tunj_Beras_Kg, Tunj_Pajak, Tunj_Pajak_1, Tunj_Pajak_2, ' +
            'Tunj_Pajak_3, Tunj_Pajak_4, Tunj_Pajak_1_Max, Tunj_Pajak_2_Max, ' +
            'Tunj_Pajak_3_Max, Tunj_Pajak_4_Max, Tunj_Biaya_Jabatan, ' +
            'Tunj_Maks_Biaya_Jabatan, MaxStaff, MaxGuru, Iuran_Pemda, ' +
            'PTKP_Pribadi, PTKP_Anak, PTKP_SI, Tunj_Anak_Max, PTKP_Anak_Max, ' +
            'Iuran_Pensiun, Askes, Tunj_Hari_Tua, IsWKSingle, UDW, UDT, ' +
            QuotedStr(UserId) + ', ' + QuotedStr(DateToStr(Date)) + ' ' +
            'from tblParameter where tahun=' + TA;
      sqlExecute(strSQL);
      qryParameter.Requery;
    end;
end;

// ---- end 2011 ----

function TGModule.IsGranted(ModuleNm,ModuleState:String):Boolean;
begin
  Result:=False;
  if UserGrp='ADMIN' then Result:=True
  else
  begin
    OPenSQL('SELECT * FROM tblUserModule WHERE (UserID='''+UserID+''')');
    if not FQuery.Eof then
       Result := FQuery.FieldByName('U'+ModuleState).AsBoolean;
  end;
  if not Result then
     ShowMessage('ID Anda dibatasi');

end;
procedure TGModule.AppendLog(Source,S:string);
var
  CurrentDate,CurrentTime : TDateTime;
  F                       : TextFile;
begin
    CurrentDate:=Date;
    CurrentTime:=Time;

    //adding info to log file
    {$I-}
    AssignFile(F, Path+'rkalog.txt');
    Append(F);
    if (IoResult <> 0) then Rewrite(F);
    if (IoResult <> 0) then
    begin
        AssignFile(F, Path+'rkalog.txt');
        Rewrite(F);
    end;
    {$I+}

    if (IoResult = 0) then
    begin
      Write(F,FormatDateTime('yyyy-mm-dd hh:mm:ss',CurrentDate+CurrentTime));
      Write(F,';'+PChar(Source));
      WriteLn(F,';'+PChar(S));
      Flush(F);
      CloseFile(F);
    end;
end;


function TGModule.IsAdmin:Boolean;
begin
  result:=true;
  //if UserGrp<>'ADMIN' then
  if (not ((UserGroupId=1) or (UserGroupId=2))) then
  begin
    //Showmessage('Operasi dibatasi hanya admin yang bisa mengakses');
    result:=false;
  end;
end;

Function Encript(txtToEncript:string):string;
const
  stdpass='83275';
var n,i,j,k:integer;
    newpass:string;
    sresult:string;
begin
  result:= '';
  if (txtToEncript='') then exit;
  newpass:=string(txtToEncript);
  sresult:=chr(length(newpass)+49);
  if Length(newpass)<5 then newpass:=newpass+stdpass;
  k:=Length(newpass);

  for j:=1 to k do
  begin
    for i:=1 to 3 do
    begin
      randomize;
      sresult:=sresult+chr(49+random(75))
    end;
    n:=ord(newpass[j]);
    n:=(n+strtoint(stdpass[(j mod 5)+1]));
    sresult:=sresult+chr(n);
  end;
  sresult:=sresult+chr(k+49);
  result:=sresult;
end;

Function Decript(txtToDecript:string):string;
const
  stdpass='83275';
var i,j:integer;
    newpass:string;
    ntemp,nlength:integer;
begin
  { TODO : Password Decript }
  result:='';
  if (txtToDecript='') then exit;  // ----
  j:=0;
  newpass:=txtToDecript;
  nlength:=ord(newpass[1])-49;
  for i:=1 to length(newpass) do
  begin
    if i mod 4 =0 then
    begin
      j:=j+1;
      ntemp:=ord(newpass[i+1]);
      ntemp:=ntemp-strtoint(stdpass[(j mod 5)+1]);
      if j<=nlength then
        result:=result+chr(ntemp);
    end;
  end;
end;

function TGModule.ExecuteSQL(const SQL: string):integer;
var
  Query: TADOCommand;
  Rec:_recordset;
begin
  Query := TADOCommand.Create(Self);
  Query.Connection := GModule.conn;

  try
    Query.Prepared:=True;
    Query.CommandText:=SQL;
    Query.Execute(Result);
//    Query.ExecSQL;
  except
    on e:exception do showmessage(e.message);
  end;
  Query.Free;
  //if (Query<>nil) then Query:=nil;
end;

procedure TGModule.SQLExecute(SQL:String);
begin
  if (SQL='') Then
    exit
  else
    begin
      qryExec.CommandText:=SQL;
      try
        qryExec.Execute;
      except
      end;
    end;
end;

//procedure TGModule.SetUnitKd(Value:String);
//begin
//  FGSKPD:=Value;
//end;

procedure TGModule.SetTahun(Value:String);
begin
   FTahun:=Value;
end;

{procedure TGModule.SetDBFile(Value:String);
var
  OldValue:String;
begin
  OldValue:= SetDB.Catalog; //FDBFile;
  //FDBFile:=Value;
  SetDB.Catalog:= Value;
  DBLogged:=True;
  If Not FDBLogged then FDBFile:=OldValue;
end; }

procedure TGModule.SetDBLogged(Value:Boolean);
begin
  conn.Close;
  fDBLogged:=False;
  conn.ConnectionString:='Provider=SQLOLEDB.1;'+
    'Persist Security Info=False;'+
    'Initial Catalog=' + SetDB.Catalog + ';'+
    'Data Source=' + SetDB.ServerName + ';';
  if SetDB.SSPI Then
    conn.ConnectionString:=conn.ConnectionString+'Integrated Security=SSPI;'
  else
    conn.ConnectionString:=conn.ConnectionString+'User ID=' + SetDB.UserName + ';'+
      'Password=' + SetDB.Password + ';';
  try
     conn.Open;
     fDBLogged:=True;
  Except
    raise Exception.Create('Login Database Failed Check Property Database');
  End;
end;

procedure TGModule.OpenSQL(SQLText:String);
begin
  If conn.connected then
  begin
     If FQuery.Active then FQuery.Close;
     FQuery.SQL.Text:=SQLText;
     FQuery.Open;
  end;
end;


function TGModule.GetCRDBConnString:string;
begin

  Result:='Provider=SQLOLEDB.1;'+
    'Persist Security Info=False;'+
    'Initial Catalog=' + SetDB.Catalog + ';'+
    'Data Source=' + SetDB.ServerName + ';';

  if SetDB.SSPI Then
    Result:=Result+'Integrated Security=SSPI;'
  else
    Result:=Result+'User ID='+ SetDB.UserName +';'+
      'Password='+ SetDB.Password +';';

end;


function TGModule.ChgPasswd(OldPass,NewPass:String):Boolean;
var LSQL:String;
begin
  Result := False;
  LSQL := 'SELECT * FROM tblUser WHERE userid = ''' + UserID + ''' ';
  OpenSQL(LSQL);
  If FQuery.RecordCount>0 then
  begin
    if decript(FQuery.FieldByName('Passwd').AsString)=OldPass then
    begin
      FQuery.Edit;
      FQuery.FieldByName('Passwd').AsString := encript(NewPass);
      Result:=True;
      FQuery.Post;
    end;
  end;
end;


function TGModule.LoginDlg(uid,pass:string):boolean;
var orpass:string;
    strSQL:String;
begin
    Result:=False;
    OPenSQL('Select Count(*) FROM tblUser');
    if FQuery.Fields[0].AsInteger=0 then
    begin
      if (uid<>'') and (pass<>'') then
      begin
         //strSQL:=FORMAT('INSERT INTO tblUser (UserID,UserNm,Passwd,AllUnit,GroupID, Disabled) '+
         //   'VALUES (''%s'',''Super Administrator'',''%s'',1,''ADMIN'', 0)',[UID,Encript(pass)]);
         strSQL:=FORMAT('INSERT INTO tblUser (UserID,UserNm,Passwd,AllUnit,GroupID, Disabled, Unitkd, Group_Id, accesssub_unit) '+
            'VALUES (''%s'',''Super Administrator'',''%s'',1,''ADMIN'', 0, ''-'', 1, 1)',[UID,Encript(pass)]);
         try
           Conn.Execute(strSQL);
         finally
           ShowMessage('User baru '+uid+' dibuat');
         end;
      end
      else
      begin
         exit;
      end;
    end;

    if (uid='') or (pass='') then
    begin
         exit;
    end;

    UserId:= '';
    UserNm:= '';
    UserPass:= '';
    UnitKd:= '';
    UnitNm:= '';
    UserGroupId:= -1;
    UserGrp:= '';
    IsAllSKPD:= False;
    IsAccessSub:= False;

    strSQL := 'SELECT * FROM V_User Where UserID=''' +  UID  + ''' ';
    OpenSQL(strSQL);
    if (Not FQuery.Eof) then
    begin
        orpass:=decript(FQuery.FieldByName('Passwd').AsString);
        if (pass=orpass) then
        begin
          if (FQuery.FieldByName('disabled').AsBoolean) then
            begin
              MessageDlg('User telah tidak aktif.', mtError, [mbOK], 0);
              exit;
            end;
          UserId:= UID;
          UserNm:= FQuery.FieldByName('UserNm').AsString;
          UserPass:= orpass;
          UnitKd:= FQuery.FieldByName('UnitKd').AsString;
          UserGroupId:= FQuery.FieldByName('Group_ID').AsInteger;
          UserGrp:= FQuery.FieldByName('GroupName').AsString;
          IsAllSKPD:= FQuery.FieldByName('AllUnit').AsBoolean;
          IsAccessSub:= FQuery.FieldByName('ACCESSSUB_UNIT').AsBoolean;
          OpenSQL('SELECT * FROM tblUnit WHERE (UnitKd=' + QuotedStr(UnitKd) +')');
          If Not FQuery.IsEmpty then UnitNm:=FQuery.FieldByName('UnitNm').AsString;
          Result:=True;
        end;
    end;

end;

function TGModule.AdaSertifikasi(sTable: String): Boolean;
var QRY: TADOQuery;
begin
  QRY:= TADOQuery.Create(nil);
  QRY.Connection:= GModule.conn;
  QRY.SQL.Text:= 'select top 1 * from ' + sTable;
  try
    QRY.Open;
    Result:= (QRY.FindField('IsSertifikasi')<>nil);
  except
    Result:= False;
  end;
  QRY.Free;
end;

procedure TGModule.DataModuleCreate(Sender: TObject);
var tempstring:string;
begin
  BQuery.Close;
  CariQRY:= BQuery.SQL.Text;
  FIsAllSKPD:=True;
  Debug:=False;
  Conn.Close;
  Path:=ExtractFilePath(Application.ExeName);
  IniFile:=TIniFile.Create(Path+'global.ini');

  FUserID                 :=IniFile.ReadString('General','UserID','sa');
  //Module                  :=IniFile.ReadString('General','Module','111111');

  FBackupPath:=IniFile.ReadString('General','BackupPath',path+'backup');
  If FBackupPath='' then FBackupPath:=path+'backup';
  FIsSKPKD:=IniFile.ReadBool('General','IsSKPKD',False);
  DaerahNm:=IniFile.ReadString('General','Daerah','');
  If DaerahNm='' then DaerahNm:='KABUPATEN/KOTA TANGERANG'
  else DaerahNm:=Decript(DaerahNm);

  FTahun:=IniFile.ReadString('General', 'Tahun',IntToStr(YearOf(Now)));

  FGSKPD:=IniFile.ReadString('General','SKPD', Encript('ALL'));

  FGSKPD:=Decript(FGSKPD);
  FIsAllSKPD:= (UpperCase(FGSKPD)='ALL');

  IbuKota:=IniFile.ReadString('General','IbuKota','');
  If IbuKota='' then IbuKota:='DEMO'
  Else IbuKota:=Decript(IbuKota);
  try
    SetDB.ServerName:=IniFile.ReadString('DATABASE','Server','(local)');
    SetDB.SSPI:=IniFile.ReadBool('DATABASE','SSPI',True);
    SetDB.UserName:=IniFile.ReadString('DATABASE','UserID','sa');
    SetDB.Password:=IniFile.ReadString('DATABASE','Password','');
    if (SetDB.Password<>'') then SetDB.Password:= Decript(SetDB.Password);
    SetDB.Catalog:=IniFile.ReadString('DATABASE','DBFile','GAJI_2011');
    Conn.ConnectionString:= GetConnectionString(SetDB);
    Conn.Open;
  except
    begin
      if (DBCreateDlg(conn, SetDb)) then SetDBLogged(True);
    end;
  End;
  IniFile.Free;
end;

procedure TGModule.DataModuleDestroy(Sender: TObject);
var tempstring:string;
begin

  IniFile:=TIniFile.Create(Path+'global.ini');

  IniFile.WriteString('DATABASE','DBFILE',SetDB.Catalog);
  IniFile.WriteString('General','UserID',FUserID);
  IniFile.WriteString('General','BackupPath',FBackupPath);

  IniFile.WriteString('General', 'Tahun',Ftahun);

  //server property
  IniFile.WriteString('DATABASE','Server',SetDB.ServerName);
  IniFile.WriteBool('DATABASE','SSPI',SetDB.SSPI);
  IniFile.WriteString('DATABASE','UserID',SetDB.UserName);
  if (SetDB.Password<>'') then
      IniFile.WriteString('DATABASE','Password',Encript(SetDB.Password))
  else IniFile.WriteString('DATABASE','Password',SetDB.Password);
  IniFile.ReadString('DATABASE','DBFile',SetDB.Catalog);

  IniFile.WriteString('General','SKPD',Encript(FGSKPD));

  IniFile.Free;
end;


function NumToText(Nilai:Double):String;
var
  SNum: string;
  ratus,puluh,satuan:Integer;
  SResult,FMinus:String;
  i:integer;
const
  arrbil:array[0..9] of string=('nol','satu ','dua ','tiga ','empat ','lima ',
    'enam ','tujuh ','delapan ','sembilan ');
begin
  fminus:='';
  if nilai<0 then
  begin
     Nilai:=Abs(nilai);
     fminus:='Minus ';
  end;

  if Nilai > 99999999999999.99 then
  begin
    result:= ' - ';
    exit;
  end;
  if nilai = 0.00 then
  begin
    result:='NIHIL';
    exit;
  end;

  SNum := RightStr('00000000000000' + FormatFloat('#0.00',Nilai),16);
//  LNilai := Length(SNum);

  satuan := StrToInt(LeftStr(SNum,1));
  if satuan > 0 then
  SResult := arrbil[satuan] +' trilyun ';

  For I := 1 TO 4 do
  begin
    ratus := StrToInt(Copy(SNum,((i-1)*3)+2,1));
    puluh := StrToInt(Copy(SNum,((i-1)*3)+3,1));
    satuan := StrToInt(Copy(SNum,((i-1)*3)+4,1));

    if ratus > 0   then
      if ratus=1 then
        SResult := SResult+'seratus '
      else
        SResult:= SResult+arrbil[ratus]+ 'ratus ';

    if puluh > 0 then
    begin
      if puluh = 1 then
      begin
        if satuan = 0 then
            SResult := SResult + 'sepuluh '
        else
        begin
          if satuan=1 then
              SResult :=  SResult+'sebelas '
          else
              SResult:= SResult+arrbil[satuan]+ ' belas '
        end;
      end
      else
      begin
        SResult := SResult + arrbil[puluh] + ' puluh ';
        //if satuan>0 then SResult := SResult +arrbil[satuan];
      end;
    end;
//////////////////////////////////////////////
    if (satuan > 0) and (puluh<>1) then
    begin
      if (satuan=1) and (i=3) and (puluh=0) and (ratus=0) then
        SResult := SResult +'se'
      else
        SResult := SResult +arrbil[satuan];
    end;

    If (ratus > 0) or (puluh > 0) or (satuan > 0)  then
      case i of
        1 :  SResult := SResult +'milyar ';
        2 :  SResult := SResult +'juta ';
        3 :  SResult := SResult +'ribu ';
        4 :  SResult := SResult +'';
      end;
///////////////////////////////////////////////
 end;

  puluh := StrToInt(LeftStr(RightStr(SNum,2),1));
  satuan := StrToInt(RightStr(SNum,1)) ;
  if (satuan > 0) or (puluh > 0) then
      SResult:= SResult + ' koma '+ArrBil[puluh]+' '+ArrBil[satuan];
  SResult := SResult + ' rupiah.';

  Result:=StringReplace(SResult,'  ',' ',[rfReplaceAll]);
  Result:=fMinus+UpperCase(LeftStr(SResult,1))+RightStr(Result,Length(Result)-1);

end;

function GetNamaBulan(Bln: Integer): String;
begin
  case Bln of
  1: Result:= 'Januari';
  2: Result:= 'Februari';
  3: Result:= 'Maret';
  4: Result:= 'April';
  5: Result:= 'Mei';
  6: Result:= 'Juni';
  7: Result:= 'Juli';
  8: Result:= 'Agustus';
  9: Result:= 'September';
  10: Result:= 'Oktober';
  11: Result:= 'Nopember';
  12: Result:= 'Desember';
  else Result:= '';
  end;
end;

function TGModule.AddExtention(sFile, DefEx: String): String;
var P, S, E:String;
begin
  Result:= sFile;
  S:= ExtractFileName(sFile);
  P:= ExtractFilePath(sFile);
  if (S='') then exit;
  if (P='') then exit;
  if (DefEx='') then exit;
  E:= DefEx;
  if (Copy(E, 0, 1)<>'.') then E:= '.' + E;
  if (Copy(S, Length(S)-Length(E)+1, Length(E))=E) then
    Exit
  else
    S:= S + E;
  Result:= P + S;
end;

function BrowseCallbackProc(hwnd: HWND; uMsg: UINT; lParam: LPARAM; lpData: LPARAM): Integer; stdcall;
begin
  if (uMsg = BFFM_INITIALIZED) then
    SendMessage(hwnd, BFFM_SETSELECTION, 1, Integer(@InitialDir[1]));
    //SendMessage(hwnd, BFFM_SETSELECTION, 1, lpData);
  BrowseCallbackProc := 0;
end;

function GetFolderDialog(Handle: Integer; Caption: string; var strFolder: string;
  InitDirectory: String = ''; CreateNewFolder: Boolean = False): Boolean;
const
  BIF_STATUSTEXT            = $0004;
  BIF_NEWDIALOGSTYLE        = $0040;
  BIF_RETURNONLYFSDIRS      = $0080;
  BIF_SHAREABLE             = $0100;
  BIF_USENEWUI              = BIF_EDITBOX or BIF_NEWDIALOGSTYLE;
  BIF_NONEWFOLDERBUTTON     = $200;
var
  BrowseInfo: TBrowseInfo;
  ItemIDList: PItemIDList;
  JtemIDList: PItemIDList;
  Path: PAnsiChar;
begin
  Result := False;
  InitialDir:= InitDirectory;
  Path := StrAlloc(MAX_PATH);
  SHGetSpecialFolderLocation(Handle, CSIDL_DRIVES, JtemIDList);
  FillChar(BrowseInfo, SizeOf(BrowseInfo),#0);
  with BrowseInfo do
  begin
    hwndOwner := GetActiveWindow;
    pidlRoot := JtemIDList;
    SHGetSpecialFolderLocation(hwndOwner, CSIDL_DRIVES, JtemIDList);
    pszDisplayName := StrAlloc(MAX_PATH);   { return display name of item selected }
    lpszTitle := PChar(Caption);  { set the title of dialog } //'Select the folder';
    lpfn := @BrowseCallbackProc;  { flags that control the return stuff }
    lParam := LongInt(PChar(strFolder));  { extra info that's passed back in callbacks }
    if (CreateNewFolder) then
      ulFlags:= BIF_RETURNONLYFSDIRS or BIF_NEWDIALOGSTYLE
    else ulFlags:= BIF_RETURNONLYFSDIRS;
  end;
  ItemIDList := SHBrowseForFolder(BrowseInfo);
  if (ItemIDList <> nil) then
    if SHGetPathFromIDList(ItemIDList, Path) then
    begin
      strFolder := Path;
      Result := True
    end;
end;

end.
