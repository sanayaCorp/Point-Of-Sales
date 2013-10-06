object DatabasePromptForm: TDatabasePromptForm
  Left = 853
  Top = 384
  Width = 316
  Height = 271
  Caption = 'DatabasePromptForm'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object fcPanel1: TfcPanel
    Left = 0
    Top = 0
    Width = 308
    Height = 241
    Align = alClient
    TabOrder = 0
    DesignSize = (
      308
      241)
    object TabControl1: TTabControl
      Left = 1
      Top = 1
      Width = 306
      Height = 184
      Align = alTop
      MultiLine = True
      MultiSelect = True
      TabOrder = 0
      Tabs.Strings = (
        'Koneksi Database')
      TabIndex = 0
      object fcLabel1: TfcLabel
        Left = 8
        Top = 32
        Width = 106
        Height = 16
        Caption = 'Database Server'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TextOptions.Alignment = taLeftJustify
        TextOptions.VAlignment = vaTop
        Transparent = True
      end
      object fcLabel2: TfcLabel
        Left = 8
        Top = 62
        Width = 46
        Height = 16
        Caption = 'User ID'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TextOptions.Alignment = taLeftJustify
        TextOptions.VAlignment = vaTop
        Transparent = True
      end
      object fcLabel3: TfcLabel
        Left = 8
        Top = 122
        Width = 60
        Height = 16
        Caption = 'Database'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TextOptions.Alignment = taLeftJustify
        TextOptions.VAlignment = vaTop
        Transparent = True
      end
      object fcLabel4: TfcLabel
        Left = 8
        Top = 152
        Width = 27
        Height = 16
        Caption = 'Port'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TextOptions.Alignment = taLeftJustify
        TextOptions.VAlignment = vaTop
        Transparent = True
      end
      object fcLabel5: TfcLabel
        Left = 8
        Top = 92
        Width = 62
        Height = 16
        Caption = 'Password'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TextOptions.Alignment = taLeftJustify
        TextOptions.VAlignment = vaTop
        Transparent = True
      end
      object ledservername: TwwDBEdit
        Left = 128
        Top = 32
        Width = 169
        Height = 21
        Color = clInactiveCaptionText
        ImeName = 'US'
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object leddbname: TwwDBEdit
        Left = 128
        Top = 120
        Width = 169
        Height = 21
        Color = clInactiveCaptionText
        ImeName = 'US'
        TabOrder = 1
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object ledUserId: TwwDBEdit
        Left = 128
        Top = 61
        Width = 113
        Height = 21
        Color = clInactiveCaptionText
        ImeName = 'US'
        PasswordChar = '*'
        TabOrder = 2
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object ledPass: TwwDBEdit
        Left = 128
        Top = 150
        Width = 169
        Height = 21
        Color = clInactiveCaptionText
        ImeName = 'US'
        PasswordChar = '*'
        TabOrder = 3
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object leddnsName: TwwDBEdit
        Left = 128
        Top = 91
        Width = 169
        Height = 21
        Color = clInactiveCaptionText
        ImeName = 'US'
        PasswordChar = '*'
        TabOrder = 4
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
    end
    object cxButton1: TcxButton
      Left = 16
      Top = 195
      Width = 75
      Height = 25
      Anchors = [akLeft, akBottom]
      Caption = 'Batal'
      TabOrder = 1
      OnClick = cxButton1Click
    end
    object cxButton2: TcxButton
      Left = 112
      Top = 195
      Width = 75
      Height = 25
      Anchors = [akLeft, akBottom]
      Caption = 'Koneksi'
      TabOrder = 2
      OnClick = cxButton2Click
    end
  end
  object MCenterForm1: MCenterForm
    AllowMoving = False
    AllowSizing = True
    Left = 113
    Top = 1
  end
end
