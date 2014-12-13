unit ReportFrm;

{$I frx.inc}

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Db, frxDesgn, frxClass, frxDCtrl, StrUtils,
  frxChart, frxRich, frxBarcode, ImgList, ComCtrls, ExtCtrls, frxOLE,
  frxCross, frxDMPExport, frxExportImage, frxExportRTF,
  frxExportXML, frxExportXLS, frxExportHTML, frxGZip, frxExportPDF,
  frxADOComponents, frxChBox, frxExportText, frxExportCSV, frxExportMail,
  frxIBXComponents, frxDBXComponents, frxPreview, frxDBSet, ToolWin,
  FMTBcd, SqlExpr, Menus, frxExportTXT, DBCtrls, Mask, ADODB,
  Grids, DBGrids, SMDBGrid;

type
  PReport = ^TReportMenu;
  TReportMenu = record
    FileName: string;
    Param1: string;
    IsSKPD:boolean;
  end;

  TfrmFastReport = class(TForm)
    frxDesigner1: TfrxDesigner;
    frxBarCodeObject1: TfrxBarCodeObject;
    frxRichObject1: TfrxRichObject;
    frxDialogControls1: TfrxDialogControls;
    ImageList1: TImageList;
    frxOLEObject1: TfrxOLEObject;
    frxCrossObject1: TfrxCrossObject;
    frxDotMatrixExport1: TfrxDotMatrixExport;
    frxGZipCompressor1: TfrxGZipCompressor;
    Label4: TLabel;
    frxCheckBoxObject1: TfrxCheckBoxObject;
    Panel3: TPanel;
    ImageList2: TImageList;
    imgButtons: TImageList;
    ilDaftarTV: TImageList;
    pmnuExport: TPopupMenu;
    mnEksTXT: TMenuItem;
    mnEksHTML: TMenuItem;
    mnEksRTF: TMenuItem;
    mnEksXLS: TMenuItem;
    mnEksPDF: TMenuItem;
    mnEksBMP: TMenuItem;
    mnEksJPG: TMenuItem;
    mnEksTIF: TMenuItem;
    pmnuZoom: TPopupMenu;
    N251: TMenuItem;
    N501: TMenuItem;
    N661: TMenuItem;
    N1001: TMenuItem;
    N2001: TMenuItem;
    N4001: TMenuItem;
    SelebarHalaman1: TMenuItem;
    SatuHalaman1: TMenuItem;
    DuaHalaman1: TMenuItem;
    frxReport1: TfrxReport;
    cbrLaporan: TCoolBar;
    tbLaporan1: TToolBar;
    tbDesign: TToolButton;
    ToolButton5: TToolButton;
    tbBukaFile: TToolButton;
    tbZoom: TToolButton;
    ToolButton9: TToolButton;
    tbEksport: TToolButton;
    ToolButton11: TToolButton;
    tbCetak: TToolButton;
    ReporttBLDs: TDataSource;
    ReportTbl: TADOQuery;
    ReportRef: TADOQuery;
    RptQuery: TADOQuery;
    Splitter1: TSplitter;
    Panel1: TPanel;
    Panel4: TPanel;
    TreeMenu: TTreeView;
    Panel5: TPanel;
    btnEdit: TButton;
    qryUnit: TADOQuery;
    dsUnit: TDataSource;
    Panel6: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBNavigator1: TDBNavigator;
    DBNavigator2: TDBNavigator;
    DBCheckBox1: TDBCheckBox;
    frxPDFExport1: TfrxPDFExport;
    frxHTMLExport1: TfrxHTMLExport;
    frxXLSExport1: TfrxXLSExport;
    frxXMLExport1: TfrxXMLExport;
    frxRTFExport1: TfrxRTFExport;
    frxBMPExport1: TfrxBMPExport;
    frxJPEGExport1: TfrxJPEGExport;
    frxTIFFExport1: TfrxTIFFExport;
    frxGIFExport1: TfrxGIFExport;
    frxSimpleTextExport1: TfrxSimpleTextExport;
    frxCSVExport1: TfrxCSVExport;
    frxMailExport1: TfrxMailExport;
    frxTXTExport1: TfrxTXTExport;
    frxADOComponents1: TfrxADOComponents;
    Panel2: TPanel;
    Splitter2: TSplitter;
    Panel7: TPanel;
    btnClose: TButton;
    SMDBGrid1: TSMDBGrid;
    frxPreview1: TfrxPreview;
    procedure TreeMenuCustomDrawItem(Sender: TCustomTreeView; Node: TTreeNode;
      State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure TreeMenuChange(Sender: TObject; Node: TTreeNode);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tbCetakClick(Sender: TObject);
    procedure tbBukaFileClick(Sender: TObject);
    procedure tbDesignClick(Sender: TObject);
    procedure tbEditClick(Sender: TObject);
    procedure N251Click(Sender: TObject);
    procedure mnEksTXTClick(Sender: TObject);
    procedure SelebarHalaman1Click(Sender: TObject);
    procedure SatuHalaman1Click(Sender: TObject);
    procedure DuaHalaman1Click(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure qryUnitAfterScroll(DataSet: TDataSet);
    procedure qryUnitBeforeInsert(DataSet: TDataSet);
  private
    { Private declarations }
//    WPath: String;
  public
    { Public declarations }
    RptPath:string;
    procedure MenuUpdate;
  end;

var
  frmFastReport: TfrmFastReport;

implementation

uses GlobalModule;




{$R *.DFM}

procedure TfrmFastReport.TreeMenuCustomDrawItem(Sender: TCustomTreeView;
  Node: TTreeNode; State: TCustomDrawState; var DefaultDraw: Boolean);
begin
{  if Node.Count <> 0 then
    Tree.Canvas.Font.Style := [fsBold];}
end;

procedure TfrmFastReport.TreeMenuChange(Sender: TObject; Node: TTreeNode);
begin
  if Node.StateIndex = -1 then
  begin
    TreeMenu.FullCollapse;
    //Node[0].Selected := True;
  end
  else
  begin
    try
      frxReport1.LoadFromFile(RptPath + PReport(Node.Data)^.FileName + '.fr3');
      if PReport(Node.Data)^.IsSKPD then
        begin
          frxReport1.Script.Variables['UnitKd']:=qryUnit.FieldByName('UnitKd').AsString;
          frxReport1.Script.Variables['TahunAnggaran']:=GModule.Tahun;
        end;
      frxReport1.ShowReport(True);
      Application.ProcessMessages;
      // ----
      cbrLaporan.Enabled:=True;
    except
    end;
  end;
end;

procedure TfrmFastReport.MenuUpdate;
Var TreeNode:TTreeNode;
    OReport:PReport;
    RptFile:String;
begin
  TreeNode:=TTreeNode.Create(Nil);
  TreeMenu.Items.Clear;
    ReportRef.Close;
    ReportRef.Open;
    ReportRef.First;
    While Not ReportRef.Eof do
    begin
      if TreeMenu.Items.Count=0 then
      begin
         TreeNode:=TreeMenu.Items.Add(Nil,ReportRef.FieldByName('Caption').AsString);
         TreeNode.StateIndex:=-1;
      end
      else
      begin
         TreeNode:=TreeMenu.Items.Add(TreeNode,ReportRef.FieldByName('Caption').AsString);
         TreeNode.StateIndex:=-1;
      end;
      rptQuery.Close;
      rptQuery.SQL.Text:='SELECT * FROM tblReport WHERE UPLINEID='+ReportRef.FieldByName('ReportID').AsString+
              ' ORDER BY REPORTID';
      rptQuery.Open;
      While Not rptQuery.Eof do
      begin
        RptFile:=ExtractFilePath(Application.ExeName)+rptQuery.FieldByName('ReportFile').AsString;
        if (FileExists(RptFile+'.fr3'))then
        begin
          New(OReport);
          OReport.FileName:=rptQuery.FieldByName('ReportFile').AsString;
          OReport.IsSKPD:=rptQuery.FieldByName('IsSKPD').AsBoolean;
          with TreeMenu.Items.AddChildObject(TreeNode,rptQuery.FieldByName('Caption').AsString,OReport) do
          begin
            ImageIndex:=1;
            StateIndex:=1;
          end;
        end;
        rptQuery.Next;
      end;
      TreeNode.Expand(True);
      ReportRef.Next;
  end;
end;
procedure TfrmFastReport.FormCreate(Sender: TObject);
begin
  qryUnit.Close;
  qryUnit.Filtered:= False;
  qryUnit.Open;
  if (not (GModule.IsAllSKPD)) then
    begin
      if (not GModule.IsAccessSub) then
        begin
          qryUnit.Filter:= 'UnitKd=' + QuotedStr(GModule.UnitKd);
          qryUnit.Filtered:= True;
        end
      else
        begin
          qryUnit.Filter:= 'UnitKd Like ' + QuotedStr(GModule.UnitKd + '%');
          qryUnit.Filtered:= True;
        end;
    end;
  RptPath:=ExtractFilePath(Application.ExeName);
 //  TreeNode:=TTreeNode.Create(Nil);
  //Tree.Items.AddNode AddFirst(Nil,'A');
end;

procedure TfrmFastReport.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=caFree;
end;

procedure TfrmFastReport.tbCetakClick(Sender: TObject);
begin
  frxReport1.Print;
end;

procedure TfrmFastReport.tbBukaFileClick(Sender: TObject);
begin
    //frxReport1.ShowReport(true);
    if treeMenu.Selected<>Nil then
      TreeMenuChange(Nil,TreeMenu.Selected);
end;

procedure TfrmFastReport.tbDesignClick(Sender: TObject);
begin
  frxReport1.DesignReport;
end;

procedure TfrmFastReport.tbEditClick(Sender: TObject);
begin
  //frxReport1.Edit;
end;

procedure TfrmFastReport.N251Click(Sender: TObject);
begin
  frxPreview1.ZoomMode := zmDefault;
  frxPreview1.Zoom     := TMenuItem(Sender).Tag/100;
end;

procedure TfrmFastReport.mnEksTXTClick(Sender: TObject);
begin
  case TMenuItem(Sender).Tag of
    1 : frxReport1.Export(frxTXTExport1);
    2 : frxReport1.Export(frxHTMLExport1);
    3 : frxReport1.Export(frxRTFExport1);
    4 : frxReport1.Export(frxXLSExport1);
    5 : frxReport1.Export(frxPDFExport1);
    6 : frxReport1.Export(frxBMPExport1);
    7 : frxReport1.Export(frxJPEGExport1);
    8 : frxReport1.Export(frxTIFFExport1);
  end;
  frxReport1.PrepareReport;
end;

procedure TfrmFastReport.SelebarHalaman1Click(Sender: TObject);
begin
  frxPreview1.ZoomMode := zmWholePage;
end;

procedure TfrmFastReport.SatuHalaman1Click(Sender: TObject);
begin
  frxPreview1.ZoomMode := zmPageWidth;

end;

procedure TfrmFastReport.DuaHalaman1Click(Sender: TObject);
begin
  frxPreview1.ZoomMode := zmManyPages;
end;

procedure TfrmFastReport.btnEditClick(Sender: TObject);
begin
    if btnEdit.Caption='&Edit' then
    begin
      ReportTbl.Open;
      Panel6.Visible:=True;
      btnEdit.Caption:='&Hide' 
    end else
    begin
      ReportTbl.Close;
      Panel6.Visible:=False;
      btnEdit.Caption:='&Edit'; 
      MenuUpdate;
    end;
end;

procedure TfrmFastReport.FormShow(Sender: TObject);
begin
  MenuUpdate;
  Panel2.Visible:= (GModule.IsAllSKPD) or ((not GModule.IsAllSKPD) and (GModule.IsAccessSub));
  Splitter1.Visible:= (GModule.IsAllSKPD) or ((not GModule.IsAllSKPD) and (GModule.IsAccessSub));
end;

procedure TfrmFastReport.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmFastReport.qryUnitAfterScroll(DataSet: TDataSet);
begin
  //if treeMenu.Selected<>Nil then
  //    TreeMenuChange(Nil,TreeMenu.Selected);
end;

procedure TfrmFastReport.qryUnitBeforeInsert(DataSet: TDataSet);
begin
  Abort;
end;

end.

