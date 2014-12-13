unit FPrintRekapGaji;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus, ExtCtrls, Mask, ToolEdit, DateUtils;

type
  TfrmPrintRekapGaji = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    btnPrint: TButton;
    btnClose: TButton;
    pmF1: TPopupMenu;
    DesignEdit1: TMenuItem;
    rgOption: TRadioGroup;
    Label67: TLabel;
    tglTTD: TDateEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnPrintClick(Sender: TObject);
    procedure DesignEdit1Click(Sender: TObject);
  private
    { Private declarations }
    function GetReportFile: String;
  public
    { Public declarations }
    sTahun, sBulan: string;
    RJenis, NoUrut: Integer;
    SP2DDate: TDateTime;
    BatasTglGaji: TDateTime;
  end;

procedure ShowRekapGaji(const aTahun, aBulan: string; const aRJenis,
  aUrut: Integer; const sDate, sDate2: TDateTime);

var
  frmPrintRekapGaji: TfrmPrintRekapGaji;

implementation

{$R *.dfm}

uses GlobalModule, ReportsModule;

procedure ShowRekapGaji(const aTahun, aBulan: string; const aRJenis,
  aUrut: Integer; const sDate, sDate2: TDateTime);
begin
  if (frmPrintRekapGaji=nil) then frmPrintRekapGaji:= TfrmPrintRekapGaji.Create(nil);
  with frmPrintRekapGaji do
    begin
      sTahun:= aTahun;
      sBulan:= aBulan;
      RJenis:= aRJenis;
      NoUrut:= aUrut;
      SP2DDate:= sDate;
      BatasTglGaji:= sDate2;
      TglTTD.Date:= Now;
      ShowModal;
    end;
  frmPrintRekapGaji:= nil;
end;

function TfrmPrintRekapGaji.GetReportFile: String;
begin
  if (rgOption.ItemIndex=1) then
    Result:= GModule.Path + 'Rpt-Laporan\TerimaSSP.fr3'
  else
    Result:= GModule.Path + 'Rpt-Laporan\RekapGaji.fr3';
end;

procedure TfrmPrintRekapGaji.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TfrmPrintRekapGaji.btnPrintClick(Sender: TObject);
var F: String;
begin
  F:= GetReportFile;
  DMReports.RptView.LoadFromFile(F);
  DMReports.RptView.Script.Variables['Tahun']:= sTahun;
  DMReports.RptView.Script.Variables['Bulan']:= sBulan;
  DMReports.RptView.Script.Variables['RJenis']:= IntToStr(RJenis);
  DMReports.RptView.Script.Variables['NoUrut']:= IntToStr(NoUrut);
  DMReports.RptView.Script.Variables['SP2DDate']:= DateToStr(SP2DDate);
  DMReports.RptView.Script.Variables['TANGGAL_BUAT']:= DateToStr(SP2DDate);
  DMReports.RptView.Script.Variables['TglTTD']:= FormatFloat('00', DayOf(TglTTD.Date)) + ' ' +
      GetNamaBulan(MonthOf(TglTTD.Date)) + ' ' + IntToStr(YearOf(TglTTD.Date));
  DMReports.RptView.ShowReport(True);
end;

procedure TfrmPrintRekapGaji.DesignEdit1Click(Sender: TObject);
var F: String;
begin
  F:= GetReportFile;
  DMReports.RptView.Clear;
  DMReports.RptDesigner.OpenDir:= ExtractFilePath(F);
  DMReports.RptDesigner.SaveDir:= ExtractFilePath(F);
  DMReports.RptView.LoadFromFile(F);
  DMReports.RptView.Script.Variables['Tahun']:= sTahun;
  DMReports.RptView.Script.Variables['Bulan']:= sBulan;
  DMReports.RptView.Script.Variables['RJenis']:= IntToStr(RJenis);
  DMReports.RptView.Script.Variables['NoUrut']:= IntToStr(NoUrut);
  DMReports.RptView.Script.Variables['SP2DDate']:= DateToStr(SP2DDate);
  DMReports.RptView.Script.Variables['TANGGAL_BUAT']:= DateToStr(SP2DDate);
  DMReports.RptView.Script.Variables['TglTTD']:= FormatFloat('00', DayOf(TglTTD.Date)) + ' ' +
      GetNamaBulan(MonthOf(TglTTD.Date)) + ' ' + IntToStr(YearOf(TglTTD.Date));
  DMReports.RptView.DesignReport;
end;

end.
