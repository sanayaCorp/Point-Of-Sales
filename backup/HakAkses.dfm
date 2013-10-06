object HakAksesForm: THakAksesForm
  Left = 286
  Top = 245
  Width = 595
  Height = 335
  Caption = 'Form Hak Akses Menu Aplikasi'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesktopCenter
  Scaled = False
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object btn1: TSpeedButton
    Left = 504
    Top = 256
    Width = 70
    Height = 41
    Action = DataSetCancel1
    Caption = '&Cancel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btn2: TSpeedButton
    Left = 427
    Top = 256
    Width = 70
    Height = 41
    Action = DataSetPost1
    Caption = '&Post'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object tbc1: TTabControl
    Left = 8
    Top = 8
    Width = 569
    Height = 241
    TabOrder = 0
    Tabs.Strings = (
      'General')
    TabIndex = 0
    object lbl1: TLabel
      Left = 16
      Top = 32
      Width = 33
      Height = 16
      Caption = 'Level'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object shp1: TShape
      Left = 0
      Top = 64
      Width = 600
      Height = 2
      Brush.Color = -1
    end
    object shp2: TShape
      Left = 128
      Top = 64
      Width = 4
      Height = 177
    end
    object shp3: TShape
      Left = 283
      Top = 64
      Width = 4
      Height = 177
    end
    object shp4: TShape
      Left = 406
      Top = 64
      Width = 4
      Height = 177
    end
    object dbchkTRANSAKSI: TDBCheckBox
      Left = 5
      Top = 72
      Width = 100
      Height = 17
      Caption = 'TRANSAKSI'
      DataField = 'TRANSAKSI'
      DataSource = dsHakAkses
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
    object dbchkPEMBELIAN: TDBCheckBox
      Left = 16
      Top = 96
      Width = 100
      Height = 17
      Caption = 'PEMBELIAN'
      DataField = 'PEMBELIAN'
      DataSource = dsHakAkses
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      ValueChecked = '1'
      ValueUnchecked = '0'
      WordWrap = True
    end
    object dbchkPENJUALAN: TDBCheckBox
      Left = 16
      Top = 120
      Width = 100
      Height = 17
      Caption = 'PENJUALAN'
      DataField = 'PENJUALAN'
      DataSource = dsHakAkses
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      ValueChecked = '1'
      ValueUnchecked = '0'
      WordWrap = True
    end
    object dbchkLAPORAN: TDBCheckBox
      Left = 136
      Top = 72
      Width = 120
      Height = 17
      Caption = 'LAPORAN'
      DataField = 'LAPORAN'
      DataSource = dsHakAkses
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
    object dbchkLAP_PEMBELIAN: TDBCheckBox
      Left = 147
      Top = 96
      Width = 130
      Height = 17
      Caption = 'LAP. PEMBELIAN'
      DataField = 'LAP_PEMBELIAN'
      DataSource = dsHakAkses
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
    object dbchkLAP_PENJUALAN: TDBCheckBox
      Left = 147
      Top = 120
      Width = 130
      Height = 17
      Caption = 'LAP. PENJUALAN'
      DataField = 'LAP_PENJUALAN'
      DataSource = dsHakAkses
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
    object dbchkLAP_BARANG: TDBCheckBox
      Left = 147
      Top = 144
      Width = 130
      Height = 17
      Caption = 'LAP. BARANG'
      DataField = 'LAP_BARANG'
      DataSource = dsHakAkses
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
    object dbchkLAP_SUPPLIER: TDBCheckBox
      Left = 147
      Top = 168
      Width = 130
      Height = 17
      Caption = 'LAP. SUPPLIER'
      DataField = 'LAP_SUPPLIER'
      DataSource = dsHakAkses
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
    object dbchkLAP_CUSTOMER: TDBCheckBox
      Left = 147
      Top = 192
      Width = 130
      Height = 17
      Caption = 'LAP. CUSTOMER'
      DataField = 'LAP_CUSTOMER'
      DataSource = dsHakAkses
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
    object dbchkMASTER: TDBCheckBox
      Left = 290
      Top = 72
      Width = 100
      Height = 17
      Caption = 'MASTER'
      DataField = 'MASTER'
      DataSource = dsHakAkses
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 10
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
    object dbchkJENIS: TDBCheckBox
      Left = 296
      Top = 96
      Width = 110
      Height = 17
      Caption = 'JENIS'
      DataField = 'JENIS'
      DataSource = dsHakAkses
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
    object dbchkSATUAN: TDBCheckBox
      Left = 296
      Top = 120
      Width = 110
      Height = 17
      Caption = 'SATUAN'
      DataField = 'SATUAN'
      DataSource = dsHakAkses
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
    object dbchkBARANG: TDBCheckBox
      Left = 296
      Top = 144
      Width = 110
      Height = 17
      Caption = 'BARANG'
      DataField = 'BARANG'
      DataSource = dsHakAkses
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
    object dbchkSUPPLIER: TDBCheckBox
      Left = 296
      Top = 168
      Width = 110
      Height = 17
      Caption = 'SUPPLIER'
      DataField = 'SUPPLIER'
      DataSource = dsHakAkses
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 14
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
    object dbchkCUSTOMER: TDBCheckBox
      Left = 296
      Top = 192
      Width = 110
      Height = 17
      Caption = 'CUSTOMER'
      DataField = 'CUSTOMER'
      DataSource = dsHakAkses
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 15
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
    object dbchkSISTEM: TDBCheckBox
      Left = 416
      Top = 72
      Width = 120
      Height = 17
      Caption = 'SISTEM'
      DataField = 'SISTEM'
      DataSource = dsHakAkses
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 16
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
    object dbchkPENGGUNA: TDBCheckBox
      Left = 424
      Top = 96
      Width = 140
      Height = 17
      Caption = 'PENGGUNA'
      DataField = 'PENGGUNA'
      DataSource = dsHakAkses
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 17
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
    object dbchkUBAH_PASSWORD: TDBCheckBox
      Left = 424
      Top = 120
      Width = 140
      Height = 17
      Caption = 'UBAH PASSWORD'
      DataField = 'UBAH_PASSWORD'
      DataSource = dsHakAkses
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 18
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
    object dbchkLOGOUT: TDBCheckBox
      Left = 424
      Top = 144
      Width = 140
      Height = 17
      Caption = 'LOGOUT'
      DataField = 'LOGOUT'
      DataSource = dsHakAkses
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 19
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
    object dbchkKELUAR: TDBCheckBox
      Left = 424
      Top = 168
      Width = 140
      Height = 17
      Caption = 'KELUAR'
      DataField = 'KELUAR'
      DataSource = dsHakAkses
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 20
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
    object dbchkHAK_AKSES: TDBCheckBox
      Left = 424
      Top = 192
      Width = 140
      Height = 17
      Caption = 'HAK AKSES'
      DataField = 'HAK_AKSES'
      DataSource = dsHakAkses
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 21
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
    object cbb1: TComboBox
      Left = 80
      Top = 29
      Width = 145
      Height = 22
      Style = csOwnerDrawFixed
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 0
      OnCloseUp = cbb1CloseUp
      Items.Strings = (
        'ADMIN'
        'OPERATOR')
    end
  end
  object actlst1: TActionList
    Left = 456
    Top = 8
    object DataSetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = 'DataSetPost1'
    end
    object DataSetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = 'DataSetCancel1'
    end
  end
  object tblHakAkses: TADODataSet
    Connection = MainForm.conToko
    CursorType = ctStatic
    BeforePost = tblHakAksesBeforePost
    OnNewRecord = tblHakAksesNewRecord
    CommandText = 
      'select LEVEL, TRANSAKSI, PEMBELIAN, PENJUALAN, LAPORAN, LAP_PEMB' +
      'ELIAN, LAP_PENJUALAN, LAP_BARANG, LAP_SUPPLIER, LAP_CUSTOMER, MA' +
      'STER, JENIS, SATUAN, BARANG, SUPPLIER, CUSTOMER, SISTEM, PENGGUN' +
      'A, UBAH_PASSWORD, LOGOUT, KELUAR, HAK_AKSES from tblhakakses whe' +
      're Level=:Level_'
    CommandTimeout = 300
    Parameters = <
      item
        Name = 'Level_'
        Attributes = [paNullable]
        DataType = ftString
        Precision = 255
        Size = 255
        Value = ''
      end>
    Left = 32
    Top = 168
    object tblHakAksesLEVEL: TWideStringField
      FieldName = 'LEVEL'
      Size = 25
    end
    object tblHakAksesTRANSAKSI: TSmallintField
      FieldName = 'TRANSAKSI'
      OnValidate = tblHakAksesTRANSAKSIValidate
    end
    object tblHakAksesPEMBELIAN: TSmallintField
      FieldName = 'PEMBELIAN'
    end
    object tblHakAksesPENJUALAN: TSmallintField
      FieldName = 'PENJUALAN'
    end
    object tblHakAksesLAPORAN: TSmallintField
      FieldName = 'LAPORAN'
      OnValidate = tblHakAksesLAPORANValidate
    end
    object tblHakAksesLAP_PEMBELIAN: TSmallintField
      FieldName = 'LAP_PEMBELIAN'
    end
    object tblHakAksesLAP_PENJUALAN: TSmallintField
      FieldName = 'LAP_PENJUALAN'
    end
    object tblHakAksesLAP_BARANG: TSmallintField
      FieldName = 'LAP_BARANG'
    end
    object tblHakAksesLAP_SUPPLIER: TSmallintField
      FieldName = 'LAP_SUPPLIER'
    end
    object tblHakAksesLAP_CUSTOMER: TSmallintField
      FieldName = 'LAP_CUSTOMER'
    end
    object tblHakAksesMASTER: TSmallintField
      FieldName = 'MASTER'
      OnValidate = tblHakAksesMASTERValidate
    end
    object tblHakAksesJENIS: TSmallintField
      FieldName = 'JENIS'
    end
    object tblHakAksesSATUAN: TSmallintField
      FieldName = 'SATUAN'
    end
    object tblHakAksesBARANG: TSmallintField
      FieldName = 'BARANG'
    end
    object tblHakAksesSUPPLIER: TSmallintField
      FieldName = 'SUPPLIER'
    end
    object tblHakAksesCUSTOMER: TSmallintField
      FieldName = 'CUSTOMER'
    end
    object tblHakAksesSISTEM: TSmallintField
      FieldName = 'SISTEM'
      OnValidate = tblHakAksesSISTEMValidate
    end
    object tblHakAksesPENGGUNA: TSmallintField
      FieldName = 'PENGGUNA'
    end
    object tblHakAksesUBAH_PASSWORD: TSmallintField
      FieldName = 'UBAH_PASSWORD'
    end
    object tblHakAksesLOGOUT: TSmallintField
      FieldName = 'LOGOUT'
    end
    object tblHakAksesKELUAR: TSmallintField
      FieldName = 'KELUAR'
    end
    object tblHakAksesHAK_AKSES: TSmallintField
      FieldName = 'HAK_AKSES'
    end
  end
  object dsHakAkses: TDataSource
    DataSet = tblHakAkses
    Left = 88
    Top = 168
  end
end
