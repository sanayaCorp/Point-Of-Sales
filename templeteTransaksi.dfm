object TransaksiForm: TTransaksiForm
  Left = 271
  Top = 278
  BorderStyle = bsNone
  Caption = 'Template Transaksi'
  ClientHeight = 466
  ClientWidth = 862
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  Scaled = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 862
    Height = 466
    Align = alClient
    TabOrder = 0
    TabStop = False
    LayoutLookAndFeel = dxlytcxlkndfl1
    object cxGroupBox1: TcxGroupBox
      Left = 10
      Top = 10
      PanelStyle.Active = True
      TabOrder = 0
      Height = 105
      Width = 185
      object cxPageControl1: TcxPageControl
        Left = 2
        Top = 2
        Width = 181
        Height = 65
        ActivePage = cxTabSheet1
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 838
        ExplicitHeight = 406
        ClientRectBottom = 58
        ClientRectLeft = 3
        ClientRectRight = 174
        ClientRectTop = 26
        object cxTabSheet1: TcxTabSheet
          Caption = 'cxTabSheet1'
          ImageIndex = 0
          ExplicitWidth = 828
          ExplicitHeight = 373
        end
      end
      object cxGroupBox2: TcxGroupBox
        Left = 2
        Top = 67
        Align = alBottom
        PanelStyle.Active = True
        TabOrder = 1
        ExplicitTop = 408
        ExplicitWidth = 838
        Height = 36
        Width = 181
        object btnCancel: TcxButton
          Left = 80
          Top = 5
          Width = 75
          Height = 25
          Caption = '&Cancel'
          TabOrder = 0
        end
        object btnSimpan: TcxButton
          Left = 3
          Top = 5
          Width = 75
          Height = 25
          Caption = '&Simpan'
          TabOrder = 1
        end
        object btnClose: TcxButton
          Left = 760
          Top = 5
          Width = 75
          Height = 25
          Caption = '&Close'
          TabOrder = 2
          OnClick = btnCloseClick
        end
      end
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Item2: TdxLayoutItem
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.Text = 'cxGroupBox1'
        CaptionOptions.Visible = False
        Control = cxGroupBox1
        ControlOptions.AutoColor = True
        ControlOptions.ShowBorder = False
      end
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 456
    Top = 80
    object dxlytcxlkndfl1: TdxLayoutCxLookAndFeel
    end
  end
  object actlst1: TActionList
    Left = 456
    Top = 128
  end
end
