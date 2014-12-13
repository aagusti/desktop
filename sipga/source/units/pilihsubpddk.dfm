object frmPilihSub: TfrmPilihSub
  Left = 301
  Top = 74
  BorderStyle = bsDialog
  Caption = 'Sub Unit Pendidikan'
  ClientHeight = 394
  ClientWidth = 605
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 605
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 91
      Height = 13
      Caption = 'Cari Nama Sekolah'
    end
    object eCari: TEdit
      Left = 112
      Top = 11
      Width = 305
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      TabOrder = 0
      OnChange = eCariChange
    end
    object btnCari: TButton
      Left = 426
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Cari'
      TabOrder = 1
      OnClick = btnCariClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 605
    Height = 312
    Align = alClient
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 603
      Height = 310
      Align = alClient
      Ctl3D = False
      DataSource = DMPegawai.dsSubPddk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'SUB'
          Title.Caption = 'Sub'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'KELOMPOK_KODE'
          Title.Caption = 'Kelompok Sekolah'
          Width = 121
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NM_SUB'
          Title.Caption = 'Nama Sekolah'
          Width = 382
          Visible = True
        end>
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 353
    Width = 605
    Height = 41
    Align = alBottom
    TabOrder = 2
    object btnOK: TButton
      Left = 424
      Top = 8
      Width = 75
      Height = 25
      Caption = 'OK'
      TabOrder = 0
      OnClick = btnOKClick
    end
    object btnBatal: TButton
      Left = 512
      Top = 8
      Width = 75
      Height = 25
      Cancel = True
      Caption = 'Batal'
      ModalResult = 2
      TabOrder = 1
    end
  end
end
