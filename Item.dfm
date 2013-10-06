inherited ItemForm: TItemForm
  Caption = 'Modul Item Form'
  ClientHeight = 469
  ClientWidth = 865
  ExplicitWidth = 873
  ExplicitHeight = 503
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 865
    Height = 469
    ExplicitWidth = 865
    ExplicitHeight = 469
    inherited cxGrid1: TcxGrid
      Width = 250
      Height = 200
      ExplicitWidth = 250
      ExplicitHeight = 200
      inherited cxGrid1DBTableView1: TcxGridDBTableView
        DataController.DataSource = QItem_
        OptionsView.CellEndEllipsis = True
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1NoItem: TcxGridDBColumn
          Caption = 'Item ID'
          DataBinding.FieldName = 'NoItem'
          Width = 153
        end
        object cxGrid1DBTableView1KodeBarCode: TcxGridDBColumn
          Caption = 'Barcode'
          DataBinding.FieldName = 'KodeBarCode'
          Width = 152
        end
        object cxGrid1DBTableView1NamaItem: TcxGridDBColumn
          Caption = 'Nama Item'
          DataBinding.FieldName = 'NamaItem'
          Width = 260
        end
        object cxGrid1DBTableView1Quantity: TcxGridDBColumn
          Caption = 'Stock'
          DataBinding.FieldName = 'Quantity'
          HeaderAlignmentHorz = taRightJustify
          Width = 61
        end
        object cxGrid1DBTableView1Jenis: TcxGridDBColumn
          DataBinding.FieldName = 'Jenis'
          Width = 73
        end
        object cxGrid1DBTableView1Satuan: TcxGridDBColumn
          DataBinding.FieldName = 'Satuan'
          Width = 61
        end
        object cxGrid1DBTableView1HargaPokok: TcxGridDBColumn
          Caption = 'Harga Pokok'
          DataBinding.FieldName = 'HargaPokok'
          HeaderAlignmentHorz = taRightJustify
          Width = 83
        end
      end
    end
    inherited cxGroupBox1: TcxGroupBox
      Top = 427
      ExplicitTop = 427
      inherited btnNew: TcxButton
        Action = New
      end
    end
  end
  object actlst1: TActionList
    Left = 344
    Top = 112
    object New: TAction
      Category = 'Button'
      Caption = '&New'
      OnExecute = NewExecute
    end
  end
  object QItem: TUniQuery
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
      'I.HargaJual3'
      'FROM'
      'tblitem AS I'
      'Order by I.NamaItem, I.NoItem Asc')
    Left = 344
    Top = 168
    object QItemNoItem: TStringField
      FieldName = 'NoItem'
      Required = True
      Size = 40
    end
    object QItemKodeBarCode: TStringField
      FieldName = 'KodeBarCode'
      Size = 40
    end
    object QItemNamaItem: TStringField
      FieldName = 'NamaItem'
      Size = 100
    end
    object QItemJenis: TStringField
      FieldName = 'Jenis'
      Size = 10
    end
    object QItemSatuan: TStringField
      FieldName = 'Satuan'
      Size = 10
    end
    object QItemHargaPokok: TFloatField
      FieldName = 'HargaPokok'
    end
    object QItemHargaJual: TFloatField
      FieldName = 'HargaJual'
    end
    object QItemTotalPokok: TFloatField
      FieldName = 'TotalPokok'
    end
    object QItemQuantity: TFloatField
      FieldName = 'Quantity'
    end
    object QItemStokMin: TFloatField
      FieldName = 'StokMin'
    end
    object QItemSupplier: TStringField
      FieldName = 'Supplier'
    end
    object QItemSupplier2: TStringField
      FieldName = 'Supplier2'
    end
    object QItemSupplier3: TStringField
      FieldName = 'Supplier3'
    end
    object QItemGambar: TStringField
      FieldName = 'Gambar'
      Size = 100
    end
    object QItemNote: TMemoField
      FieldName = 'Note'
      BlobType = ftMemo
    end
    object QItemDiskonP: TFloatField
      FieldName = 'DiskonP'
    end
    object QItemDiskonN: TFloatField
      FieldName = 'DiskonN'
    end
    object QItemPerDis1: TDateTimeField
      FieldName = 'PerDis1'
    end
    object QItemPerDis2: TDateTimeField
      FieldName = 'PerDis2'
    end
    object QItemHPUpdate: TFloatField
      FieldName = 'HPUpdate'
    end
    object QItemPrHargaL1: TFloatField
      FieldName = 'PrHargaL1'
    end
    object QItemPrHargaL2: TFloatField
      FieldName = 'PrHargaL2'
    end
    object QItemPrHargaL3: TFloatField
      FieldName = 'PrHargaL3'
    end
    object QItemHargaPokok2: TFloatField
      FieldName = 'HargaPokok2'
    end
    object QItemSupplierAkhir: TStringField
      FieldName = 'SupplierAkhir'
    end
    object QItemTanggalAkhir: TDateTimeField
      FieldName = 'TanggalAkhir'
    end
    object QItemInv_IdAwal: TStringField
      FieldName = 'Inv_IdAwal'
      Size = 50
    end
    object QItemInv_JmlAwal: TFloatField
      FieldName = 'Inv_JmlAwal'
    end
    object QItemInv_HrgAwal: TFloatField
      FieldName = 'Inv_HrgAwal'
    end
    object QItemInv_TglAwal: TDateTimeField
      FieldName = 'Inv_TglAwal'
    end
    object QItemQtyDari2: TFloatField
      FieldName = 'QtyDari2'
    end
    object QItemQtyDari3: TFloatField
      FieldName = 'QtyDari3'
    end
    object QItemQtySampai1: TFloatField
      FieldName = 'QtySampai1'
    end
    object QItemQtySampai2: TFloatField
      FieldName = 'QtySampai2'
    end
    object QItemProc1: TFloatField
      FieldName = 'Proc1'
    end
    object QItemProc2: TFloatField
      FieldName = 'Proc2'
    end
    object QItemProc3: TFloatField
      FieldName = 'Proc3'
    end
    object QItemHargaL1: TFloatField
      FieldName = 'HargaL1'
    end
    object QItemHargaL2: TFloatField
      FieldName = 'HargaL2'
    end
    object QItemHargaL3: TFloatField
      FieldName = 'HargaL3'
    end
    object QItemHargaJual2: TFloatField
      FieldName = 'HargaJual2'
    end
    object QItemHargaJual3: TFloatField
      FieldName = 'HargaJual3'
    end
    object QItemStatusItem: TSmallintField
      FieldName = 'StatusItem'
    end
    object QItemStatusProduk: TSmallintField
      FieldName = 'StatusProduk'
    end
    object QItemSistemHJ: TSmallintField
      FieldName = 'SistemHJ'
    end
  end
  object QItem_: TUniDataSource
    DataSet = QItem
    Left = 432
    Top = 168
  end
end
