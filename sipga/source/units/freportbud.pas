unit FReportBUD;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Menus, Mask, ToolEdit, DateUtils;

type
  TfrmReportBUD = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    SMS1: TRadioButton;
    SMS2: TRadioButton;
    btnPrint: TButton;
    btnClose: TButton;
    pmF1: TPopupMenu;
    DesignEdit1: TMenuItem;
    Label67: TLabel;
    tglTTD: TDateEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnPrintClick(Sender: TObject);
    procedure DesignEdit1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    function GetReportFile: String;
  public
    { Public declarations }
    ReportId: Integer;
  end;

var
  frmReportBUD: TfrmReportBUD;

procedure ShowReportBUD(RptId: Integer=0);

implementation

{$R *.dfm}

uses GlobalModule, ReportsModule;

procedure ShowReportBUD(RptId: Integer=0);
begin
  if (frmReportBUD=nil) then frmReportBUD:= TfrmReportBUD.Create(nil);
  frmReportBUD.ReportId:= RptId;
  frmReportBUD.ShowModal;
  frmReportBUD:= nil;
end;

function TfrmReportBUD.GetReportFile: String;
begin
  case ReportId of
  1 : Result:= GModule.Path + 'Rpt-Laporan\RealisasiBUD.fr3';
  2 : Result:= GModule.Path + 'Rpt-Laporan\RealisasiPerGolongan.fr3';
  3 : Result:= GModule.Path + 'Rpt-Laporan\KomposisiPegawai.fr3';
  4 : Result:= GModule.Path + 'Rpt-Laporan\KomposisiGuru.fr3';
  5 : Result:= GModule.Path + 'Rpt-Laporan\KomposisiKesehatan.fr3';
  else Result:= '';
  end;
end;

procedure TfrmReportBUD.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TfrmReportBUD.btnPrintClick(Sender: TObject);
var F: String;
begin
  F:= GetReportFile;
  DMReports.RptView.LoadFromFile(F);
  if (SMS2.Checked) then
    DMReports.RptView.Script.Variables['Semester']:= '2'
  else DMReports.RptView.Script.Variables['Semester']:= '1';
  DMReports.RptView.Script.Variables['Tahun']:= GModule.Tahun;
  DMReports.RptView.Script.Variables['TglTTD']:= DateToStr(TglTTD.Date);
  DMReports.RptView.ShowReport(True);
end;

procedure TfrmReportBUD.DesignEdit1Click(Sender: TObject);
var F: String;
begin
  F:= GetReportFile;
  DMReports.RptView.Clear;
  DMReports.RptDesigner.OpenDir:= ExtractFilePath(F);
  DMReports.RptDesigner.SaveDir:= ExtractFilePath(F);
  DMReports.RptView.LoadFromFile(F);
  if (SMS2.Checked) then
    DMReports.RptView.Script.Variables['Semester']:= '2'
  else DMReports.RptView.Script.Variables['Semester']:= '1';
  DMReports.RptView.Script.Variables['Tahun']:= GModule.Tahun;
  DMReports.RptView.Script.Variables['TglTTD']:= DateToStr(TglTTD.Date);
  DMReports.RptView.DesignReport;
end;

procedure TfrmReportBUD.FormCreate(Sender: TObject);
begin
  TglTTD.Date:= Now;
end;

procedure TfrmReportBUD.FormShow(Sender: TObject);
begin
  case ReportId of
  1 : Caption:= 'Realisasi Gaji Induk Seluruh Pegawai';
  2 : Caption:= 'Realisasi Gaji Induk Pergolongan';
  3 : Caption:= 'Realisasi Komposisi Pegawai';
  4 : Caption:= 'Realisasi Komposisi Guru';
  5 : Caption:= 'Realisasi Komposisi Fungsional';
  else Caption:= 'Realisasi Pembayaran Gaji Induk';
  end;
end;

end.
