object FPenggunaForm: TFPenggunaForm
  Left = 303
  Top = 259
  Width = 495
  Height = 262
  ActiveControl = DBEdit1
  Caption = 'FrmPengguna'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object btn2: TSpeedButton
    Left = 408
    Top = 192
    Width = 70
    Height = 30
    Action = DataSetCancel1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btn3: TSpeedButton
    Left = 336
    Top = 192
    Width = 70
    Height = 30
    Action = DataSetPost1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object tbc1: TTabControl
    Left = 8
    Top = 10
    Width = 473
    Height = 177
    TabOrder = 0
    Tabs.Strings = (
      'General')
    TabIndex = 0
    object lbl1: TLabel
      Left = 16
      Top = 36
      Width = 117
      Height = 16
      Caption = 'KODE PENGGUNA'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lbl2: TLabel
      Left = 16
      Top = 65
      Width = 119
      Height = 16
      Caption = 'NAMA PENGGUNA'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lbl3: TLabel
      Left = 16
      Top = 93
      Width = 79
      Height = 16
      Caption = 'PASSWORD'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lbl4: TLabel
      Left = 16
      Top = 121
      Width = 128
      Height = 16
      Caption = 'ULANG PASSWORD'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lbl5: TLabel
      Left = 16
      Top = 149
      Width = 41
      Height = 16
      Caption = 'LEVEL'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object btn1: TSpeedButton
      Left = 360
      Top = 33
      Width = 23
      Height = 22
      Caption = '...'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 176
      Top = 32
      Width = 185
      Height = 24
      CharCase = ecUpperCase
      DataField = 'KODE_PENGGUNA'
      DataSource = PenggunaForm.dsPengguna
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 176
      Top = 60
      Width = 281
      Height = 24
      CharCase = ecUpperCase
      DataField = 'NAMA_PENGGUNA'
      DataSource = PenggunaForm.dsPengguna
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 176
      Top = 88
      Width = 257
      Height = 24
      CharCase = ecUpperCase
      DataField = 'PASSWORD'
      DataSource = PenggunaForm.dsPengguna
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 176
      Top = 116
      Width = 257
      Height = 24
      CharCase = ecUpperCase
      DataField = 'PASSWORD2'
      DataSource = PenggunaForm.dsPengguna
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object dbcbbLevel: TDBComboBox
      Left = 176
      Top = 144
      Width = 145
      Height = 24
      CharCase = ecUpperCase
      DataField = 'Level'
      DataSource = PenggunaForm.dsPengguna
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      Items.Strings = (
        'ADMIN'
        'OPERATOR')
      ParentFont = False
      TabOrder = 4
    end
  end
  object actlst1: TActionList
    Left = 280
    Top = 24
    object DataSetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = 'Post'
      DataSource = PenggunaForm.dsPengguna
    end
    object DataSetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = 'Cancel'
      DataSource = PenggunaForm.dsPengguna
    end
  end
end
