object fTemplateform: TfTemplateform
  Left = 290
  Top = 121
  Width = 727
  Height = 537
  Caption = 'frmTemplate'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  Scaled = False
  OnClose = FormClose
  DesignSize = (
    719
    503)
  PixelsPerInch = 96
  TextHeight = 13
  object btn1: TSpeedButton
    Left = 625
    Top = 463
    Width = 89
    Height = 37
    Action = DataSetCancel1
    Anchors = [akRight, akBottom]
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btn2: TSpeedButton
    Left = 534
    Top = 463
    Width = 89
    Height = 37
    Action = DataSetPost1
    Anchors = [akRight, akBottom]
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object cxTabControl1: TcxTabControl
    Left = 8
    Top = 8
    Width = 706
    Height = 454
    Align = alCustom
    Anchors = [akLeft, akTop, akRight, akBottom]
    Style = 1
    TabIndex = 0
    TabOrder = 0
    Tabs.Strings = (
      'General')
    ClientRectBottom = 452
    ClientRectLeft = 2
    ClientRectRight = 704
    ClientRectTop = 22
  end
  object actlst1: TActionList
    Left = 256
    Top = 152
    object DataSetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = '&Post'
    end
    object DataSetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = '&Cancel'
    end
  end
end
