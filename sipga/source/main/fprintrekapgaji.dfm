object frmPrintRekapGaji: TfrmPrintRekapGaji
  Left = 468
  Top = 62
  BorderStyle = bsDialog
  Caption = 'Print'
  ClientHeight = 169
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 292
    Height = 128
    Align = alClient
    TabOrder = 0
    DesignSize = (
      292
      128)
    object Label67: TLabel
      Left = 16
      Top = 100
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
    object rgOption: TRadioGroup
      Left = 12
      Top = 12
      Width = 271
      Height = 73
      Anchors = [akLeft, akTop, akRight]
      Caption = 'Options'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemIndex = 0
      Items.Strings = (
        'Rekapitulasi Gaji Induk'
        'Daftar Tanda Terima SSP PPh21')
      ParentFont = False
      TabOrder = 0
    end
    object tglTTD: TDateEdit
      Left = 104
      Top = 96
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
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 128
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
    Left = 122
    Top = 122
    object DesignEdit1: TMenuItem
      Tag = 1
      Caption = 'Design / Edit'
      OnClick = DesignEdit1Click
    end
  end
end
