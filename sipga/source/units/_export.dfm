object frmExport: TfrmExport
  Left = 340
  Top = 75
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Export Data Gaji'
  ClientHeight = 500
  ClientWidth = 734
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 734
    Height = 29
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 238
      Height = 13
      Caption = 'Export Data Pegawai, Gaji dan Rapel Gaji'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 29
    Width = 734
    Height = 471
    Align = alClient
    TabOrder = 1
    object PGC: TPageControl
      Left = 1
      Top = 1
      Width = 732
      Height = 469
      ActivePage = TabSheet2
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Pegawai'
        object Panel6: TPanel
          Left = 0
          Top = 416
          Width = 724
          Height = 25
          Align = alBottom
          TabOrder = 0
          DesignSize = (
            724
            25)
          object Label2: TLabel
            Left = 208
            Top = 6
            Width = 79
            Height = 13
            Caption = 'Jumlah Data :'
          end
          object JmlPegawai: TLabel
            Left = 288
            Top = 6
            Width = 8
            Height = 13
            Caption = '0'
          end
          object btnExpPegawai: TButton
            Tag = 1
            Left = 547
            Top = 0
            Width = 75
            Height = 25
            Anchors = [akTop, akRight]
            Caption = 'Export'
            TabOrder = 0
            OnClick = btnExpPegawaiClick
          end
          object btnCancel1: TButton
            Left = 631
            Top = 0
            Width = 87
            Height = 25
            Anchors = [akTop, akRight]
            Cancel = True
            Caption = '&Tutup (Esc)'
            ModalResult = 2
            TabOrder = 1
          end
          object DBNavigator2: TDBNavigator
            Left = 8
            Top = 0
            Width = 184
            Height = 25
            DataSource = dsPegawai
            VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
            Flat = True
            TabOrder = 2
          end
        end
        object DBGrid1: TDBGrid
          Left = 0
          Top = 0
          Width = 724
          Height = 416
          Align = alClient
          Ctl3D = False
          DataSource = dsPegawai
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          Columns = <
            item
              Expanded = False
              FieldName = 'NIP'
              Width = 192
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NAMA'
              Width = 281
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'GOLONGANKD'
              Title.Alignment = taCenter
              Title.Caption = 'GOLONGAN'
              Width = 93
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'STS_PEGAWAIKD'
              Title.Alignment = taCenter
              Title.Caption = 'C / P'
              Width = 65
              Visible = True
            end>
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Gaji'
        ImageIndex = 1
        object Splitter2: TSplitter
          Left = 250
          Top = 0
          Width = 6
          Height = 441
        end
        object Panel7: TPanel
          Left = 256
          Top = 0
          Width = 468
          Height = 441
          Align = alClient
          TabOrder = 1
          object Panel8: TPanel
            Left = 1
            Top = 416
            Width = 466
            Height = 24
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 1
            DesignSize = (
              466
              24)
            object JmlGaji: TLabel
              Left = 232
              Top = 6
              Width = 8
              Height = 13
              Caption = '0'
            end
            object Label4: TLabel
              Left = 152
              Top = 6
              Width = 79
              Height = 13
              Caption = 'Jumlah Data :'
            end
            object btnCancel2: TButton
              Left = 374
              Top = 0
              Width = 87
              Height = 25
              Anchors = [akTop, akRight]
              Cancel = True
              Caption = '&Tutup (Esc)'
              ModalResult = 2
              TabOrder = 0
            end
            object btnExpGaji: TButton
              Tag = 2
              Left = 290
              Top = 0
              Width = 75
              Height = 25
              Anchors = [akTop, akRight]
              Caption = 'Export'
              TabOrder = 1
              OnClick = btnExpPegawaiClick
            end
            object DBNavigator1: TDBNavigator
              Left = 8
              Top = 0
              Width = 136
              Height = 25
              DataSource = dsGajiEx
              VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
              Flat = True
              TabOrder = 2
            end
          end
          object DBGrid3: TDBGrid
            Left = 1
            Top = 1
            Width = 466
            Height = 415
            Align = alClient
            Ctl3D = False
            DataSource = dsGajiEx
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
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
                FieldName = 'NIP'
                Width = 119
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NAMA'
                Width = 171
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'GOLONGANKD'
                Title.Alignment = taCenter
                Title.Caption = 'GOLONGAN'
                Width = 82
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'STS_PEGAWAIKD'
                Title.Alignment = taCenter
                Title.Caption = 'C / P'
                Width = 60
                Visible = True
              end>
          end
        end
        object tvGaji: TTreeView
          Left = 0
          Top = 0
          Width = 250
          Height = 441
          Align = alLeft
          AutoExpand = True
          BevelKind = bkFlat
          BorderStyle = bsNone
          Color = clBtnFace
          Ctl3D = True
          HideSelection = False
          Images = ImageList1
          Indent = 19
          MultiSelectStyle = []
          ParentCtl3D = False
          ReadOnly = True
          RowSelect = True
          ShowRoot = False
          TabOrder = 0
          OnChange = tvGajiChange
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Rapel'
        ImageIndex = 2
        object Splitter1: TSplitter
          Left = 250
          Top = 0
          Width = 6
          Height = 441
        end
        object tvRapel: TTreeView
          Left = 0
          Top = 0
          Width = 250
          Height = 441
          Align = alLeft
          AutoExpand = True
          BevelKind = bkFlat
          BorderStyle = bsNone
          Color = clBtnFace
          Ctl3D = True
          HideSelection = False
          Images = ImageList1
          Indent = 19
          MultiSelectStyle = []
          ParentCtl3D = False
          ReadOnly = True
          ShowRoot = False
          TabOrder = 0
          OnChange = tvRapelChange
        end
        object Panel10: TPanel
          Left = 256
          Top = 0
          Width = 468
          Height = 441
          Align = alClient
          TabOrder = 1
          object Panel11: TPanel
            Left = 1
            Top = 416
            Width = 466
            Height = 24
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 1
            DesignSize = (
              466
              24)
            object Label5: TLabel
              Left = 152
              Top = 6
              Width = 79
              Height = 13
              Caption = 'Jumlah Data :'
            end
            object JmlRapel: TLabel
              Left = 232
              Top = 6
              Width = 8
              Height = 13
              Caption = '0'
            end
            object btnCancel3: TButton
              Left = 374
              Top = 0
              Width = 87
              Height = 25
              Anchors = [akTop, akRight]
              Cancel = True
              Caption = '&Tutup (Esc)'
              ModalResult = 2
              TabOrder = 0
            end
            object btnExpRapel: TButton
              Tag = 3
              Left = 290
              Top = 0
              Width = 75
              Height = 25
              Anchors = [akTop, akRight]
              Caption = 'Export'
              TabOrder = 1
              OnClick = btnExpPegawaiClick
            end
            object DBNavigator3: TDBNavigator
              Left = 8
              Top = 0
              Width = 136
              Height = 25
              DataSource = dsRapelEx
              VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
              Flat = True
              TabOrder = 2
            end
          end
          object DBGrid2: TDBGrid
            Left = 1
            Top = 1
            Width = 466
            Height = 415
            Align = alClient
            Ctl3D = False
            DataSource = dsRapelEx
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
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
                FieldName = 'NIP'
                Width = 119
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NAMA'
                Width = 171
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'GOLONGANKD'
                Title.Alignment = taCenter
                Title.Caption = 'GOLONGAN'
                Width = 82
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'STS_PEGAWAIKD'
                Title.Alignment = taCenter
                Title.Caption = 'C / P'
                Width = 60
                Visible = True
              end>
          end
        end
      end
    end
  end
  object qryGajiEx: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    AfterOpen = qryGajiExAfterOpen
    Parameters = <>
    SQL.Strings = (
      'SELECT *, '
      'ExpOption=-1 '
      'FROM pegawai_gaji')
    Left = 324
    Top = 312
  end
  object dsGajiEx: TDataSource
    AutoEdit = False
    DataSet = qryGajiEx
    Left = 356
    Top = 312
  end
  object qryJnsGaji: TADOQuery
    Connection = GModule.conn
    AfterOpen = qryJnsGajiAfterOpen
    AfterClose = qryJnsGajiAfterClose
    OnCalcFields = qryJnsGajiCalcFields
    Parameters = <>
    SQL.Strings = (
      'select distinct Jenis from pegawai_gaji_jenis'
      'order by jenis')
    Left = 32
    Top = 177
    object qryJnsGajiJenis: TSmallintField
      FieldName = 'Jenis'
    end
    object qryJnsGajiJenisNM: TStringField
      FieldKind = fkCalculated
      FieldName = 'JenisNM'
      Calculated = True
    end
  end
  object qryRapelEx: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    AfterOpen = qryRapelExAfterOpen
    Parameters = <>
    SQL.Strings = (
      'SELECT *,'
      'ExpOption=-1'
      'FROM pegawai_gaji_rapel'
      'ORDER BY jenis, tm_tahun, tm_bulan, tahun,bulan,nip')
    Left = 396
    Top = 312
  end
  object dsRapelEx: TDataSource
    DataSet = qryRapelEx
    Left = 428
    Top = 312
  end
  object SaveEx: TSaveDialog
    Filter = 'Gaji Files|*.gaji|XML Files|*.xml|All Files|*.*'
    FilterIndex = 0
    Options = [ofOverwritePrompt, ofHideReadOnly, ofExtensionDifferent, ofNoNetworkButton, ofEnableSizing, ofDontAddToRecent, ofForceShowHidden]
    Left = 328
    Top = 5
  end
  object qryPegawai: TADOQuery
    Connection = GModule.conn
    CursorType = ctStatic
    AfterOpen = qryPegawaiAfterOpen
    Parameters = <
      item
        Name = 'unitkd'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      'SELECT *, '
      'ExpOption=100'
      'FROM pegawai g'
      'where unitkd=:unitkd'
      'ORDER BY  (case when g.jbt_strukturkd like '#39'99%'#39' then '#39'ZZZZ'#39
      '  when g.jbt_strukturkd = '#39#39' then '#39'ZZZZ'#39
      '  when g.jbt_strukturkd is null then '#39'ZZZZ'#39
      '  when g.jbt_fungsikd = '#39#39' then '#39'ZZZZ'#39
      '  when g.jbt_fungsikd is null then '#39'ZZZZ'#39
      
        '  else g.jbt_strukturkd end) asc, g.golongankd desc, g.STS_PEGAW' +
        'AIKD DESC, g.TMT_PEGAWAI ASC, g.MASAKERJA DESC')
    Left = 236
    Top = 312
  end
  object dsPegawai: TDataSource
    AutoEdit = False
    DataSet = qryPegawai
    Left = 268
    Top = 312
  end
  object dsJnsGaji: TDataSource
    AutoEdit = False
    DataSet = qryJnsGaji
    Left = 32
    Top = 212
  end
  object qryBulanGaji: TADOQuery
    Connection = GModule.conn
    DataSource = dsJnsGaji
    Parameters = <
      item
        Name = 'jenis'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      'select distinct jenis, bulan, tahun from pegawai_gaji_jenis'
      'where jenis=:jenis'
      'order by tahun, bulan')
    Left = 80
    Top = 177
  end
  object qryJnsRapel: TADOQuery
    Connection = GModule.conn
    AfterOpen = qryJnsRapelAfterOpen
    AfterClose = qryJnsRapelAfterClose
    OnCalcFields = qryJnsRapelCalcFields
    Parameters = <>
    SQL.Strings = (
      'select distinct Jenis from pegawai_rapel_jenis'
      'order by jenis')
    Left = 36
    Top = 297
    object SmallintField1: TSmallintField
      FieldName = 'Jenis'
    end
    object StringField1: TStringField
      FieldKind = fkCalculated
      FieldName = 'JenisNM'
      Calculated = True
    end
  end
  object dsJnsRapel: TDataSource
    AutoEdit = False
    DataSet = qryJnsRapel
    Left = 36
    Top = 332
  end
  object qryBulanRapel: TADOQuery
    Connection = GModule.conn
    DataSource = dsJnsRapel
    Parameters = <
      item
        Name = 'jenis'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      
        'select distinct jenis, tm_bulan, tm_tahun, bulan, tahun from peg' +
        'awai_rapel_jenis'
      'where jenis=:jenis'
      'order by tm_bulan, tm_tahun, tahun, bulan')
    Left = 84
    Top = 297
  end
  object ImageList1: TImageList
    Left = 196
    Top = 224
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008000000080000000800000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008000000000000000000000008000000080000000800000008000000080
      0000008000000080000000800000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000800000FFFFFF0000000000000000000000000080808000C0C0C000C0C0
      C000FFFFFF00FFFFFF0000800000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000080
      000000800000FFFFFF0000000000C0C0C000FFFFFF0080808000000000000000
      000000000000FFFFFF0000800000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008000000080
      0000FFFFFF00FFFFFF0000000000C0C0C000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0080808000FFFFFF0000800000000000000000000000000000000000000000
      0000000000000000000000800000008000000080000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000800000FFFF
      FF00FFFFFF00FFFFFF0000000000C0C0C000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0080808000FFFFFF0000800000000000000000000000000000000000000000
      0000000000000080000000800000008000000080000000800000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000800000FFFF
      FF00FFFFFF00FFFFFF0000000000C0C0C000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0080808000FFFFFF0000800000000000000000000000000000000000000000
      0000000000000080000000FF0000008000000080000000800000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000800000FFFF
      FF00FFFFFF00FFFFFF0000000000C0C0C000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0080808000FFFFFF0000800000000000000000000000000000000000000000
      0000000000000080000000FF000000FF00000080000000800000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000800000FFFF
      FF00FFFFFF00FFFFFF0000000000C0C0C000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0080808000FFFFFF0000800000000000000000000000000000000000000000
      0000000000000000000000800000008000000080000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000800000FFFF
      FF00FFFFFF00FFFFFF0000000000C0C0C000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0080808000FFFFFF0000800000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000800000FFFF
      FF00FFFFFF00C0C0C0008080800080808000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000800000FFFF
      FF00FFFFFF008080800000000000000000008080800080808000FFFFFF00FFFF
      FF00808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000800000FFFF
      FF00C0C0C0008080800000000000000000000000000000000000808080008080
      8000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000080808000C0C0
      C000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00F1FFFFFF00000000E000FFFF00000000
      E000FFFF00000000E000FFFF00000000C000FFFF000000008000FC7F00000000
      8000F83F000000008000F83F000000008000F83F000000008000FC7F00000000
      8000FFFF000000008001FFFF000000008307FFFF0000000083C7FFFF00000000
      C7FFFFFF00000000EFFFFFFF0000000000000000000000000000000000000000
      000000000000}
  end
end
