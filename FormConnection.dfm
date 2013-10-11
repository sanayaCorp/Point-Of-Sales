object DatabasePromptForm: TDatabasePromptForm
  Left = 52
  Top = 310
  ActiveControl = ledServerName
  Caption = 'Modul Connection Database'
  ClientHeight = 211
  ClientWidth = 293
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 293
    Height = 211
    Align = alClient
    Color = 15914943
    TabOrder = 0
    ExplicitHeight = 188
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 291
      Height = 209
      Align = alClient
      Caption = 'Koneksi Database'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      ExplicitHeight = 186
      object Label1: TLabel
        Left = 8
        Top = 27
        Width = 67
        Height = 15
        Caption = 'Server Name'
      end
      object Label2: TLabel
        Left = 8
        Top = 56
        Width = 48
        Height = 15
        Caption = 'Database'
      end
      object Label3: TLabel
        Left = 8
        Top = 85
        Width = 58
        Height = 15
        Caption = 'User Name'
      end
      object Label4: TLabel
        Left = 8
        Top = 114
        Width = 50
        Height = 15
        Caption = 'Password'
      end
      object Label5: TLabel
        Left = 8
        Top = 144
        Width = 22
        Height = 15
        Caption = 'Port'
      end
      object ledDBName: TEdit
        Left = 96
        Top = 53
        Width = 177
        Height = 23
        TabOrder = 0
      end
      object ledUserID: TEdit
        Left = 96
        Top = 82
        Width = 177
        Height = 23
        TabOrder = 1
      end
      object ledPass: TEdit
        Left = 96
        Top = 112
        Width = 177
        Height = 23
        PasswordChar = '^'
        TabOrder = 2
      end
      object ledPort: TEdit
        Left = 96
        Top = 141
        Width = 121
        Height = 23
        TabOrder = 3
      end
      object Panel2: TPanel
        Left = 2
        Top = 166
        Width = 287
        Height = 41
        Align = alBottom
        BevelOuter = bvNone
        Color = 15914943
        TabOrder = 4
        ExplicitTop = 143
        object Button1: TButton
          Left = 196
          Top = 8
          Width = 75
          Height = 25
          Action = taKoneksi
          Caption = '&Koneksi'
          TabOrder = 0
        end
        object Button2: TButton
          Left = 115
          Top = 8
          Width = 75
          Height = 25
          Action = taBatal
          Caption = '&Batal'
          TabOrder = 1
        end
      end
      object ledServerName: TEdit
        Left = 96
        Top = 24
        Width = 121
        Height = 23
        TabOrder = 5
      end
    end
  end
  object ActionList1: TActionList
    Left = 216
    Top = 32
    object taKoneksi: TAction
      Caption = 'taKoneksi'
      OnExecute = taKoneksiExecute
    end
    object taBatal: TAction
      Caption = 'taBatal'
      OnExecute = taBatalExecute
    end
  end
end
