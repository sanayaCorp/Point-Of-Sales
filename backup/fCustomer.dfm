inherited fCustomerForm: TfCustomerForm
  Left = 422
  Top = 379
  Width = 594
  Height = 380
  ActiveControl = DBEdit1
  Caption = 'fCustomerForm'
  KeyPreview = True
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  inherited btn1: TSpeedButton
    Left = 492
    Top = 310
    Anchors = [akRight, akBottom]
  end
  inherited btn2: TSpeedButton
    Left = 401
    Top = 310
    Anchors = [akRight, akBottom]
  end
  inherited cxTabControl1: TcxTabControl
    Top = 7
    Width = 572
    Height = 298
    ClientRectBottom = 296
    ClientRectRight = 570
    object lbl1: TLabel
      Left = 16
      Top = 36
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
      Left = 16
      Top = 76
      Width = 150
      Height = 20
      Caption = 'NAMA PELANGGAN'
      FocusControl = DBEdit2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lbl3: TLabel
      Left = 16
      Top = 116
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
      Left = 16
      Top = 220
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
    object DBEdit1: TDBEdit
      Left = 172
      Top = 32
      Width = 200
      Height = 28
      DataField = 'KODE_PELANGGAN'
      DataSource = CustomerForm.dsCustomer
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 172
      Top = 72
      Width = 241
      Height = 28
      DataField = 'NAMA_PELANGGAN'
      DataSource = CustomerForm.dsCustomer
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DBEdit4: TDBEdit
      Left = 172
      Top = 216
      Width = 200
      Height = 28
      DataField = 'TELEPON'
      DataSource = CustomerForm.dsCustomer
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object dbmmoALAMAT_PELANGGAN: TDBMemo
      Left = 172
      Top = 112
      Width = 381
      Height = 89
      DataField = 'ALAMAT_PELANGGAN'
      DataSource = CustomerForm.dsCustomer
      ScrollBars = ssVertical
      TabOrder = 2
    end
  end
  inherited actlst1: TActionList
    inherited DataSetPost1: TDataSetPost
      DataSource = CustomerForm.dsCustomer
    end
    inherited DataSetCancel1: TDataSetCancel
      DataSource = CustomerForm.dsCustomer
    end
  end
end
