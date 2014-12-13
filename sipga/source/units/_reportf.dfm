object frmReport: TfrmReport
  Left = 106
  Top = 111
  BorderStyle = bsSingle
  ClientHeight = 539
  ClientWidth = 825
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnDestroy = FormDestroy
  OnDeactivate = FormDeactivate
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object CrV: TCRViewer9
    Left = 0
    Top = 0
    Width = 825
    Height = 520
    Align = alClient
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    OnReportSourceError = CrVReportSourceError
    ControlData = {
      000300005802000044550000BE3500000B00FFFF0B00FFFF0B00FFFF0B00FFFF
      0B00FFFF0B00FFFF0B00FFFF0B00FFFF0B00FFFF0B00FFFF0B0000000B00FFFF
      0B00FFFF0B0000000B00FFFF0B0000000B00FFFF0B0000000800020000000000
      0B00FFFF0B00FFFF0B0000000B0000000B0000000B00FFFF}
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 520
    Width = 825
    Height = 19
    Panels = <>
  end
  object MainMenu1: TMainMenu
    Left = 440
    Top = 128
    object File1: TMenuItem
      Caption = 'File'
      object PrintSetup1: TMenuItem
        Caption = '&Print Setup'
        OnClick = PrintSetup1Click
      end
      object PageSetup1: TMenuItem
        Caption = 'Page Setup'
        OnClick = PageSetup1Click
      end
      object Keluar1: TMenuItem
        Caption = '&Keluar'
      end
    end
    object Grafik1: TMenuItem
      Caption = 'Grafik'
      Enabled = False
      object Kotak2D1: TMenuItem
        Tag = 1
        Caption = 'Kotak 2D'
      end
      object Kotak3D1: TMenuItem
        Tag = 2
        Caption = 'Kotak 3D'
      end
      object Garis1: TMenuItem
        Tag = 3
        Caption = 'Garis'
      end
      object Pie1: TMenuItem
        Tag = 4
        Caption = 'Pie'
      end
    end
  end
  object PSD: TPrinterSetupDialog
    Left = 528
    Top = 152
  end
  object PD: TPrintDialog
    Left = 432
    Top = 16
  end
  object PSD2: TPageSetupDialog
    MinMarginLeft = 0
    MinMarginTop = 0
    MinMarginRight = 0
    MinMarginBottom = 0
    MarginLeft = 2500
    MarginTop = 2500
    MarginRight = 2500
    MarginBottom = 2500
    Options = [psoDefaultMinMargins, psoDisableOrientation, psoDisablePaper, psoDisablePrinter]
    PageWidth = 21000
    PageHeight = 29700
    Left = 472
    Top = 128
  end
end
