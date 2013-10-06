object MainForm: TMainForm
  Left = 220
  Top = 220
  BorderStyle = bsSingle
  Caption = 'Main Form Utama Applikasi POS'
  ClientHeight = 466
  ClientWidth = 862
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIForm
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object dxRibbon1: TdxRibbon
    Left = 0
    Top = 0
    Width = 862
    Height = 116
    ApplicationButton.Menu = dxBarApplicationMenu1
    BarManager = dxBarManager1
    ColorSchemeName = 'Office2010Blue'
    Fonts.AssignedFonts = [afTabHeader, afGroup, afGroupHeader]
    Fonts.Group.Charset = ANSI_CHARSET
    Fonts.Group.Color = 4605510
    Fonts.Group.Height = -11
    Fonts.Group.Name = 'MS Sans Serif'
    Fonts.Group.Style = []
    Fonts.GroupHeader.Charset = ANSI_CHARSET
    Fonts.GroupHeader.Color = clWhite
    Fonts.GroupHeader.Height = -11
    Fonts.GroupHeader.Name = 'MS Sans Serif'
    Fonts.GroupHeader.Style = []
    Fonts.TabHeader.Charset = ANSI_CHARSET
    Fonts.TabHeader.Color = clWindowText
    Fonts.TabHeader.Height = -11
    Fonts.TabHeader.Name = 'MS Sans Serif'
    Fonts.TabHeader.Style = []
    SupportNonClientDrawing = True
    Contexts = <>
    TabOrder = 4
    TabStop = False
    object dxRibbon1Tab1: TdxRibbonTab
      Active = True
      Caption = 'Data Induk'
      Groups = <
        item
          ToolbarName = 'dxBarManager1Bar2'
        end>
      Index = 0
    end
  end
  object dxRibbonStatusBar1: TdxRibbonStatusBar
    Left = 0
    Top = 443
    Width = 862
    Height = 23
    Panels = <>
    Ribbon = dxRibbon1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
  end
  object dxBarManager1: TdxBarManager
    AllowCallFromAnotherForm = True
    AutoAlignBars = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    FlatCloseButton = True
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.SkinName = 'Office2010Black'
    NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
    PopupMenuLinks = <>
    ShowCloseButton = True
    StoreInIniFile = True
    StoreInRegistry = True
    Style = bmsUseLookAndFeel
    SunkenBorder = True
    UseSystemFont = False
    Left = 256
    Top = 88
    DockControlHeights = (
      0
      0
      0
      0)
    object dxBarManager1Bar2: TdxBar
      Caption = 'Custom Data Induk'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 156
      FloatTop = 193
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton2'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarLargeButton3'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Caption = 'Jenis'
      Category = 0
      Hint = 'Jenis'
      Visible = ivAlways
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Caption = 'Satuan'
      Category = 0
      Hint = 'Satuan'
      Visible = ivAlways
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Action = item
      Category = 0
    end
    object btnClose: TdxBarButton
      Caption = '&Close'
      Category = 0
      Hint = 'Close'
      Visible = ivAlways
    end
  end
  object dxBarApplicationMenu1: TdxBarApplicationMenu
    BarManager = dxBarManager1
    Buttons = <
      item
        Item = btnClose
      end>
    ExtraPane.Items = <>
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemLinks = <>
    UseOwnFont = True
    Left = 304
    Top = 88
  end
  object cxLookAndFeelController1: TcxLookAndFeelController
    Kind = lfOffice11
    SkinName = 'Office2010Blue'
    Left = 256
    Top = 136
  end
  object dxSkinController1: TdxSkinController
    Kind = lfOffice11
    SkinName = 'Office2010Blue'
    Left = 304
    Top = 136
  end
  object actmgr1: TActionManager
    Left = 256
    Top = 192
    StyleName = 'XP Style'
    object item: TAction
      Caption = '&Item'
      OnExecute = itemExecute
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 312
    Top = 192
    PixelsPerInch = 96
  end
  object cxPropertiesStore1: TcxPropertiesStore
    Components = <>
    StorageName = 'cxPropertiesStore1'
    Left = 256
    Top = 240
  end
  object dxBarScreenTipRepository1: TdxBarScreenTipRepository
    AssignedFonts = [stbHeader, stbFooter]
    FooterFont.Charset = ANSI_CHARSET
    FooterFont.Color = 5000268
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = [fsBold]
    HeaderFont.Charset = ANSI_CHARSET
    HeaderFont.Color = 5000268
    HeaderFont.Height = -11
    HeaderFont.Name = 'MS Sans Serif'
    HeaderFont.Style = [fsBold]
    Left = 312
    Top = 240
  end
  object connPOS: TUniConnection
    DataTypeMap = <>
    ProviderName = 'MySQL'
    Port = 3306
    Database = 'dbtoko'
    Options.DisconnectedMode = True
    Options.EnableBCD = True
    Debug = True
    Username = 'revisoft'
    Password = 'revisoft012686'
    Server = 'Localhost'
    ConnectDialog = UniConnectDialog1
    LoginPrompt = False
    Left = 56
    Top = 144
  end
  object UniConnectDialog1: TUniConnectDialog
    DatabaseLabel = 'Database'
    PortLabel = 'Port'
    ProviderLabel = 'Provider'
    SavePassword = True
    Caption = 'Connect'
    UsernameLabel = 'User Name'
    PasswordLabel = 'Password'
    ServerLabel = 'Server'
    ConnectButton = 'Connect'
    CancelButton = 'Cancel'
    Left = 56
    Top = 192
  end
  object MonitorPos: TUniSQLMonitor
    Options = [moDialog, moSQLMonitor, moDBMonitor, moCustom, moHandled]
    TraceFlags = [tfQPrepare, tfQExecute, tfQFetch, tfError, tfStmt, tfConnect, tfTransact, tfBlob, tfService, tfMisc, tfParams, tfObjDestroy, tfPool]
    Left = 56
    Top = 240
  end
  object MySQLUniProvider1: TMySQLUniProvider
    Left = 56
    Top = 288
  end
end
