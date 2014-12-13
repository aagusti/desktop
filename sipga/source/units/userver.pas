unit userver;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, DB, ADODB,IniFiles, StrUtils;

type
  TServerInfo   = Record
      sv101_platform_id   : DWORD;
      sv101_name          : LPWSTR;
      sv101_version_major : DWORD;
      sv101_version_minor : DWORD;
      sv101_type          : DWORD;
      sv101_comment       : LPWSTR;
                            End;

  WKSTA_INFO_100   = Record
      wki100_platform_id  : DWORD;
      wki100_computername : LPWSTR;
      wki100_langroup     : LPWSTR; 
      wki100_ver_major    : DWORD;
      wki100_ver_minor    : DWORD;
                            End;

   LPWKSTA_INFO_100 = ^WKSTA_INFO_100; 

  _USER_INFO_0  = record 
    usri0_name: LPWSTR;
  end;

  PUserInfo0   = ^TUserInfo0;
  TUserInfo0   = _USER_INFO_0;

   TServerArr   = array[0..100] of TServerInfo;//(MaxInt - 4) div SizeOf(TServerInfo)] of TServerInfo;//

   function GetNetParam(AParam : integer) : string;
   function GetComputerName : string;
   function GetDomainName : string;
   function GetDomainControllerName(const ADomainName : string) : string;
   procedure GetUsers(Users : TStringList; AServer : string);
   function GetServer(ATipe : LongWord):String;




function NetApiBufferAllocate(ByteCount: DWORD; var Buffer: Pointer): DWORD; 
                                           stdcall; external 'netapi32.dll'; 
function NetGetDCName(servername: LPCWSTR; domainname: LPCWSTR; 
  bufptr: Pointer): DWORD; stdcall; external 'netapi32.dll'; 
function NetApiBufferFree (Buffer: Pointer): DWORD ; stdcall; 
                                     external 'netapi32.dll'; 
Function NetWkstaGetInfo 
        (ServerName : LPWSTR; 
         Level      : DWORD; 
         BufPtr     : Pointer) : Longint; Stdcall; 
                external 'netapi32.dll' Name 'NetWkstaGetInfo';

function NetUserEnum(servername: LPCWSTR; level: DWORD; filter: DWORD;
  var bufptr: Pointer; prefmaxlen: DWORD; var entriesread: DWORD;
  var totalentries: DWORD; resume_handle: PDWORD): DWORD; stdcall;
                                          external 'netapi32.dll';

function NetServerEnum(servername : LPWSTR; level : DWORD; var bufptr : Pointer;
                       prefmaxlen : DWORD; var entriesread : DWORD;
                       var totalentries: DWORD; servertype : DWORD;
                       domain : LPWSTR; resume_handle: PDWORD): DWORD; stdcall; external 'netapi32.dll';

Const
   NERR_Success = 0;
   ArrTipeServer: array [0..23] of Longword =
                  ($1,$2,$4,$8,$10,$20,$40,$80,
                   $100,$40000000,$200,$400,$800,$4000,
                   $1000,$2000,$8000,$10000,$20000,$40000,$80000,
                   $80000000,$400000,$FFFFFFFF);


var
  cch  : integer;
  strSQL:String;
  ShortMonthNamesID: array[1..12] of String=('Jan','Feb','Mar','Apr','Mei','Jun','Jul','Agust','Sep','Okt','Nov','Des');
  LongMonthNamesID: array[1..12] of string=('Januari','Februari','Maret','April','Mei','Juni','Juli','Agustus','September','Oktober','November','Desember');
  LongDayNamesID: array[1..7] of string=('Senin','Selasa','Rabu','Kamis','Jum''at','Sabtu','Minggu');
  ShortDayNamesID: array[1..7] of string=('Sen','Sel','Rabu','Kam','Jum','Sab','Mng');

implementation


function GetNetParam(AParam : Integer) : string;
Var
  PBuf  : LPWKSTA_INFO_100;
  Res   : LongInt;
begin
  result := '';
//  Res := NetWkstaGetInfo (Nil, 100, @PBuf);
  If Res = NERR_Success Then
    begin
      case AParam of
       0:   Result := string(PBuf^.wki100_computername);
       1:   Result := string(PBuf^.wki100_langroup);
      end;
    end;
end;

function GetComputerName : string;
begin
  Result := GetNetParam(0);
end;

function GetDomainName : string;
begin
  Result := GetNetParam(1); 
end;

function GetDomainControllerName(const ADomainName : string) : string;
var 
  wDomainName : WideString; 
  Controller : PWideChar; 
begin 
  wDomainName := AdomainName; 
  NetGetDCName (Nil, PWideChar (wDomainName), @Controller);
  Result := WideCharToString(controller);
//  NetAPIBufferFree (Controller);
end; 
 

procedure GetUsers(Users : TStringList; AServer : string);
type
  TUserInfoArr = array[0..(MaxInt - 4) div SizeOf(TUserInfo0)] of TUserInfo0;
var
  UserInfo: Pointer;
  EntriesRead, TotalEntries, ResumeHandle: DWORD;
  Res: DWORD;
  i: Integer;
  FServer : WideString;
begin
  FServer :=  AServer;
  ResumeHandle := 0;
  repeat
    Res := NetUserEnum(PWideChar(FServer), 0, 0, UserInfo,
                       64 * SizeOf(TUserInfo0),
                       EntriesRead, TotalEntries, @ResumeHandle);
    if (Res = NERR_SUCCESS) or (Res = ERROR_MORE_DATA) then
    begin
      for i := 0 to EntriesRead - 1 do
        Users.Add(TUserInfoArr(UserInfo^)[i].usri0_name);
//      NetApiBufferFree(UserInfo);
    end;
  until Res <> ERROR_MORE_DATA;
end;

function GetServer(ATipe : LongWord):String;
var
  UserInfo: Pointer;
  EntriesRead, TotalEntries, ResumeHandle: DWORD;
  Res: DWORD;
  i: Integer;
  FServer : WideString;
  Servers:TStringList;
begin

  Servers:=TStringList.Create;
  FServer :=  GetDomainName;
  ResumeHandle := 0;


  repeat
    try
//      Res := NetServerEnum('',101	,UserInfo,64 * SizeOf(TServerInfo),
//                         EntriesRead, TotalEntries, ATipe, PWideChar(FServer), @ResumeHandle);
    except
//      NetApiBufferFree(UserInfo);
//      exit;
    end;


    if (Res = NERR_SuCCESS) or (Res = ERROR_MORE_DATA) then
    begin
      for i := 0 to EntriesRead - 1 do
        Servers.Add(TServerArr(UserInfo^)[i].sv101_name);

//      NetApiBufferFree(UserInfo);
    end;
  until Res <> ERROR_MORE_DATA;
  Result:=Servers.text;
  Servers.Free;
  UserInfo := nil;
end;


end.



































