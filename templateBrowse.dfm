object TemplateForm: TTemplateForm
  Left = 256
  Top = 235
  ActiveControl = cxGrid1
  BorderStyle = bsNone
  Caption = 'TemplateForm'
  ClientHeight = 466
  ClientWidth = 862
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  WindowState = wsMaximized
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
    object cxGrid1: TcxGrid
      Left = 10
      Top = 10
      Width = 250
      Height = 200
      TabOrder = 0
      object cxGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object cxGroupBox1: TcxGroupBox
      Left = 10
      Top = 424
      PanelStyle.Active = True
      TabOrder = 1
      DesignSize = (
        842
        32)
      Height = 32
      Width = 842
      object btnNew: TcxButton
        Left = 8
        Top = 3
        Width = 75
        Height = 25
        Caption = '&New'
        TabOrder = 0
      end
      object btnChange: TcxButton
        Left = 88
        Top = 3
        Width = 75
        Height = 25
        Caption = '&Change'
        TabOrder = 1
      end
      object btnDelete: TcxButton
        Left = 168
        Top = 3
        Width = 75
        Height = 25
        Caption = '&Delete'
        TabOrder = 2
      end
      object btnTambahan1: TcxButton
        Left = 248
        Top = 3
        Width = 75
        Height = 25
        Caption = '&Stock Cards'
        TabOrder = 3
      end
      object btnTambahan2: TcxButton
        Left = 328
        Top = 3
        Width = 75
        Height = 25
        Caption = '&Price History'
        TabOrder = 4
      end
      object btnClose: TcxButton
        Left = 760
        Top = 3
        Width = 75
        Height = 25
        Anchors = [akTop, akRight]
        Caption = '&Close'
        TabOrder = 5
        OnClick = btnCloseClick
      end
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      LayoutLookAndFeel = dxlytcxlkndfl1
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Item1: TdxLayoutItem
        AlignHorz = ahClient
        AlignVert = avClient
        Control = cxGrid1
        ControlOptions.ShowBorder = False
      end
      object dxLayoutControl1Item2: TdxLayoutItem
        CaptionOptions.Text = 'cxGroupBox1'
        CaptionOptions.Visible = False
        Control = cxGroupBox1
        ControlOptions.AutoColor = True
        ControlOptions.ShowBorder = False
      end
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 432
    Top = 112
    object dxlytcxlkndfl1: TdxLayoutCxLookAndFeel
      ItemOptions.ControlBorderStyle = lbsSingle
      LookAndFeel.SkinName = 'UserSkin'
    end
  end
end
