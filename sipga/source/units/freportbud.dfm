object frmReportBUD: TfrmReportBUD
  Left = 606
  Top = 75
  BorderStyle = bsDialog
  Caption = 'Realisasi Pembayaran Gaji Induk'
  ClientHeight = 137
  ClientWidth = 292
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 292
    Height = 96
    Align = alClient
    TabOrder = 0
    object Label67: TLabel
      Left = 20
      Top = 64
      Width = 76
      Height = 13
      Caption = 'Tanggal TTD'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SMS1: TRadioButton
      Left = 20
      Top = 28
      Width = 97
      Height = 17
      Caption = 'Semester I'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      TabStop = True
    end
    object SMS2: TRadioButton
      Left = 172
      Top = 28
      Width = 97
      Height = 17
      Caption = 'Semester II'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object tglTTD: TDateEdit
      Left = 108
      Top = 60
      Width = 109
      Height = 19
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      NumGlyphs = 2
      ParentCtl3D = False
      ParentFont = False
      YearDigits = dyFour
      TabOrder = 2
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 96
    Width = 292
    Height = 41
    Align = alBottom
    TabOrder = 1
    object btnPrint: TButton
      Left = 24
      Top = 8
      Width = 105
      Height = 25
      Caption = 'Print'
      Default = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      PopupMenu = pmF1
      TabOrder = 0
      OnClick = btnPrintClick
    end
    object btnClose: TButton
      Left = 164
      Top = 8
      Width = 105
      Height = 25
      Cancel = True
      Caption = 'Close'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ModalResult = 2
      ParentFont = False
      TabOrder = 1
    end
  end
  object pmF1: TPopupMenu
    Tag = 1
    Left = 126
    Top = 10
    object DesignEdit1: TMenuItem
      Tag = 1
      Caption = 'Design / Edit'
      OnClick = DesignEdit1Click
    end
  end
end
