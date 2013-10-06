object PenggunaForm: TPenggunaForm
  Left = 203
  Top = 208
  Width = 688
  Height = 374
  ActiveControl = cxGrid1
  Caption = 'Form Data Pengguna'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object tbc1: TTabControl
    Left = 8
    Top = 8
    Width = 665
    Height = 321
    TabOrder = 0
    Tabs.Strings = (
      'General')
    TabIndex = 0
    object cxGrid1: TcxGrid
      Left = 4
      Top = 24
      Width = 657
      Height = 293
      Align = alClient
      TabOrder = 0
      LookAndFeel.Kind = lfOffice11
      object cxGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsPengguna
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsView.Navigator = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        Styles.Content = cxStyle2
        Styles.ContentEven = cxStyle2
        Styles.ContentOdd = cxStyle2
        Styles.Selection = cxStyle2
        Styles.Header = cxStyle1
        Styles.Preview = cxStyle3
        object cxGrid1DBTableView1KODE_PENGGUNA: TcxGridDBColumn
          Caption = 'KODE'
          DataBinding.FieldName = 'KODE_PENGGUNA'
        end
        object cxGrid1DBTableView1NAMA_PENGGUNA: TcxGridDBColumn
          Caption = 'NAMA PENGGUNA'
          DataBinding.FieldName = 'NAMA_PENGGUNA'
        end
        object cxGrid1DBTableView1Level: TcxGridDBColumn
          DataBinding.FieldName = 'Level'
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object tblPengguna: TADODataSet
    Connection = MainForm.conToko
    CursorType = ctStatic
    AfterInsert = tblPenggunaAfterInsert
    AfterEdit = tblPenggunaAfterEdit
    CommandText = 
      'select KODE_PENGGUNA, NAMA_PENGGUNA, PASSWORD, PASSWORD2, Level ' +
      'from tblpengguna order by KODE_PENGGUNA asc'
    CommandTimeout = 300
    Parameters = <>
    Left = 64
    Top = 88
    object tblPenggunaKODE_PENGGUNA: TWideStringField
      FieldName = 'KODE_PENGGUNA'
    end
    object tblPenggunaNAMA_PENGGUNA: TWideStringField
      FieldName = 'NAMA_PENGGUNA'
      Size = 50
    end
    object tblPenggunaPASSWORD: TWideStringField
      FieldName = 'PASSWORD'
      Size = 50
    end
    object tblPenggunaLevel: TWideStringField
      FieldName = 'Level'
      Size = 25
    end
    object tblPenggunaPASSWORD2: TWideStringField
      FieldName = 'PASSWORD2'
      Size = 50
    end
  end
  object dsPengguna: TDataSource
    DataSet = tblPengguna
    Left = 120
    Top = 88
  end
  object cxStyleRepository1: TcxStyleRepository
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = 4194304
    end
  end
  object cxStyleRepository2: TcxStyleRepository
    PixelsPerInch = 96
    object cxStyle2: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
  end
end
