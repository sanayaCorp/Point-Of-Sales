inherited fSupplierForm: TfSupplierForm
  Width = 548
  Height = 413
  Caption = 'frmSupplier'
  KeyPreview = True
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  inherited btn1: TSpeedButton
    Left = 446
    Top = 343
    Anchors = [akRight, akBottom]
  end
  inherited btn2: TSpeedButton
    Left = 355
    Top = 343
    Anchors = [akRight, akBottom]
  end
  inherited cxTabControl1: TcxTabControl
    Width = 527
    ClientRectRight = 525
    object lbl1: TLabel
      Left = 8
      Top = 42
      Width = 45
      Height = 20
      Caption = 'KODE'
      FocusControl = DBEdit1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lbl2: TLabel
      Left = 8
      Top = 76
      Width = 130
      Height = 20
      Caption = 'NAMA SUPPLIER'
      FocusControl = DBEdit2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lbl3: TLabel
      Left = 8
      Top = 110
      Width = 64
      Height = 20
      Caption = 'ALAMAT'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lbl4: TLabel
      Left = 8
      Top = 208
      Width = 73
      Height = 20
      Caption = 'TELEPON'
      FocusControl = DBEdit4
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lbl5: TLabel
      Left = 8
      Top = 242
      Width = 63
      Height = 20
      Caption = 'KONTAK'
      FocusControl = DBEdit5
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 146
      Top = 40
      Width = 191
      Height = 24
      DataField = 'KODE_SUPPLIER'
      DataSource = SupplierForm.dsSupplier
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 146
      Top = 74
      Width = 295
      Height = 24
      DataField = 'NAMA_SUPPLIER'
      DataSource = SupplierForm.dsSupplier
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DBEdit4: TDBEdit
      Left = 146
      Top = 206
      Width = 191
      Height = 24
      DataField = 'TELEPON'
      DataSource = SupplierForm.dsSupplier
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 146
      Top = 240
      Width = 295
      Height = 24
      DataField = 'KONTAK'
      DataSource = SupplierForm.dsSupplier
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object dbmmoALAMAT: TDBMemo
      Left = 146
      Top = 108
      Width = 367
      Height = 89
      DataField = 'ALAMAT'
      DataSource = SupplierForm.dsSupplier
      ScrollBars = ssVertical
      TabOrder = 2
    end
  end
end
