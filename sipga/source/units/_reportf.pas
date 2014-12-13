unit _reportf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, OleServer, CRAXDDRT_TLB, OleCtrls,
  CRVIEWER9Lib_TLB, Buttons, Menus, ComCtrls;

type
  TfrmReport = class(TForm)
    CrV: TCRViewer9;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    PrintSetup1: TMenuItem;
    PSD: TPrinterSetupDialog;
    PD: TPrintDialog;
    Keluar1: TMenuItem;
    PageSetup1: TMenuItem;
    PSD2: TPageSetupDialog;
    Grafik1: TMenuItem;
    Kotak2D1: TMenuItem;
    Kotak3D1: TMenuItem;
    Garis1: TMenuItem;
    Pie1: TMenuItem;
    StatusBar1: TStatusBar;
    procedure FormShow(Sender: TObject);
    procedure PrintSetup1Click(Sender: TObject);
    procedure PageSetup1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure CrVReportSourceError(ASender: TObject;
      const errorMsg: WideString; errorCode: Integer;
      var UseDefault: WordBool);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDeactivate(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
    ReportFileNm:String;
    OldPaperSource:TOleEnum;
    Modified:Boolean;
    App  : TCRApplication;
    sReportSub:Array[0..5] of IReport;

    src    : IReport;
//    oGraph : IGraphObject;
//    oText  : ITextObject;
//    oRptObject : IReportObject;
  public
    { Public declarations }

  end;

    function ReportDlg(parReportFileNm:String) : boolean;//S : IReport;

    function OpenReport(const ReportNm: string;  const ParamValues: Variant;
        const ReportSub1:Variant; Const ReportSub1Param:Variant ) : boolean;
    function OpenReportSQL(const ReportNm: string;  const ParamValues: Variant;
        const ReportSub1:Variant; Const ReportSub1Param:Variant ) : boolean;


var
  frmReport: TfrmReport;


implementation

uses GlobalModule;

{$R *.dfm}

function ReportDlg(parReportFileNm:String) : boolean; //S : IReport;
begin
  frmReport.ReportFileNm:=parReportFileNm;
  frmReport.Show;
  Result := True;
end;

procedure TfrmReport.FormShow(Sender: TObject);
begin
  try
    Modified:=False;
  except
    on e:exception do showmessage(e.Message);
  end;
end;

procedure TfrmReport.PrintSetup1Click(Sender: TObject);
begin
  src.PrinterSetup(0);
  if src.PaperSource<>OldPaperSource then Modified:=True;
  Crv.ViewReport;
end;

procedure TfrmReport.PageSetup1Click(Sender: TObject);
begin
  PSD2.MarginTop := src.TopMargin;
  PSD2.MarginBottom := src.BottomMargin;
  PSD2.MarginLeft := src.LeftMargin;
  PSD2.MarginRight := src.RightMargin;
  if PSD2.Execute then
  begin
    src.TopMargin := PSD2.MarginTop;
    src.LeftMargin := PSD2.MarginLeft;
    src.RightMargin := PSD2.MarginRight;
    src.BottomMargin := PSD2.MarginBottom;
    Modified:=True;
    Crv.ViewReport;
  end;
end;

procedure TfrmReport.FormDestroy(Sender: TObject);
//var i:integer;
begin
{  if assigned(src) then FreeAndNil(SRC);
  if assigned(app) then
  begin
    FreeAndNil(APP);
  end;}
end;

procedure TfrmReport.CrVReportSourceError(ASender: TObject;
  const errorMsg: WideString; errorCode: Integer;
  var UseDefault: WordBool);
begin
   showmessage(errorMsg);
end;

procedure TfrmReport.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if modified and (ReportFileNm<>'') and
    (MessageDlg('Simpan Perubahan?',mtConfirmation,[mbYes,mbNo],0)=mrYes) then
  begin
    If FileExists(ReportFileNm) and FileExists(ChangeFileExt(ReportFileNm,'.tmp')) then
      DeleteFile(ReportFileNm);
    src.Save(ReportFileNm);
  end;
  CanClose:=True;
end;

procedure TfrmReport.FormClose(Sender: TObject; var Action: TCloseAction);
var i:integer;
begin
{  try
  For I:=0 to CRV.ViewCount-1 do
   crv.CloseView(i);
 except
 end;  }
  //CrV.ReportSource := Nil;
  For I:=0 to High(sReportSub)-1 do
    If Assigned(sReportSub[i]) then
    begin
        sReportSub[i]._Release;
        sReportSub[i]:=Nil;
    end;
  src._Release;
  src:=Nil;
  app.Free;

  //Action:=caFree;
  //crv.Free;
end;

function OpenReport(const ReportNm: string;
  const ParamValues: Variant; const ReportSub1:Variant;
  Const ReportSub1Param:Variant ) : boolean;
var i,j:word;
    sr:TSearchRec;
    FoundFile:Boolean;
    WasSearch:Boolean;
    FileAttrs :Integer;
begin
  //ShowMessage(ExtractFilePath(ReportNm));
  //abort;
  With frmReport do
  begin
    WasSearch:=false;
    FileAttrs:=faAnyFile;
    repeat
      FoundFile:=false;
      if WasSearch then
      begin
        if FindNext(sr) = 0 then
        begin
          FoundFile:=true;
        end else
        begin
          FindClose(sr);
          WasSearch:=False;
        end;
      end else
      begin
        if FindFirst(ExtractFilePath(ReportNm)+'*.tmp', FileAttrs, sr) = 0 then
          FoundFile:=true;
      end;
      If foundfile then
      begin
         DeleteFile(ExtractFilePath(ReportNm)+sr.Name);
         WasSearch:=True;
      end;
    until not foundfile;

    CopyFile(PAnsiChar(ReportNm),PAnsiChar(ReportNm+'.tmp'),True);

    App:=TCRApplication.Create(Nil);
    //sReport:=
    src:=App.OpenReport(ReportNm+'.tmp',1);

    //sReport
    src.DiscardSavedData;

    If VarIsArray(ReportSub1) then
    begin
      for i:=VarArrayLowBound(ReportSub1,1) to VarArrayHighBound(ReportSub1,1) do
      begin
        sReportSub[i]:=src.OpenSubreport(ReportSub1[i]);//sReport
        sReportSub[i].DiscardSavedData;
        with  sReportSub[i].Database.Tables do
        begin
          for   j := 1 to Count do begin
            try
              Item[j]._Release;
              Item[j].ConnectBufferString:=gModule.CRDBConnString;
            except
               on e:Exception do
               showmessage(e.Message);
           end;
          end;
        end;
      end;
    end
    else if ReportSub1<>'' then
    begin
      sReportSub[0]:=src.OpenSubreport(ReportSub1);//sReport
      sReportSub[0].DiscardSavedData;

      with  sReportSub[0].Database.Tables do
        for   j := 1 to Count do
        begin
          try
            Item[j]._Release;
            Item[j].ConnectBufferString:=GModule.CRDBConnString;
          except
            on e:Exception do
            showmessage(e.Message);
          end;
        end;

      If VarIsArray(ReportSub1Param) then
        for i:=VarArrayLowBound(ReportSub1Param,1) to VarArrayHighBound(ReportSub1Param,1) do
        begin
          try
            sReportSub[0].ParameterFields.Item[i+1].ClearCurrentValueAndRange;
            sReportSub[0].ParameterFields.Item[i+1].AddCurrentValue(ReportSub1Param[i]);
          except
          end;

        end;
    end;

    with  src.Database.Tables do//sReport
      for j := 1 to Count do
      begin
        try
          Item[j]._Release;
          Item[j].ConnectBufferString:=GModule.CRDBConnString;
        except
          //ShowMessage('Silahkan keluar dari aplikasi ');
          on e:Exception do
          showmessage(e.Message);
        end;
      end;

    If VarIsArray(ParamValues) then
      for i:=VarArrayLowBound(ParamValues,1) to VarArrayHighBound(ParamValues,1) do
      begin
        try
        src.ParameterFields.Item[i+1].ClearCurrentValueAndRange;
        src.ParameterFields.Item[i+1].AddCurrentValue(ParamValues[i]);
        except
          on e:exception do
          showmessage(e.Message);
        end;
      end
    else If ParamValues<>'' then
      src.ParameterFields.Item[1].AddCurrentValue(ParamValues);

    ReportFileNm:=ReportNm;
    CrV.ReportSource := src;
    CrV.ViewReport;
    Show;
    //OldPaperSource:=Src.PaperSource;
    Result:=True;
  end;
end;


function OpenReportSQL(const ReportNm: string;
  const ParamValues: Variant; const ReportSub1:Variant;
  Const ReportSub1Param:Variant ) : boolean;
var i,j:word;
    sr:TSearchRec;
    FoundFile:Boolean;
    WasSearch:Boolean;
    FileAttrs :Integer;
begin
  //ShowMessage(ExtractFilePath(ReportNm));
  //abort;
  With frmReport do
  begin
    WasSearch:=false;
    FileAttrs:=faAnyFile;
    repeat
      FoundFile:=false;
      if WasSearch then
      begin
        if FindNext(sr) = 0 then
        begin
          FoundFile:=true;
        end else
        begin
          FindClose(sr);
          WasSearch:=False;
        end;
      end else
      begin
        if FindFirst(ExtractFilePath(ReportNm)+'*.tmp', FileAttrs, sr) = 0 then
          FoundFile:=true;
      end;
      If foundfile then
      begin
         DeleteFile(ExtractFilePath(ReportNm)+sr.Name);
         WasSearch:=True;
      end;
    until not foundfile;

    CopyFile(PAnsiChar(ReportNm),PAnsiChar(ReportNm+'.tmp'),True);

    App:=TCRApplication.Create(Nil);
    //sReport:=
    src:=App.OpenReport(ReportNm+'.tmp',1);

    //sReport
    src.DiscardSavedData;

    If VarIsArray(ReportSub1) then
    begin
      for i:=VarArrayLowBound(ReportSub1,1) to VarArrayHighBound(ReportSub1,1) do
      begin
        sReportSub[i]:=src.OpenSubreport(ReportSub1[i]);//sReport
        sReportSub[i].DiscardSavedData;
        with  sReportSub[i].Database.Tables do
        begin
          for   j := 1 to Count do begin
            try
              Item[j]._Release;
              Item[j].ConnectBufferString:=gModule.CRDBConnString;
            except
               on e:Exception do
               showmessage(e.Message);
           end;
          end;
        end;
      end;
    end
    else if ReportSub1<>'' then
    begin
      sReportSub[0]:=src.OpenSubreport(ReportSub1);//sReport
      sReportSub[0].DiscardSavedData;

      with  sReportSub[0].Database.Tables do
        for   j := 1 to Count do
        begin
          try
            Item[j]._Release;
            Item[j].ConnectBufferString:=GModule.CRDBConnString;
          except
            on e:Exception do
            showmessage(e.Message);
          end;
        end;

      If VarIsArray(ReportSub1Param) then
      begin
        for i:=VarArrayLowBound(ReportSub1Param,1) to VarArrayHighBound(ReportSub1Param,1) do
        begin
          try
            sReportSub[0].ParameterFields.Item[i+1].ClearCurrentValueAndRange;
            sReportSub[0].ParameterFields.Item[i+1].AddCurrentValue(ReportSub1Param[i]);
          except
          end;
        end;
      end else
      begin
        If ReportSub1Param<>'' then
        begin
          try
              sReportSub[0].ParameterFields.Item[i+1].ClearCurrentValueAndRange;
              sReportSub[0].ParameterFields.Item[i+1].AddCurrentValue(ReportSub1Param);
          except
            on e:Exception do
            showmessage(e.Message);
          end;
        end
      end;
    end;

    with  src.Database.Tables do//sReport
      for j := 1 to Count do
      begin
        try
          Item[j]._Release;
          Item[j].ConnectBufferString:=GModule.CRDBConnString;
        except
          //ShowMessage('Silahkan keluar dari aplikasi ');
          on e:Exception do
          showmessage(e.Message);
        end;
      end;

    If VarIsArray(ParamValues) then
      for i:=VarArrayLowBound(ParamValues,1) to VarArrayHighBound(ParamValues,1) do
      begin
        try
        src.ParameterFields.Item[i+1].ClearCurrentValueAndRange;
        src.ParameterFields.Item[i+1].AddCurrentValue(ParamValues[i]);
        except
          on e:exception do
          showmessage(e.Message);
        end;
      end
    else If ParamValues<>'' then
      src.ParameterFields.Item[1].AddCurrentValue(ParamValues);

    ReportFileNm:=ReportNm;
    CrV.ReportSource := src;
    CrV.ViewReport;
    ShowModal;
    //OldPaperSource:=Src.PaperSource;
    Result:=True;
  end;
end;

procedure TfrmReport.FormDeactivate(Sender: TObject);
begin
//  Close;
end;

procedure TfrmReport.FormResize(Sender: TObject);
begin
// if WindowState=wsMinimized then   Close;

end;

end.




