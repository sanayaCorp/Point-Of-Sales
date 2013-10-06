inherited fBeliForm: TfBeliForm
  Left = 360
  Top = 229
  Width = 728
  Height = 536
  ActiveControl = DBEdit1
  Caption = 'Add New Transaction Purchase'
  FormStyle = fsNormal
  KeyPreview = True
  Position = poDesigned
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  DesignSize = (
    720
    502)
  PixelsPerInch = 96
  TextHeight = 13
  inherited btn1: TSpeedButton
    Left = 626
    AllowAllUp = True
    Flat = False
  end
  inherited btn2: TSpeedButton
    Left = 535
    AllowAllUp = True
    Flat = False
  end
  inherited cxTabControl1: TcxTabControl
    Width = 707
    Height = 453
    Align = alNone
    ClientRectBottom = 451
    ClientRectRight = 705
    object lbl1: TLabel
      Left = 8
      Top = 40
      Width = 108
      Height = 16
      Caption = 'TGL. PEMBELIAN'
      FocusControl = DBEdit1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lbl2: TLabel
      Left = 8
      Top = 67
      Width = 133
      Height = 16
      Caption = 'FAKTUR PEMBELIAN'
      FocusControl = DBEdit2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lbl3: TLabel
      Left = 8
      Top = 94
      Width = 66
      Height = 16
      Caption = 'SUPPLIER'
      FocusControl = DBEdit3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lbl4: TLabel
      Left = 392
      Top = 377
      Width = 31
      Height = 16
      Caption = 'DISC'
      FocusControl = DBEdit4
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lbl5: TLabel
      Left = 392
      Top = 427
      Width = 44
      Height = 16
      Caption = 'TOTAL'
      FocusControl = DBEdit5
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lbl6: TLabel
      Left = 392
      Top = 353
      Width = 75
      Height = 16
      Caption = 'SUB TOTAL'
      FocusControl = DBEdit6
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lbl7: TLabel
      Left = 392
      Top = 402
      Width = 28
      Height = 16
      Caption = 'PPN'
      FocusControl = DBEdit7
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lbl8: TLabel
      Left = 520
      Top = 381
      Width = 12
      Height = 16
      Caption = '%'
      FocusControl = DBEdit8
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lbl9: TLabel
      Left = 520
      Top = 403
      Width = 12
      Height = 16
      Caption = '%'
      FocusControl = DBEdit9
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object btn3: TSpeedButton
      Left = 296
      Top = 39
      Width = 23
      Height = 22
      Caption = '...'
      Flat = True
      OnClick = btn3Click
    end
    object lbl10: TLabel
      Left = 8
      Top = 120
      Width = 104
      Height = 16
      Caption = 'STATUS BAYAR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 160
      Top = 37
      Width = 134
      Height = 24
      DataField = 'TGL_PEMBELIAN'
      DataSource = BeliForm.dsBeliHdr
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      OnKeyDown = DBEdit1KeyDown
    end
    object DBEdit2: TDBEdit
      Left = 160
      Top = 63
      Width = 209
      Height = 24
      DataField = 'FAKTUR_PEMBELIAN'
      DataSource = BeliForm.dsBeliHdr
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnExit = DBEdit2Exit
    end
    object DBEdit3: TDBEdit
      Left = 458
      Top = 90
      Width = 127
      Height = 24
      Color = clSilver
      DataField = 'KODE_SUPPLIER'
      DataSource = BeliForm.dsBeliHdr
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object cxGrid1: TcxGrid
      Left = 8
      Top = 152
      Width = 689
      Height = 193
      TabOrder = 5
      OnEnter = cxGrid1Enter
      object cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = BeliForm.dsBeliDtl
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsCustomize.DataRowSizing = True
        OptionsCustomize.GroupBySorting = True
        OptionsCustomize.GroupRowSizing = True
        OptionsData.Appending = True
        OptionsView.Navigator = True
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.FooterMultiSummaries = True
        OptionsView.GroupByBox = False
        OptionsView.BandHeaderEndEllipsis = True
        Styles.Content = BeliForm.cxStyle2
        Styles.ContentEven = BeliForm.cxStyle3
        Styles.ContentOdd = BeliForm.cxStyle4
        Styles.Inactive = BeliForm.cxStyle9
        Styles.Selection = BeliForm.cxStyle12
        Styles.Footer = BeliForm.cxStyle5
        Styles.Group = BeliForm.cxStyle6
        Styles.GroupByBox = BeliForm.cxStyle7
        Styles.Header = BeliForm.cxStyle8
        Styles.Indicator = BeliForm.cxStyle10
        Styles.Preview = BeliForm.cxStyle11
        Styles.BandHeader = BeliForm.cxStyle1
        Bands = <
          item
            Caption = 'Information Detail'
          end>
        object cxGrid1DBBandedTableView1NO: TcxGridDBBandedColumn
          DataBinding.FieldName = 'NO'
          Width = 36
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1KODE_BARANG: TcxGridDBBandedColumn
          Caption = 'KODE BARANG'
          DataBinding.FieldName = 'KODE_BARANG'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.CharCase = ecUpperCase
          Properties.DropDownAutoSize = True
          Properties.DropDownListStyle = lsFixedList
          Properties.KeyFieldNames = 'KODE_BARANG'
          Properties.ListColumns = <
            item
              FieldName = 'NAMA_BARANG'
            end
            item
              FieldName = 'DescSatuan'
            end
            item
              FieldName = 'HARGA_BELI'
            end
            item
              FieldName = 'STOCK'
            end>
          Properties.ListSource = BeliForm.dsBarang
          Width = 261
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1HARGA_BELI: TcxGridDBBandedColumn
          DataBinding.FieldName = 'HARGA_BELI'
          Width = 146
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1JUMLAH: TcxGridDBBandedColumn
          DataBinding.FieldName = 'JUMLAH'
          Width = 97
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1SUBTOTAL: TcxGridDBBandedColumn
          Caption = 'SUB TOTAL'
          DataBinding.FieldName = 'SUBTOTAL'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Width = 147
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBBandedTableView1
      end
    end
    object DBEdit4: TDBEdit
      Left = 448
      Top = 376
      Width = 57
      Height = 24
      DataField = 'DISC'
      DataSource = BeliForm.dsBeliHdr
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object DBEdit5: TDBEdit
      Left = 550
      Top = 424
      Width = 148
      Height = 24
      DataField = 'TOTAL'
      DataSource = BeliForm.dsBeliHdr
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object DBEdit6: TDBEdit
      Left = 550
      Top = 352
      Width = 148
      Height = 24
      DataField = 'TOTAL_'
      DataSource = BeliForm.ds_Total
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 9
    end
    object DBEdit7: TDBEdit
      Left = 448
      Top = 400
      Width = 57
      Height = 24
      DataField = 'PPN'
      DataSource = BeliForm.dsBeliHdr
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object DBEdit8: TDBEdit
      Left = 550
      Top = 400
      Width = 148
      Height = 24
      DataField = 'NPPN_'
      DataSource = BeliForm.dsBeliHdr
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 10
    end
    object DBEdit9: TDBEdit
      Left = 550
      Top = 376
      Width = 148
      Height = 24
      DataField = 'NDisc_'
      DataSource = BeliForm.dsBeliHdr
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 11
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox
      Left = 160
      Top = 89
      DataBinding.DataField = 'KODE_SUPPLIER'
      DataBinding.DataSource = BeliForm.dsBeliHdr
      ParentFont = False
      Properties.DropDownAutoSize = True
      Properties.DropDownListStyle = lsFixedList
      Properties.KeyFieldNames = 'KODE_SUPPLIER'
      Properties.ListColumns = <
        item
          FieldName = 'NAMA_SUPPLIER'
        end>
      Properties.ListSource = BeliForm.dsSupplier
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 2
      Width = 297
    end
    object cxDBCheckComboBox1: TcxDBCheckComboBox
      Left = 160
      Top = 115
      DataBinding.DataField = 'cBayar'
      DataBinding.DataSource = BeliForm.dsBeliHdr
      ParentFont = False
      Properties.Items = <
        item
          Description = 'Tunai'
          ShortDescription = 'Tunai'
        end
        item
          Description = 'Kredit'
          ShortDescription = 'Kredit'
        end>
      Properties.OnCloseUp = cxDBCheckComboBox1PropertiesCloseUp
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 4
      Text = 'None selected'
      Width = 121
    end
    object cal1: TMonthCalendar
      Left = 161
      Top = 63
      Width = 260
      Height = 154
      Date = 41489.911129918980000000
      TabOrder = 12
      Visible = False
      OnClick = cal1Click
    end
  end
  object btn4: TButton [3]
    Left = 440
    Top = 464
    Width = 75
    Height = 25
    Caption = 'btn4'
    TabOrder = 1
  end
  inherited actlst1: TActionList
    Left = 528
    Top = 64
  end
  object cxStyleRepository1: TcxStyleRepository
    Scalable = True
    Left = 568
    Top = 64
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 13160660
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 13160660
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 13160660
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle6: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clGray
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = 13160660
    end
    object cxStyle7: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 10841658
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle8: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 13160660
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle9: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 6956042
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle10: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 13160660
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle11: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = 6956042
    end
    object cxStyle12: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 6956042
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object GridBandedTableViewStyleSheetWindowsStandard: TcxGridBandedTableViewStyleSheet
      Caption = 'Windows Standard'
      Styles.Content = cxStyle2
      Styles.ContentEven = cxStyle3
      Styles.ContentOdd = cxStyle4
      Styles.Inactive = cxStyle9
      Styles.Selection = cxStyle12
      Styles.Footer = cxStyle5
      Styles.Group = cxStyle6
      Styles.GroupByBox = cxStyle7
      Styles.Header = cxStyle8
      Styles.Indicator = cxStyle10
      Styles.Preview = cxStyle11
      Styles.BandHeader = cxStyle1
      BuiltIn = True
    end
  end
end
