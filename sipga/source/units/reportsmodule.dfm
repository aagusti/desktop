object DMReports: TDMReports
  OldCreateOrder = False
  Left = 530
  Top = 40
  Height = 554
  Width = 815
  object RptView: TfrxReport
    Version = '3.22'
    DotMatrixReport = True
    IniFile = '\Software\Fast Reports'
    PreviewOptions.AllowEdit = False
    PreviewOptions.Buttons = [pbPrint, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator, pbExportQuick]
    PreviewOptions.OutlineVisible = True
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    ReportOptions.CreateDate = 39925.349239907400000000
    ReportOptions.LastChange = 39932.638455393520000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var'
      '  Bulan : array [0..12] of string;'
      '  Tahun, BulanKe : integer;'
      '  NamaBulan: String;'
      '  zeroVal : Double;'
      ''
      
        'procedure ReplaceStr(var Source: string; ToReplace, ReplaceWith:' +
        ' string);'
      'var'
      '  x : integer;'
      'begin'
      '  x := Pos(ToReplace, Source);'
      '  while x > 0 do'
      '  begin'
      '    DeleteStr(Source, x, length(ToReplace));'
      '    Insert(ReplaceWith, Source, x);'
      '    x := Pos(ToReplace, Source);'
      '  end;'
      'end;'
      ''
      'procedure DialogPage1OnShow(Sender: TfrxComponent);'
      'var'
      '  i : integer;'
      'begin'
      '  cbBulan.Items.Clear;'
      '  for i := 1 to 12 do'
      '    cbBulan.Items.Add( Bulan[i] );'
      '  cbBulan.ItemIndex := MonthOf(Date) - 1;'
      '  edtTahun.Text:=IntToStr(YearOf(Date));'
      '  dtTanggal.Date := Date;'
      'end;'
      ''
      'procedure Button1OnClick(Sender: TfrxComponent);'
      'begin'
      '  Tahun := strtoint( edtTahun.Text );'
      '  NamaBulan := Bulan[cbBulan.ItemIndex + 1];'
      'end;'
      ''
      'begin'
      '  Bulan[00] := '#39#39';'
      '  Bulan[01] := '#39'Januari'#39';'
      '  Bulan[02] := '#39'Februari'#39';'
      '  Bulan[03] := '#39'Maret'#39';'
      '  Bulan[04] := '#39'April'#39';'
      '  Bulan[05] := '#39'Mei'#39';'
      '  Bulan[06] := '#39'Juni'#39';'
      '  Bulan[07] := '#39'Juli'#39';'
      '  Bulan[08] := '#39'Agustus'#39';'
      '  Bulan[09] := '#39'September'#39';'
      '  Bulan[10] := '#39'Oktober'#39';'
      '  Bulan[11] := '#39'November'#39';'
      '  Bulan[12] := '#39'Desember'#39';'
      ''
      '  zeroVal := 0;'
      'end.')
    Left = 28
    Top = 16
    Datasets = <
      item
        DataSet = RptView.qryReport
        DataSetName = 'qryReport'
      end>
    Variables = <>
    Style = <>
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      DataSetName = 'QryReport'
      object Memo1: TfrxMemoView
        Left = 3.779530000000000000
        Top = 41.574830000000000000
        Width = 94.488250000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8 = (
          '[QryReport."KUNJUNGAN_ID"]')
        ParentFont = False
      end
    end
    object DialogPage1: TfrxDialogPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Height = 200.000000000000000000
      Left = 405.000000000000000000
      Top = 151.000000000000000000
      Width = 240.000000000000000000
      OnShow = 'DialogPage1OnShow'
      object cbBulan: TfrxComboBoxControl
        Left = 96.000000000000000000
        Top = 32.000000000000000000
        Width = 101.000000000000000000
        Height = 21.000000000000000000
        Color = clWindow
        Text = 'cbBulan'
        ItemIndex = -1
      end
      object edtTahun: TfrxEditControl
        Left = 96.000000000000000000
        Top = 4.000000000000000000
        Width = 57.000000000000000000
        Height = 21.000000000000000000
        Color = clWindow
        MaxLength = 0
        PasswordChar = #0
        Text = 'edtTahun'
      end
      object Label1: TfrxLabelControl
        Left = 8.000000000000000000
        Top = 4.000000000000000000
        Width = 30.000000000000000000
        Height = 13.000000000000000000
        Caption = 'Tahun'
        Color = clBtnFace
        OnClick = 'Label1OnClick'
      end
      object Label2: TfrxLabelControl
        Left = 8.000000000000000000
        Top = 32.000000000000000000
        Width = 26.000000000000000000
        Height = 13.000000000000000000
        Caption = 'Bulan'
        Color = clBtnFace
        OnClick = 'Label1OnClick'
      end
      object dtTanggal: TfrxDateEditControl
        Left = 96.000000000000000000
        Top = 60.000000000000000000
        Width = 100.000000000000000000
        Height = 21.000000000000000000
        Color = clWindow
        Date = 39526.402435972200000000
        Time = 39526.402435972200000000
      end
      object Label3: TfrxLabelControl
        Left = 4.000000000000000000
        Top = 64.000000000000000000
        Width = 80.000000000000000000
        Height = 13.000000000000000000
        Caption = 'Tanggal Laporan'
        Color = clBtnFace
        OnClick = 'Label1OnClick'
      end
      object Button1: TfrxButtonControl
        Left = 136.000000000000000000
        Top = 124.000000000000000000
        Width = 75.000000000000000000
        Height = 25.000000000000000000
        Caption = '&Preview'
        Default = True
        ModalResult = 1
        OnClick = 'Button1OnClick'
      end
      object btBatal: TfrxButtonControl
        Left = 12.000000000000000000
        Top = 124.000000000000000000
        Width = 75.000000000000000000
        Height = 25.000000000000000000
        Cancel = True
        Caption = '&Batal'
        ModalResult = 2
        OnClick = 'btBatalOnClick'
      end
      object qryReport: TfrxDBXQuery
        UserName = 'qryReport'
        CloseDataSource = True
        Params = <>
        SQL.Strings = (
          'SELECT * FROM KUNJUNGAN')
        Parameters = <>
      end
    end
  end
  object RptDesigner: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10.000000000000000000
    DefaultRightMargin = 10.000000000000000000
    DefaultTopMargin = 10.000000000000000000
    DefaultBottomMargin = 10.000000000000000000
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    Restrictions = []
    RTLLanguage = False
    Left = 88
    Top = 16
  end
  object frxADOComponents1: TfrxADOComponents
    DefaultDatabase = GModule.conn
    Left = 57
    Top = 100
  end
  object frxCheckBoxObject1: TfrxCheckBoxObject
    Left = 420
    Top = 16
  end
  object frxOLEObject1: TfrxOLEObject
    Left = 316
    Top = 16
  end
  object frxDialogControls1: TfrxDialogControls
    Left = 220
    Top = 16
  end
  object frxCrossObject1: TfrxCrossObject
    Left = 220
    Top = 76
  end
  object frxDotMatrixExport1: TfrxDotMatrixExport
    UseFileCache = True
    ShowProgress = True
    EscModel = 0
    GraphicFrames = False
    SaveToFile = False
    UseIniSettings = True
    Left = 316
    Top = 76
  end
  object frxRichObject1: TfrxRichObject
    Left = 420
    Top = 76
  end
  object frxBarCodeObject1: TfrxBarCodeObject
    Left = 528
    Top = 16
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    PrintOptimized = False
    Outline = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    Background = False
    Creator = 'FastReport (http://www.fast-report.com)'
    HTMLTags = True
    Left = 56
    Top = 201
  end
  object frxBMPExport1: TfrxBMPExport
    UseFileCache = True
    ShowProgress = True
    Left = 516
    Top = 201
  end
  object frxHTMLExport1: TfrxHTMLExport
    UseFileCache = True
    ShowProgress = True
    FixedWidth = True
    Background = False
    Centered = False
    Left = 156
    Top = 201
  end
  object frxJPEGExport1: TfrxJPEGExport
    UseFileCache = True
    ShowProgress = True
    Left = 56
    Top = 277
  end
  object frxTIFFExport1: TfrxTIFFExport
    UseFileCache = True
    ShowProgress = True
    Left = 156
    Top = 277
  end
  object frxXLSExport1: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 244
    Top = 201
  end
  object frxXMLExport1: TfrxXMLExport
    UseFileCache = True
    ShowProgress = True
    Background = True
    Creator = 'FastReport'
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 332
    Top = 201
  end
  object frxGZipCompressor1: TfrxGZipCompressor
    Left = 528
    Top = 76
  end
  object frxRTFExport1: TfrxRTFExport
    UseFileCache = True
    ShowProgress = True
    Wysiwyg = True
    Creator = 'FastReport http://www.fast-report.com'
    SuppressPageHeadersFooters = False
    Left = 421
    Top = 201
  end
  object frxGIFExport1: TfrxGIFExport
    UseFileCache = True
    ShowProgress = True
    Left = 244
    Top = 277
  end
  object frxSimpleTextExport1: TfrxSimpleTextExport
    UseFileCache = True
    ShowProgress = True
    Frames = False
    EmptyLines = False
    OEMCodepage = False
    Left = 332
    Top = 277
  end
  object frxCSVExport1: TfrxCSVExport
    UseFileCache = True
    ShowProgress = True
    Separator = ';'
    OEMCodepage = False
    Left = 424
    Top = 277
  end
  object frxTXTExport1: TfrxTXTExport
    UseFileCache = True
    ShowProgress = True
    ScaleWidth = 1.000000000000000000
    ScaleHeight = 1.000000000000000000
    Borders = False
    Pseudogrpahic = False
    PageBreaks = True
    OEMCodepage = False
    EmptyLines = False
    LeadSpaces = False
    PrintAfter = False
    PrinterDialog = True
    UseSavedProps = True
    Left = 608
    Top = 201
  end
  object frxMailExport1: TfrxMailExport
    UseFileCache = True
    ShowProgress = True
    ShowExportDialog = True
    SmtpPort = 25
    UseIniFile = True
    Left = 516
    Top = 273
  end
end
