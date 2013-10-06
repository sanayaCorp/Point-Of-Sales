inherited TransaksiItem: TTransaksiItem
  Left = 253
  Top = 220
  ActiveControl = edtKode
  Caption = 'Modul Transaksi Item'
  Scaled = True
  OnCreate = FormCreate
  OnDeactivate = FormDeactivate
  OnKeyPress = FormKeyPress
  ExplicitWidth = 862
  ExplicitHeight = 466
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    inherited cxGroupBox1: TcxGroupBox
      ExplicitWidth = 185
      ExplicitHeight = 105
      Height = 105
      Width = 185
      object lbl1: TLabel [0]
        Left = 64
        Top = 8
        Width = 30
        Height = 13
        Caption = 'Kode'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lbl2: TLabel [1]
        Left = 13
        Top = 32
        Width = 81
        Height = 13
        Caption = 'Kode Barcode'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lbl3: TLabel [2]
        Left = 64
        Top = 80
        Width = 30
        Height = 13
        Caption = 'Jenis'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lbl4: TLabel [3]
        Left = 33
        Top = 56
        Width = 61
        Height = 13
        Caption = 'Nama Item'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lbl5: TLabel [4]
        Left = 28
        Top = 128
        Width = 66
        Height = 13
        Caption = 'Keterangan'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lbl6: TLabel [5]
        Left = 53
        Top = 104
        Width = 41
        Height = 13
        Caption = 'Satuan'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lbl8: TLabel [6]
        Left = 40
        Top = 152
        Width = 54
        Height = 13
        Caption = 'Tipe Item'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lbl7: TLabel [7]
        Left = 104
        Top = 8
        Width = 5
        Height = 13
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lbl9: TLabel [8]
        Left = 104
        Top = 32
        Width = 5
        Height = 13
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lbl10: TLabel [9]
        Left = 104
        Top = 56
        Width = 5
        Height = 13
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lbl11: TLabel [10]
        Left = 104
        Top = 80
        Width = 5
        Height = 13
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lbl12: TLabel [11]
        Left = 104
        Top = 104
        Width = 5
        Height = 13
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lbl13: TLabel [12]
        Left = 104
        Top = 128
        Width = 5
        Height = 13
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lbl14: TLabel [13]
        Left = 104
        Top = 152
        Width = 5
        Height = 13
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblJenis: TLabel [14]
        Left = 311
        Top = 81
        Width = 36
        Height = 13
        Caption = 'Jenis'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        Transparent = True
      end
      object lblSatuan: TLabel [15]
        Left = 311
        Top = 107
        Width = 47
        Height = 13
        Caption = 'Satuan'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        Transparent = True
      end
      inherited cxPageControl1: TcxPageControl
        Top = -149
        Width = 181
        Height = 216
        Align = alBottom
        ExplicitTop = -149
        ExplicitWidth = 181
        ExplicitHeight = 216
        ClientRectBottom = 209
        ClientRectRight = 174
        inherited cxTabSheet1: TcxTabSheet
          Caption = 'General'
          ExplicitLeft = 3
          ExplicitTop = 26
          ExplicitWidth = 171
          ExplicitHeight = 183
          object lbl15: TLabel
            Left = 30
            Top = 8
            Width = 58
            Height = 13
            Caption = 'Supplier 1'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object lbl16: TLabel
            Left = 99
            Top = 8
            Width = 5
            Height = 13
            Caption = ':'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object lbl17: TLabel
            Left = 30
            Top = 56
            Width = 58
            Height = 13
            Caption = 'Supplier 2'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object lbl18: TLabel
            Left = 99
            Top = 56
            Width = 5
            Height = 13
            Caption = ':'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object lbl19: TLabel
            Left = 99
            Top = 104
            Width = 5
            Height = 13
            Caption = ':'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object lbl20: TLabel
            Left = 30
            Top = 104
            Width = 58
            Height = 13
            Caption = 'Supplier 3'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object lbl21: TLabel
            Left = 8
            Top = 152
            Width = 80
            Height = 13
            Caption = 'Stock Minimal'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object lbl22: TLabel
            Left = 99
            Top = 152
            Width = 5
            Height = 13
            Caption = ':'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object lbl23: TLabel
            Left = 347
            Top = 152
            Width = 81
            Height = 13
            Caption = 'Status Produk'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object lbl24: TLabel
            Left = 443
            Top = 152
            Width = 5
            Height = 13
            Caption = ':'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object lbl25: TLabel
            Left = 457
            Top = 8
            Width = 64
            Height = 13
            Caption = 'Saldo Awal'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object lbl26: TLabel
            Left = 358
            Top = 32
            Width = 77
            Height = 13
            Caption = 'Jumlah Stock'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object lbl27: TLabel
            Left = 358
            Top = 56
            Width = 75
            Height = 13
            Caption = 'Harga Pokok'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object lbl28: TLabel
            Left = 443
            Top = 56
            Width = 5
            Height = 13
            Caption = ':'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object lbl29: TLabel
            Left = 443
            Top = 32
            Width = 5
            Height = 13
            Caption = ':'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object lbl30: TLabel
            Left = 358
            Top = 80
            Width = 70
            Height = 13
            Caption = 'Total Pokok'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object lbl31: TLabel
            Left = 443
            Top = 82
            Width = 5
            Height = 13
            Caption = ':'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object lbl32: TLabel
            Left = 598
            Top = 32
            Width = 77
            Height = 13
            Caption = 'Jumlah Stock'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object lbl33: TLabel
            Left = 683
            Top = 32
            Width = 5
            Height = 13
            Caption = ':'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object lbl34: TLabel
            Left = 598
            Top = 56
            Width = 75
            Height = 13
            Caption = 'Harga Pokok'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object lbl35: TLabel
            Left = 683
            Top = 56
            Width = 5
            Height = 13
            Caption = ':'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object lbl36: TLabel
            Left = 598
            Top = 80
            Width = 70
            Height = 13
            Caption = 'Total Pokok'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object lbl37: TLabel
            Left = 683
            Top = 82
            Width = 5
            Height = 13
            Caption = ':'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object lblSPPL1: TLabel
            Left = 116
            Top = 32
            Width = 64
            Height = 13
            Caption = 'Supplier 1'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            Transparent = True
          end
          object lblSPPL2: TLabel
            Left = 116
            Top = 80
            Width = 64
            Height = 13
            Caption = 'Supplier 2'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            Transparent = True
          end
          object lblSPPL3: TLabel
            Left = 116
            Top = 128
            Width = 64
            Height = 13
            Caption = 'Supplier 3'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            Transparent = True
          end
          object lbl41: TLabel
            Left = 697
            Top = 8
            Width = 66
            Height = 13
            Caption = 'Saldo Akhir'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object lbl42: TLabel
            Left = 358
            Top = 104
            Width = 70
            Height = 13
            Caption = 'Per Tanggal'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object lbl43: TLabel
            Left = 443
            Top = 106
            Width = 5
            Height = 13
            Caption = ':'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object edtSupplier1: TEdit
            Left = 115
            Top = 6
            Width = 142
            Height = 21
            BevelInner = bvSpace
            BevelOuter = bvRaised
            TabOrder = 0
            Text = 'edt1'
            OnEnter = edtSupplier1Enter
            OnKeyDown = edtSupplier1KeyDown
          end
          object edtSupplier2: TEdit
            Left = 115
            Top = 54
            Width = 142
            Height = 21
            BevelInner = bvSpace
            BevelOuter = bvRaised
            TabOrder = 1
            Text = 'edt1'
            OnEnter = edtSupplier2Enter
            OnKeyDown = edtSupplier2KeyDown
          end
          object edtSupplier3: TEdit
            Left = 115
            Top = 103
            Width = 142
            Height = 21
            BevelInner = bvSpace
            BevelOuter = bvRaised
            TabOrder = 2
            Text = 'edt1'
            OnEnter = edtSupplier3Enter
            OnKeyDown = edtSupplier3KeyDown
          end
          object edtStockMin: TEdit
            Left = 115
            Top = 151
            Width = 65
            Height = 21
            BevelInner = bvSpace
            BevelOuter = bvRaised
            TabOrder = 3
            Text = 'edt1'
            OnKeyDown = edtStockMinKeyDown
          end
          object cbAktif: TcxCheckBox
            Left = 456
            Top = 152
            Caption = 'Aktif'
            TabOrder = 8
            Transparent = True
            OnKeyDown = cbAktifKeyDown
            Width = 121
          end
          object edtStockAwal: TEdit
            Left = 456
            Top = 30
            Width = 129
            Height = 21
            BevelInner = bvSpace
            BevelOuter = bvRaised
            TabOrder = 4
            Text = 'edt1'
            OnKeyDown = edtStockAwalKeyDown
          end
          object edtHppAwal: TEdit
            Left = 456
            Top = 54
            Width = 129
            Height = 21
            BevelInner = bvSpace
            BevelOuter = bvRaised
            TabOrder = 5
            Text = 'edt1'
            OnKeyDown = edtHppAwalKeyDown
          end
          object edtTotalAwal: TEdit
            Left = 456
            Top = 79
            Width = 129
            Height = 21
            BevelInner = bvSpace
            BevelOuter = bvRaised
            ReadOnly = True
            TabOrder = 6
            Text = 'edt1'
          end
          object edtStockAkhir: TEdit
            Left = 696
            Top = 30
            Width = 129
            Height = 21
            BevelInner = bvSpace
            BevelOuter = bvRaised
            ReadOnly = True
            TabOrder = 9
            Text = 'edt1'
          end
          object edtHppAkhir: TEdit
            Left = 696
            Top = 54
            Width = 129
            Height = 21
            BevelInner = bvSpace
            BevelOuter = bvRaised
            TabOrder = 10
            Text = 'edt1'
          end
          object edtTotalAkhir: TEdit
            Left = 696
            Top = 79
            Width = 129
            Height = 21
            BevelInner = bvSpace
            BevelOuter = bvRaised
            ReadOnly = True
            TabOrder = 11
            Text = 'edt1'
          end
          object btnSupplier1: TcxButton
            Left = 256
            Top = 6
            Width = 25
            Height = 23
            Caption = '...'
            TabOrder = 12
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object btnSupplier2: TcxButton
            Left = 256
            Top = 54
            Width = 25
            Height = 23
            Caption = '...'
            TabOrder = 13
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object btnSupplier3: TcxButton
            Left = 256
            Top = 102
            Width = 25
            Height = 23
            Caption = '...'
            TabOrder = 14
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object edttgl: TcxDateEdit
            Left = 456
            Top = 104
            TabOrder = 7
            Width = 121
          end
        end
        object cxTabSheet2: TcxTabSheet
          Caption = 'Detail'
          ImageIndex = 1
          object lbl44: TLabel
            Left = 14
            Top = 8
            Width = 134
            Height = 13
            Caption = 'Harga Jual                 :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object lbl45: TLabel
            Left = 14
            Top = 32
            Width = 24
            Height = 13
            Caption = 'Dari'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object lbl46: TLabel
            Left = 83
            Top = 32
            Width = 5
            Height = 13
            Caption = ':'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object lbl47: TLabel
            Left = 14
            Top = 55
            Width = 24
            Height = 13
            Caption = 'Dari'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object lbl48: TLabel
            Left = 83
            Top = 55
            Width = 5
            Height = 13
            Caption = ':'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object lbl49: TLabel
            Left = 14
            Top = 78
            Width = 24
            Height = 13
            Caption = 'Dari'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object lbl50: TLabel
            Left = 83
            Top = 78
            Width = 5
            Height = 13
            Caption = ':'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object lbl51: TLabel
            Left = 158
            Top = 32
            Width = 15
            Height = 13
            Caption = '<='
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object lbl52: TLabel
            Left = 158
            Top = 55
            Width = 15
            Height = 13
            Caption = '<='
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object lbl53: TLabel
            Left = 158
            Top = 78
            Width = 15
            Height = 13
            Caption = '<='
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object lbl54: TLabel
            Left = 238
            Top = 78
            Width = 8
            Height = 13
            Caption = '='
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object lbl55: TLabel
            Left = 238
            Top = 55
            Width = 8
            Height = 13
            Caption = '='
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object lbl56: TLabel
            Left = 238
            Top = 32
            Width = 8
            Height = 13
            Caption = '='
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object lbl57: TLabel
            Left = 310
            Top = 78
            Width = 10
            Height = 13
            Caption = '%'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object lbl58: TLabel
            Left = 310
            Top = 55
            Width = 10
            Height = 13
            Caption = '%'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object lbl59: TLabel
            Left = 310
            Top = 32
            Width = 10
            Height = 13
            Caption = '%'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object lbl60: TLabel
            Left = 606
            Top = 30
            Width = 10
            Height = 13
            Caption = '%'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object lbl61: TLabel
            Left = 534
            Top = 31
            Width = 5
            Height = 13
            Caption = ':'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object lbl62: TLabel
            Left = 471
            Top = 32
            Width = 55
            Height = 13
            Caption = 'Potongan'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object lbl63: TLabel
            Left = 438
            Top = 57
            Width = 88
            Height = 13
            Caption = 'Berlaku Hingga'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object lbl64: TLabel
            Left = 534
            Top = 56
            Width = 5
            Height = 13
            Caption = ':'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object lbl65: TLabel
            Left = 640
            Top = 56
            Width = 18
            Height = 13
            Caption = 's.d'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object lbl66: TLabel
            Left = 14
            Top = 112
            Width = 43
            Height = 13
            Caption = 'Level 1'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object lbl67: TLabel
            Left = 14
            Top = 135
            Width = 43
            Height = 13
            Caption = 'Level 2'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object lbl68: TLabel
            Left = 14
            Top = 158
            Width = 43
            Height = 13
            Caption = 'Level 3'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object lbl69: TLabel
            Left = 83
            Top = 158
            Width = 5
            Height = 13
            Caption = ':'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object lbl70: TLabel
            Left = 83
            Top = 135
            Width = 5
            Height = 13
            Caption = ':'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object lbl71: TLabel
            Left = 83
            Top = 112
            Width = 5
            Height = 13
            Caption = ':'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object lbl72: TLabel
            Left = 158
            Top = 112
            Width = 10
            Height = 13
            Caption = '%'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object lbl73: TLabel
            Left = 158
            Top = 135
            Width = 10
            Height = 13
            Caption = '%'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object lbl74: TLabel
            Left = 158
            Top = 158
            Width = 10
            Height = 13
            Caption = '%'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object shp1: TShape
            Left = 288
            Top = 112
            Width = 1
            Height = 57
          end
          object lbl75: TLabel
            Left = 294
            Top = 112
            Width = 70
            Height = 13
            Caption = 'Level Harga'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object lbl76: TLabel
            Left = 294
            Top = 135
            Width = 66
            Height = 13
            Caption = 'Produk dari'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object lbl77: TLabel
            Left = 294
            Top = 158
            Width = 75
            Height = 13
            Caption = 'Harga Pokok'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object edtJml1: TEdit
            Left = 99
            Top = 30
            Width = 54
            Height = 21
            BevelInner = bvSpace
            BevelOuter = bvRaised
            Color = clSilver
            TabOrder = 0
            Text = '1'
          end
          object edtJml2: TEdit
            Left = 99
            Top = 53
            Width = 54
            Height = 21
            BevelInner = bvSpace
            BevelOuter = bvRaised
            Color = clSilver
            TabOrder = 1
            Text = '0'
          end
          object edtJml3: TEdit
            Left = 99
            Top = 76
            Width = 54
            Height = 21
            BevelInner = bvSpace
            BevelOuter = bvRaised
            Color = clSilver
            TabOrder = 2
            Text = '0'
          end
          object edtJmlMax: TEdit
            Left = 179
            Top = 76
            Width = 54
            Height = 21
            BevelInner = bvSpace
            BevelOuter = bvRaised
            Color = clSilver
            TabOrder = 3
            Text = 'Max'
          end
          object edtJml2Akhir: TEdit
            Left = 179
            Top = 53
            Width = 54
            Height = 21
            BevelInner = bvSpace
            BevelOuter = bvRaised
            TabOrder = 4
            Text = '0'
            OnExit = edtJml2AkhirExit
            OnKeyDown = edtJml2AkhirKeyDown
          end
          object edtJumlah1Akhir: TEdit
            Left = 179
            Top = 30
            Width = 54
            Height = 21
            BevelInner = bvSpace
            BevelOuter = bvRaised
            TabOrder = 5
            Text = '0'
            OnExit = edtJumlah1AkhirExit
            OnKeyDown = edtJumlah1AkhirKeyDown
          end
          object edtProsentaseMax: TEdit
            Left = 251
            Top = 76
            Width = 54
            Height = 21
            BevelInner = bvSpace
            BevelOuter = bvRaised
            TabOrder = 6
            Text = 'Max'
            OnExit = edtProsentaseMaxExit
            OnKeyDown = edtProsentaseMaxKeyDown
          end
          object edtProsentase2: TEdit
            Left = 251
            Top = 53
            Width = 54
            Height = 21
            BevelInner = bvSpace
            BevelOuter = bvRaised
            TabOrder = 7
            Text = '0'
            OnExit = edtProsentase2Exit
            OnKeyDown = edtProsentase2KeyDown
          end
          object edtProsentase1: TEdit
            Left = 251
            Top = 30
            Width = 54
            Height = 21
            BevelInner = bvSpace
            BevelOuter = bvRaised
            TabOrder = 8
            Text = '0'
            OnExit = edtProsentase1Exit
            OnKeyDown = edtProsentase1KeyDown
          end
          object edtNilaiProsentase1: TEdit
            Left = 323
            Top = 30
            Width = 110
            Height = 21
            BevelInner = bvSpace
            BevelOuter = bvRaised
            ReadOnly = True
            TabOrder = 9
            Text = '0'
          end
          object edtNilaiProsentase2: TEdit
            Left = 323
            Top = 53
            Width = 110
            Height = 21
            BevelInner = bvSpace
            BevelOuter = bvRaised
            ReadOnly = True
            TabOrder = 10
            Text = '0'
          end
          object edtNilaiProsentaseMax: TEdit
            Left = 323
            Top = 76
            Width = 110
            Height = 21
            BevelInner = bvSpace
            BevelOuter = bvRaised
            ReadOnly = True
            TabOrder = 11
            Text = 'Max'
          end
          object edtProsentasePotongan: TEdit
            Left = 544
            Top = 30
            Width = 54
            Height = 21
            BevelInner = bvSpace
            BevelOuter = bvRaised
            TabOrder = 12
            Text = '0'
            OnExit = edtProsentasePotonganExit
            OnKeyDown = edtProsentasePotonganKeyDown
          end
          object edtNilaiProsentasePotongan: TEdit
            Left = 619
            Top = 28
            Width = 142
            Height = 21
            BevelInner = bvSpace
            BevelOuter = bvRaised
            ReadOnly = True
            TabOrder = 13
            Text = 'Max'
          end
          object edtTglAwal: TcxDateEdit
            Left = 544
            Top = 53
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 14
            Width = 89
          end
          object edtTglAkhir: TcxDateEdit
            Left = 664
            Top = 53
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 15
            Width = 89
          end
          object cxGroupBox3: TcxGroupBox
            Left = 440
            Top = 80
            Caption = 'Penentuan Sistem Harga Jual : '
            TabOrder = 16
            Height = 81
            Width = 385
            object cbProsentaseHpp: TcxCheckBox
              Left = 8
              Top = 24
              Caption = 'Berdasarkan Prosentase dari Harga Pokok'
              TabOrder = 0
              Transparent = True
              OnKeyDown = cbProsentaseHppKeyDown
              Width = 249
            end
            object cbNominalTetap: TcxCheckBox
              Left = 8
              Top = 48
              Caption = 'Berdasarkan Nominal Tetap'
              TabOrder = 1
              Transparent = True
              OnKeyDown = cbNominalTetapKeyDown
              Width = 161
            end
          end
          object edtProsentaseLevel1: TEdit
            Left = 99
            Top = 110
            Width = 54
            Height = 21
            BevelInner = bvSpace
            BevelOuter = bvRaised
            TabOrder = 17
            Text = '1'
            OnExit = edtProsentaseLevel1Exit
            OnKeyDown = edtProsentaseLevel1KeyDown
          end
          object edtProsentaseLevel2: TEdit
            Left = 99
            Top = 133
            Width = 54
            Height = 21
            BevelInner = bvSpace
            BevelOuter = bvRaised
            TabOrder = 18
            Text = '0'
            OnExit = edtProsentaseLevel2Exit
            OnKeyDown = edtProsentaseLevel2KeyDown
          end
          object edtProsentaseLevel3: TEdit
            Left = 99
            Top = 156
            Width = 54
            Height = 21
            BevelInner = bvSpace
            BevelOuter = bvRaised
            TabOrder = 19
            Text = '0'
            OnExit = edtProsentaseLevel3Exit
            OnKeyDown = edtProsentaseLevel3KeyDown
          end
          object edtNilaiProsentaseLevel3: TEdit
            Left = 171
            Top = 156
            Width = 110
            Height = 21
            BevelInner = bvSpace
            BevelOuter = bvRaised
            ReadOnly = True
            TabOrder = 20
            Text = 'Max'
          end
          object edtNilaiProsentaseLevel2: TEdit
            Left = 171
            Top = 133
            Width = 110
            Height = 21
            BevelInner = bvSpace
            BevelOuter = bvRaised
            ReadOnly = True
            TabOrder = 21
            Text = '0'
          end
          object edtnilaiProsentaseLevel1: TEdit
            Left = 171
            Top = 110
            Width = 110
            Height = 21
            BevelInner = bvSpace
            BevelOuter = bvRaised
            ReadOnly = True
            TabOrder = 22
            Text = '0'
          end
        end
        object cxDetailJasa: TcxTabSheet
          Caption = 'Detail Jasa'
          ImageIndex = 2
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 828
          ExplicitHeight = 0
          object lbl38: TLabel
            Left = 14
            Top = 8
            Width = 90
            Height = 13
            Caption = 'Harga Jual      :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object edtHargaJualJasa: TEdit
            Left = 115
            Top = 6
            Width = 177
            Height = 21
            BevelInner = bvSpace
            BevelOuter = bvRaised
            TabOrder = 0
            Text = '0'
            OnExit = edtHargaJualJasaExit
            OnKeyDown = edtHargaJualJasaKeyDown
          end
        end
      end
      object edtKode: TEdit [17]
        Left = 120
        Top = 6
        Width = 201
        Height = 21
        BevelInner = bvSpace
        BevelOuter = bvRaised
        TabOrder = 1
        Text = 'edtKode'
        OnKeyDown = edtKodeKeyDown
      end
      object edtBarcode: TEdit [18]
        Left = 120
        Top = 30
        Width = 281
        Height = 21
        BevelInner = bvSpace
        BevelOuter = bvRaised
        TabOrder = 2
        Text = 'edt1'
      end
      object edtItem: TEdit [19]
        Left = 120
        Top = 54
        Width = 361
        Height = 21
        BevelInner = bvSpace
        BevelOuter = bvRaised
        TabOrder = 3
        Text = 'edt1'
      end
      object edtJenis: TEdit [20]
        Left = 120
        Top = 78
        Width = 161
        Height = 21
        BevelInner = bvSpace
        BevelOuter = bvRaised
        TabOrder = 4
        Text = 'edt1'
        OnKeyDown = edtJenisKeyDown
      end
      object edtSatuan: TEdit [21]
        Left = 120
        Top = 102
        Width = 161
        Height = 21
        BevelInner = bvSpace
        BevelOuter = bvRaised
        TabOrder = 5
        Text = 'edt1'
        OnKeyDown = edtSatuanKeyDown
      end
      object edtKeterangan: TEdit [22]
        Left = 120
        Top = 126
        Width = 361
        Height = 21
        BevelInner = bvSpace
        BevelOuter = bvRaised
        TabOrder = 6
        Text = 'edt1'
      end
      object cxRadioGroup1: TcxRadioGroup [23]
        Left = 120
        Top = 149
        Properties.Items = <>
        Style.LookAndFeel.SkinName = 'UserSkin'
        StyleDisabled.LookAndFeel.SkinName = 'UserSkin'
        StyleFocused.LookAndFeel.SkinName = 'UserSkin'
        StyleHot.LookAndFeel.SkinName = 'UserSkin'
        TabOrder = 7
        Height = 33
        Width = 232
      end
      object btnJenis: TcxButton [24]
        Left = 280
        Top = 78
        Width = 25
        Height = 23
        Caption = '...'
        TabOrder = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btnSatuan: TcxButton [25]
        Left = 280
        Top = 102
        Width = 25
        Height = 23
        Caption = '...'
        TabOrder = 9
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      inherited cxGroupBox2: TcxGroupBox
        Top = 67
        Style.LookAndFeel.SkinName = 'UserSkin'
        StyleDisabled.LookAndFeel.SkinName = 'UserSkin'
        StyleFocused.LookAndFeel.SkinName = 'UserSkin'
        StyleHot.LookAndFeel.SkinName = 'UserSkin'
        TabOrder = 10
        Width = 181
      end
      object rbBarang: TcxCheckBox
        Left = 122
        Top = 155
        Caption = 'Barang'
        TabOrder = 11
        Transparent = True
        OnExit = rbBarangExit
        OnKeyDown = rbBarangKeyDown
        Width = 121
      end
      object rbJasa: TcxCheckBox
        Left = 223
        Top = 155
        Caption = 'Jasa'
        TabOrder = 12
        Transparent = True
        OnExit = rbJasaExit
        OnKeyDown = rbJasaKeyDown
        Width = 121
      end
    end
    inherited dxLayoutControl1Group_Root: TdxLayoutGroup
      inherited dxLayoutControl1Item2: TdxLayoutItem
        LayoutLookAndFeel = dxlytcxlkndfl1
      end
    end
  end
  object QCari: TUniQuery [2]
    DataTypeMap = <>
    Connection = MainForm.connPOS
    SQL.Strings = (
      'SELECT'
      'I.NoItem,'
      'I.KodeBarCode,'
      'I.NamaItem,'
      'I.Jenis,'
      'I.Satuan,'
      'I.HargaPokok,'
      'I.HargaJual,'
      'I.TotalPokok,'
      'I.Quantity,'
      'I.StokMin,'
      'I.StatusItem,'
      'I.Supplier,'
      'I.Supplier2,'
      'I.Supplier3,'
      'I.StatusProduk,'
      'I.Gambar,'
      'I.Note,'
      'I.DiskonP,'
      'I.DiskonN,'
      'I.PerDis1,'
      'I.PerDis2,'
      'I.HPUpdate,'
      'I.PrHargaL1,'
      'I.PrHargaL2,'
      'I.PrHargaL3,'
      'I.HargaPokok2,'
      'I.SupplierAkhir,'
      'I.TanggalAkhir,'
      'I.Inv_IdAwal,'
      'I.Inv_JmlAwal,'
      'I.Inv_HrgAwal,'
      'I.Inv_TglAwal,'
      'I.SistemHJ,'
      'I.QtyDari2,'
      'I.QtyDari3,'
      'I.QtySampai1,'
      'I.QtySampai2,'
      'I.Proc1,'
      'I.Proc2,'
      'I.Proc3,'
      'I.HargaL1,'
      'I.HargaL2,'
      'I.HargaL3,'
      'I.HargaJual2,'
      'I.HargaJual3,'
      'I.Keterangan'
      'FROM'
      'tblitem AS I'
      'WHERE'
      'I.NoItem=:NoItem_')
    Left = 536
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NoItem_'
      end>
    object QCariNoItem: TStringField
      FieldName = 'NoItem'
      Required = True
      Size = 40
    end
    object QCariKodeBarCode: TStringField
      FieldName = 'KodeBarCode'
      Size = 40
    end
    object QCariNamaItem: TStringField
      FieldName = 'NamaItem'
      Size = 100
    end
    object QCariJenis: TStringField
      FieldName = 'Jenis'
      Size = 10
    end
    object QCariSatuan: TStringField
      FieldName = 'Satuan'
      Size = 10
    end
    object QCariHargaPokok: TFloatField
      FieldName = 'HargaPokok'
    end
    object QCariHargaJual: TFloatField
      FieldName = 'HargaJual'
    end
    object QCariTotalPokok: TFloatField
      FieldName = 'TotalPokok'
    end
    object QCariQuantity: TFloatField
      FieldName = 'Quantity'
    end
    object QCariStokMin: TFloatField
      FieldName = 'StokMin'
    end
    object QCariSupplier: TStringField
      FieldName = 'Supplier'
    end
    object QCariSupplier2: TStringField
      FieldName = 'Supplier2'
    end
    object QCariSupplier3: TStringField
      FieldName = 'Supplier3'
    end
    object QCariGambar: TStringField
      FieldName = 'Gambar'
      Size = 100
    end
    object QCariNote: TMemoField
      FieldName = 'Note'
      BlobType = ftMemo
    end
    object QCariDiskonP: TFloatField
      FieldName = 'DiskonP'
    end
    object QCariDiskonN: TFloatField
      FieldName = 'DiskonN'
    end
    object QCariPerDis1: TDateTimeField
      FieldName = 'PerDis1'
    end
    object QCariPerDis2: TDateTimeField
      FieldName = 'PerDis2'
    end
    object QCariHPUpdate: TFloatField
      FieldName = 'HPUpdate'
    end
    object QCariPrHargaL1: TFloatField
      FieldName = 'PrHargaL1'
    end
    object QCariPrHargaL2: TFloatField
      FieldName = 'PrHargaL2'
    end
    object QCariPrHargaL3: TFloatField
      FieldName = 'PrHargaL3'
    end
    object QCariHargaPokok2: TFloatField
      FieldName = 'HargaPokok2'
    end
    object QCariSupplierAkhir: TStringField
      FieldName = 'SupplierAkhir'
    end
    object QCariTanggalAkhir: TDateTimeField
      FieldName = 'TanggalAkhir'
    end
    object QCariInv_IdAwal: TStringField
      FieldName = 'Inv_IdAwal'
      Size = 50
    end
    object QCariInv_JmlAwal: TFloatField
      FieldName = 'Inv_JmlAwal'
    end
    object QCariInv_HrgAwal: TFloatField
      FieldName = 'Inv_HrgAwal'
    end
    object QCariInv_TglAwal: TDateTimeField
      FieldName = 'Inv_TglAwal'
    end
    object QCariQtyDari2: TFloatField
      FieldName = 'QtyDari2'
    end
    object QCariQtyDari3: TFloatField
      FieldName = 'QtyDari3'
    end
    object QCariQtySampai1: TFloatField
      FieldName = 'QtySampai1'
    end
    object QCariQtySampai2: TFloatField
      FieldName = 'QtySampai2'
    end
    object QCariProc1: TFloatField
      FieldName = 'Proc1'
    end
    object QCariProc2: TFloatField
      FieldName = 'Proc2'
    end
    object QCariProc3: TFloatField
      FieldName = 'Proc3'
    end
    object QCariHargaL1: TFloatField
      FieldName = 'HargaL1'
    end
    object QCariHargaL2: TFloatField
      FieldName = 'HargaL2'
    end
    object QCariHargaL3: TFloatField
      FieldName = 'HargaL3'
    end
    object QCariHargaJual2: TFloatField
      FieldName = 'HargaJual2'
    end
    object QCariHargaJual3: TFloatField
      FieldName = 'HargaJual3'
    end
    object QCariKeterangan: TStringField
      FieldName = 'Keterangan'
      Size = 100
    end
    object QCariStatusItem: TSmallintField
      FieldName = 'StatusItem'
    end
    object QCariStatusProduk: TSmallintField
      FieldName = 'StatusProduk'
    end
    object QCariSistemHJ: TSmallintField
      FieldName = 'SistemHJ'
    end
  end
  inherited actlst1: TActionList
    object PilihJenis: TAction
      Caption = '...'
      OnExecute = PilihJenisExecute
    end
    object PilihSatuan: TAction
      Caption = '...'
      OnExecute = PilihSatuanExecute
    end
    object PilihSupplier: TAction
      Caption = '...'
      OnExecute = PilihSupplierExecute
    end
    object Simpan: TAction
      Caption = '&Simpan'
      OnExecute = SimpanExecute
    end
  end
  object QLook: TUniQuery
    DataTypeMap = <>
    Connection = MainForm.connPOS
    SQL.Strings = (
      'SELECT'
      'I.NoItem From tblItem As I')
    Left = 576
    Top = 16
  end
end
