inherited fBarangForm: TfBarangForm
  Height = 356
  ActiveControl = DBEdit1
  Caption = 'FrmBarang'
  KeyPreview = True
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  inherited btn1: TSpeedButton
    Top = 283
    Anchors = [akRight, akBottom]
  end
  inherited btn2: TSpeedButton
    Top = 283
    Anchors = [akRight, akBottom]
  end
  inherited cxTabControl1: TcxTabControl
    Height = 273
    ClientRectBottom = 271
    object lbl1: TLabel
      Left = 16
      Top = 35
      Width = 97
      Height = 16
      Caption = 'KODE BARANG'
      FocusControl = DBEdit1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lbl2: TLabel
      Left = 16
      Top = 69
      Width = 99
      Height = 16
      Caption = 'NAMA BARANG'
      FocusControl = DBEdit2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lbl3: TLabel
      Left = 16
      Top = 103
      Width = 38
      Height = 16
      Caption = 'JENIS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lbl4: TLabel
      Left = 16
      Top = 137
      Width = 56
      Height = 16
      Caption = 'SATUAN'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lbl5: TLabel
      Left = 16
      Top = 171
      Width = 79
      Height = 16
      Caption = 'HARGA BELI'
      FocusControl = DBEdit5
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lbl6: TLabel
      Left = 16
      Top = 205
      Width = 84
      Height = 16
      Caption = 'HARGA JUAL'
      FocusControl = DBEdit6
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lbl7: TLabel
      Left = 16
      Top = 240
      Width = 45
      Height = 16
      Caption = 'STOCK'
      FocusControl = DBEdit7
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 136
      Top = 32
      Width = 200
      Height = 24
      DataField = 'KODE_BARANG'
      DataSource = BarangForm.dsBarang
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 136
      Top = 66
      Width = 337
      Height = 24
      DataField = 'NAMA_BARANG'
      DataSource = BarangForm.dsBarang
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnExit = DBEdit2Exit
    end
    object DBEdit5: TDBEdit
      Left = 136
      Top = 169
      Width = 225
      Height = 24
      DataField = 'HARGA_BELI'
      DataSource = BarangForm.dsBarang
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 136
      Top = 203
      Width = 225
      Height = 24
      DataField = 'HARGA_JUAL'
      DataSource = BarangForm.dsBarang
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object DBEdit7: TDBEdit
      Left = 136
      Top = 238
      Width = 97
      Height = 24
      DataField = 'STOCK'
      DataSource = BarangForm.dsBarang
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object dblkcbbJENIS: TDBLookupComboBox
      Left = 136
      Top = 100
      Width = 265
      Height = 24
      DataField = 'JENIS'
      DataSource = BarangForm.dsBarang
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'JENIS'
      ListField = 'DESCRIPTION'
      ListSource = BarangForm.dsJenis
      ParentFont = False
      TabOrder = 2
      OnCloseUp = dblkcbbJENISCloseUp
    end
    object dblkcbbSATUAN: TDBLookupComboBox
      Left = 136
      Top = 135
      Width = 265
      Height = 24
      DataField = 'SATUAN'
      DataSource = BarangForm.dsBarang
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'SATUAN'
      ListField = 'DESCRIPTION'
      ListSource = BarangForm.dsSatuan
      ParentFont = False
      TabOrder = 3
    end
  end
  inherited actlst1: TActionList
    Left = 376
    Top = 32
    inherited DataSetPost1: TDataSetPost
      DataSource = BarangForm.dsBarang
    end
    inherited DataSetCancel1: TDataSetCancel
      DataSource = BarangForm.dsBarang
    end
  end
end
