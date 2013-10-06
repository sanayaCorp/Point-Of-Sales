object MainForm: TMainForm
  Left = 231
  Top = 195
  Width = 870
  Height = 500
  Caption = 'Menu Utama Aplikasi Penjualan'
  Color = clBtnFace
  UseDockManager = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIForm
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object dxStatusBar1: TdxStatusBar
    Left = 0
    Top = 446
    Width = 862
    Height = 20
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Width = 100
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Width = 100
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Width = 150
      end
      item
        PanelStyleClassName = 'TdxStatusBarContainerPanelStyle'
        PanelStyle.Container = dxStatusBar1Container3
      end>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    object dxStatusBar1Container3: TdxStatusBarContainerControl
      Left = 363
      Top = 3
      Width = 482
      Height = 16
    end
  end
  object dxBarManager1: TdxBarManager
    AllowCallFromAnotherForm = True
    AutoAlignBars = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Microsoft Sans Serif'
    Font.Style = []
    Categories.Strings = (
      'Default'
      'Transaksi'
      'Laporan'
      'Master'
      'Sistem'
      'Menus')
    Categories.ItemsVisibles = (
      2
      2
      2
      2
      2
      2)
    Categories.Visibles = (
      True
      True
      True
      True
      True
      True)
    LookAndFeel.Kind = lfOffice11
    NotDocking = [dsLeft, dsTop, dsRight, dsBottom]
    PopupMenuLinks = <>
    Style = bmsOffice11
    UseSystemFont = False
    Left = 208
    Top = 32
    DockControlHeights = (
      0
      0
      23
      0)
    object dxBarManager1Bar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Main Menu'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 0
      FloatTop = 0
      FloatClientWidth = 0
      FloatClientHeight = 0
      IsMainMenu = True
      ItemLinks = <
        item
          Visible = True
          ItemName = 'ransaksi1'
        end
        item
          Visible = True
          ItemName = 'Laporan1'
        end
        item
          Visible = True
          ItemName = 'Master1'
        end
        item
          Visible = True
          ItemName = 'Sistem1'
        end>
      MultiLine = True
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object dxBarSeparator1: TdxBarSeparator
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton1: TdxBarButton
      Action = PurchaseInvoice
      Category = 1
    end
    object lapPembelian: TdxBarButton
      Caption = 'Lap. Pembelian'
      Category = 2
      Hint = 'Lap. Pembelian'
      Visible = ivAlways
    end
    object lapPenjualan: TdxBarButton
      Caption = 'Lap. Penjualan'
      Category = 2
      Hint = 'Lap. Penjualan'
      Visible = ivAlways
    end
    object lapBarang: TdxBarButton
      Caption = 'Lap. Barang'
      Category = 2
      Hint = 'Lap. Barang'
      Visible = ivAlways
    end
    object lapSupplier: TdxBarButton
      Caption = 'Lap. Supplier'
      Category = 2
      Hint = 'Lap. Supplier'
      Visible = ivAlways
    end
    object lapCustomer: TdxBarButton
      Caption = 'Lap. Customer'
      Category = 2
      Hint = 'Lap. Customer'
      Visible = ivAlways
    end
    object JenisBarang1: TdxBarButton
      Action = Jenis
      Category = 3
    end
    object Satuan1: TdxBarButton
      Action = Satuan
      Category = 3
    end
    object Brg: TdxBarButton
      Action = Barang
      Category = 3
    end
    object supp: TdxBarButton
      Action = Supplier
      Category = 3
    end
    object Cust: TdxBarButton
      Action = Customer
      Category = 3
    end
    object Pengguna1: TdxBarButton
      Action = Pengguna
      Category = 4
    end
    object UbahPassword1: TdxBarButton
      Caption = 'Ubah Password'
      Category = 4
      Visible = ivAlways
    end
    object LogOut1: TdxBarButton
      Caption = 'Log &Out'
      Category = 4
      Visible = ivAlways
    end
    object Keluar1: TdxBarButton
      Caption = 'Keluar'
      Category = 4
      Visible = ivAlways
      ShortCut = 16453
    end
    object HakAkses1: TdxBarButton
      Action = HakAkses
      Category = 4
    end
    object ransaksi1: TdxBarSubItem
      Caption = 'Transaction'
      Category = 5
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end>
    end
    object Laporan1: TdxBarSubItem
      Caption = 'Report'
      Category = 5
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'lapPembelian'
        end
        item
          Visible = True
          ItemName = 'lapPenjualan'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'lapBarang'
        end
        item
          Visible = True
          ItemName = 'lapSupplier'
        end
        item
          Visible = True
          ItemName = 'lapCustomer'
        end>
    end
    object Master1: TdxBarSubItem
      Caption = 'Master'
      Category = 5
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'JenisBarang1'
        end
        item
          Visible = True
          ItemName = 'Satuan1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'Brg'
        end
        item
          Visible = True
          ItemName = 'supp'
        end
        item
          Visible = True
          ItemName = 'Cust'
        end>
    end
    object Sistem1: TdxBarSubItem
      Caption = 'System'
      Category = 5
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'Pengguna1'
        end
        item
          Visible = True
          ItemName = 'UbahPassword1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'LogOut1'
        end
        item
          Visible = True
          ItemName = 'Keluar1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'HakAkses1'
        end>
    end
  end
  object conToko: TADOConnection
    CommandTimeout = 3000
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=True;Extended Propertie' +
      's="Driver=MySQL ODBC 5.1 Driver;SERVER=127.0.0.1;UID=revisoft;PW' +
      'D=revisoft012686;DATABASE=dbtoko;PORT=3306;COLUMN_SIZE_S32=1"'
    LoginPrompt = False
    Left = 24
    Top = 72
  end
  object actlst1: TActionList
    Left = 208
    Top = 88
    object Pengguna: TAction
      Category = 'Sistem'
      Caption = 'Pengguna'
      ShortCut = 16464
      OnExecute = PenggunaExecute
    end
    object HakAkses: TAction
      Category = 'Sistem'
      Caption = 'Hak Akses'
      OnExecute = HakAksesExecute
    end
    object Jenis: TAction
      Category = 'Master'
      Caption = 'Jenis'
      OnExecute = JenisExecute
    end
    object Satuan: TAction
      Category = 'Master'
      Caption = 'Satuan'
      OnExecute = SatuanExecute
    end
    object Barang: TAction
      Category = 'Master'
      Caption = 'Barang'
      OnExecute = BarangExecute
    end
    object Supplier: TAction
      Category = 'Master'
      Caption = 'Supplier'
      OnExecute = SupplierExecute
    end
    object Customer: TAction
      Category = 'Master'
      Caption = 'Customer'
      OnExecute = CustomerExecute
    end
    object PurchaseInvoice: TAction
      Category = 'Transaction'
      Caption = 'Purchase Invoice'
      OnExecute = PurchaseInvoiceExecute
    end
  end
end
