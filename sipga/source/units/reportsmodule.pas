unit ReportsModule;

interface

uses
  SysUtils, Classes, frxExportMail, frxExportTXT, frxExportCSV,
  frxExportText, frxExportImage, frxExportRTF, frxClass, frxGZip,
  frxExportXML, frxExportXLS, frxExportHTML, frxExportPDF, frxBarcode,
  frxRich, frxDMPExport, frxCross, frxDCtrl, frxOLE, frxChBox,
  frxADOComponents, frxDesgn, GlobalModule;

type
  TDMReports = class(TDataModule)
    RptView: TfrxReport;
    RptDesigner: TfrxDesigner;
    frxADOComponents1: TfrxADOComponents;
    frxCheckBoxObject1: TfrxCheckBoxObject;
    frxOLEObject1: TfrxOLEObject;
    frxDialogControls1: TfrxDialogControls;
    frxCrossObject1: TfrxCrossObject;
    frxDotMatrixExport1: TfrxDotMatrixExport;
    frxRichObject1: TfrxRichObject;
    frxBarCodeObject1: TfrxBarCodeObject;
    frxPDFExport1: TfrxPDFExport;
    frxBMPExport1: TfrxBMPExport;
    frxHTMLExport1: TfrxHTMLExport;
    frxJPEGExport1: TfrxJPEGExport;
    frxTIFFExport1: TfrxTIFFExport;
    frxXLSExport1: TfrxXLSExport;
    frxXMLExport1: TfrxXMLExport;
    frxGZipCompressor1: TfrxGZipCompressor;
    frxRTFExport1: TfrxRTFExport;
    frxGIFExport1: TfrxGIFExport;
    frxSimpleTextExport1: TfrxSimpleTextExport;
    frxCSVExport1: TfrxCSVExport;
    frxTXTExport1: TfrxTXTExport;
    frxMailExport1: TfrxMailExport;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ShowReportGaji(sFile, TA, BULAN, sCari: String; Jenis: Integer;
        TTDTgl: TDateTime; SelectedMenu: TMyMenu; UseSubUnit: Boolean=False);
    procedure DesignReportGaji(sFile, TA, BULAN, sCari: String; Jenis: Integer;
        TTDTgl: TDateTime; SelectedMenu: TMyMenu; UseSubUnit: Boolean=False);
    procedure ShowReportRapel(sFile, TA, BULAN, TMBulan, TMTahun, sCari: String; Jenis: Integer;
        TTDTgl: TDateTime; SelectedMenu: TMyMenu; UseSubUnit: Boolean=False);
    procedure DesignReportRapel(sFile, TA, BULAN, TMBulan, TMTahun, sCari: String; Jenis: Integer;
        TTDTgl: TDateTime; SelectedMenu: TMyMenu; UseSubUnit: Boolean=False);
    procedure ShowReportMonitoring(sFile, TA, BULAN, sCari: String; SelectedMenu: TMyMenu);
    procedure DesignReportMonitoring(sFile, TA, BULAN, sCari: String; SelectedMenu: TMyMenu);
    procedure ShowReportPegawai(sFile, NIP, TA, Bulan: String; TTDTgl: TDateTime);
    procedure DesignReportPegawai(sFile, NIP, TA, Bulan: String; TTDTgl: TDateTime);
  end;

var
  DMReports: TDMReports;

implementation

{$R *.dfm}

procedure TDMReports.ShowReportGaji(sFile, TA, BULAN, sCari: String; Jenis: Integer;
    TTDTgl: TDateTime; SelectedMenu: TMyMenu; UseSubUnit: Boolean=False);
begin
  RptView.LoadFromFile(sFile);
  RptView.Script.Variables['UnitKd']:= SelectedMenu.SKPDKd;
  RptView.Script.Variables['Tahun']:= TA;
  RptView.Script.Variables['Bulan']:= BULAN;
  RptView.Script.Variables['GolKd']:= SelectedMenu.GolKd;
  RptView.Script.Variables['GolonganKd']:= SelectedMenu.GolonganKd;
  RptView.Script.Variables['UserId']:= GModule.UserID;
  RptView.Script.Variables['Jenis']:= IntToStr(Jenis);
  if (UseSubUnit) then
    RptView.Script.Variables['SubUnit']:= '1'
  else RptView.Script.Variables['SubUnit']:= '0';
  RptView.Script.Variables['Cari']:= sCari;
  RptView.Script.Variables['TglTTD']:= DateToStr(TTDTgl);
  RptView.ShowReport(True);
end;

procedure TDMReports.DesignReportGaji(sFile, TA, BULAN, sCari: String; Jenis: Integer;
    TTDTgl: TDateTime; SelectedMenu: TMyMenu; UseSubUnit: Boolean=False);
begin
  RptView.Clear;
  RptDesigner.OpenDir:= ExtractFilePath(sFile);
  RptDesigner.SaveDir:= ExtractFilePath(sFile);
  RptView.LoadFromFile(sFile);
  RptView.Script.Variables['UnitKd']:= SelectedMenu.SKPDKd;
  RptView.Script.Variables['Tahun']:= TA;
  RptView.Script.Variables['Bulan']:= BULAN;
  RptView.Script.Variables['GolKd']:= SelectedMenu.GolKd;
  RptView.Script.Variables['GolonganKd']:= SelectedMenu.GolonganKd;
  RptView.Script.Variables['UserId']:= GModule.UserID;
  RptView.Script.Variables['Jenis']:= IntToStr(Jenis);
  if (UseSubUnit) then
    RptView.Script.Variables['SubUnit']:= '1'
  else RptView.Script.Variables['SubUnit']:= '0';
  RptView.Script.Variables['Cari']:= sCari;
  RptView.Script.Variables['TglTTD']:= DateToStr(TTDTgl);
  RptView.DesignReport;
end;

procedure TDMReports.ShowReportRapel(sFile, TA, BULAN, TMBulan, TMTahun, sCari: String; Jenis: Integer;
        TTDTgl: TDateTime; SelectedMenu: TMyMenu; UseSubUnit: Boolean=False);
begin
  RptView.LoadFromFile(sFile);
  RptView.Script.Variables['UnitKd']:= SelectedMenu.SKPDKd;
  RptView.Script.Variables['Tahun']:= TA;
  RptView.Script.Variables['Bulan']:= BULAN;
  RptView.Script.Variables['TM_Tahun']:= TMTahun;
  RptView.Script.Variables['TM_Bulan']:= TMBulan;
  RptView.Script.Variables['GolKd']:= SelectedMenu.GolKd;
  RptView.Script.Variables['GolonganKd']:= SelectedMenu.GolonganKd;
  RptView.Script.Variables['UserId']:= GModule.UserID;
  RptView.Script.Variables['Jenis']:= IntToStr(Jenis);
  if (UseSubUnit) then
    RptView.Script.Variables['SubUnit']:= '1'
  else RptView.Script.Variables['SubUnit']:= '0';
  RptView.Script.Variables['Cari']:= sCari;
  RptView.Script.Variables['TglTTD']:= DateToStr(TTDTgl);
  RptView.ShowReport(True);
end;

procedure TDMReports.DesignReportRapel(sFile, TA, BULAN, TMBulan, TMTahun, sCari: String; Jenis: Integer;
        TTDTgl: TDateTime; SelectedMenu: TMyMenu; UseSubUnit: Boolean=False);
begin
  RptView.Clear;
  RptDesigner.OpenDir:= ExtractFilePath(sFile);
  RptDesigner.SaveDir:= ExtractFilePath(sFile);
  RptView.LoadFromFile(sFile);
  RptView.Script.Variables['UnitKd']:= SelectedMenu.SKPDKd;
  RptView.Script.Variables['Tahun']:= TA;
  RptView.Script.Variables['Bulan']:= BULAN;
  RptView.Script.Variables['TM_Tahun']:= TMTahun;
  RptView.Script.Variables['TM_Bulan']:= TMBulan;
  RptView.Script.Variables['GolKd']:= SelectedMenu.GolKd;
  RptView.Script.Variables['GolonganKd']:= SelectedMenu.GolonganKd;
  RptView.Script.Variables['UserId']:= GModule.UserID;
  RptView.Script.Variables['Jenis']:= IntToStr(Jenis);
  if (UseSubUnit) then
    RptView.Script.Variables['SubUnit']:= '1'
  else RptView.Script.Variables['SubUnit']:= '0';
  RptView.Script.Variables['Cari']:= sCari;
  RptView.Script.Variables['TglTTD']:= DateToStr(TTDTgl);
  RptView.DesignReport;
end;

procedure TDMReports.ShowReportMonitoring(sFile, TA, BULAN, sCari: String; SelectedMenu: TMyMenu);
begin
  RptView.LoadFromFile(sFile);
  RptView.Script.Variables['UnitKd']:= SelectedMenu.SKPDKd;
  RptView.Script.Variables['Tahun']:= TA;
  RptView.Script.Variables['Bulan']:= BULAN;
  RptView.Script.Variables['GolKd']:= SelectedMenu.GolKd;
  RptView.Script.Variables['GolonganKd']:= SelectedMenu.GolonganKd;
  RptView.Script.Variables['UserId']:= GModule.UserID;
  RptView.Script.Variables['Cari']:= sCari;
  if (SelectedMenu.ID=0) then
    RptView.Script.Variables['SubUnit']:= '1'
  else RptView.Script.Variables['SubUnit']:= '0';
  RptView.ShowReport(True);
end;

procedure TDMReports.DesignReportMonitoring(sFile, TA, BULAN, sCari: String; SelectedMenu: TMyMenu);
begin
  RptView.Clear;
  RptDesigner.OpenDir:= ExtractFilePath(sFile);
  RptDesigner.SaveDir:= ExtractFilePath(sFile);
  RptView.LoadFromFile(sFile);
  RptView.Script.Variables['UnitKd']:= SelectedMenu.SKPDKd;
  RptView.Script.Variables['Tahun']:= TA;
  RptView.Script.Variables['Bulan']:= BULAN;
  RptView.Script.Variables['GolKd']:= SelectedMenu.GolKd;
  RptView.Script.Variables['GolonganKd']:= SelectedMenu.GolonganKd;
  RptView.Script.Variables['UserId']:= GModule.UserID;
  RptView.Script.Variables['Cari']:= sCari;
  if (SelectedMenu.ID=0) then
    RptView.Script.Variables['SubUnit']:= '1'
  else RptView.Script.Variables['SubUnit']:= '0';
  RptView.DesignReport;
end;

procedure TDMReports.ShowReportPegawai(sFile, NIP, TA, Bulan: String; TTDTgl: TDateTime);
begin
  RptView.LoadFromFile(sFile);
  RptView.Script.Variables['NIP']:= NIP;
  RptView.Script.Variables['Tahun']:= TA;
  RptView.Script.Variables['Bulan']:= BULAN;
  RptView.Script.Variables['TglTTD']:= DateToStr(TTDTgl);
  RptView.ShowReport(True);
end;

procedure TDMReports.DesignReportPegawai(sFile, NIP, TA, Bulan: String; TTDTgl: TDateTime);
begin
  RptView.Clear;
  RptDesigner.OpenDir:= ExtractFilePath(sFile);
  RptDesigner.SaveDir:= ExtractFilePath(sFile);
  RptView.LoadFromFile(sFile);
  RptView.Script.Variables['NIP']:= NIP;
  RptView.Script.Variables['Tahun']:= TA;
  RptView.Script.Variables['Bulan']:= BULAN;
  RptView.Script.Variables['TglTTD']:= DateToStr(TTDTgl);
  RptView.DesignReport;
end;

end.
