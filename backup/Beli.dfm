inherited BeliForm: TBeliForm
  Left = 363
  Top = 218
  Width = 995
  Caption = 'Form Data Pembelian'
  Position = poDefault
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxTabControl1: TcxTabControl
    Width = 971
    ClientRectRight = 971
    inherited cxGrid1: TcxGrid
      Width = 955
      inherited cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
        DataController.DataSource = dsBeliHdr
        Bands = <
          item
            Caption = 'Information'
          end
          item
            Caption = 'Value'
          end>
        object cxGrid1DBBandedTableView1TGL_PEMBELIAN: TcxGridDBBandedColumn
          Caption = 'TGL. TRANSACTION'
          DataBinding.FieldName = 'TGL_PEMBELIAN'
          Width = 152
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1FAKTUR_PEMBELIAN: TcxGridDBBandedColumn
          Caption = 'FAKTUR'
          DataBinding.FieldName = 'FAKTUR_PEMBELIAN'
          Width = 211
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1KODE_SUPPLIER: TcxGridDBBandedColumn
          Caption = 'SUPPLIER'
          DataBinding.FieldName = 'KODE_SUPPLIER'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownAutoSize = True
          Properties.DropDownListStyle = lsFixedList
          Properties.KeyFieldNames = 'KODE_SUPPLIER'
          Properties.ListColumns = <
            item
              FieldName = 'NAMA_SUPPLIER'
            end>
          Properties.ListSource = dsSupplier
          Width = 347
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1DISC: TcxGridDBBandedColumn
          DataBinding.FieldName = 'DISC'
          Width = 64
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1TOTAL: TcxGridDBBandedColumn
          DataBinding.FieldName = 'TOTAL'
          Width = 179
          Position.BandIndex = 1
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
      end
    end
  end
  inherited cxStyleRepository1: TcxStyleRepository
    inherited GridBandedTableViewStyleSheetWindowsClassic: TcxGridBandedTableViewStyleSheet
      BuiltIn = True
    end
  end
  object tblBeliHdr: TADODataSet
    Connection = MainForm.conToko
    CursorType = ctStatic
    AfterInsert = tblBeliHdrAfterInsert
    AfterEdit = tblBeliHdrAfterEdit
    OnNewRecord = tblBeliHdrNewRecord
    CommandText = 
      'select FAKTUR_PEMBELIAN, TGL_PEMBELIAN, KODE_SUPPLIER, DISC, NDi' +
      'sc_, PPN, NPPN_, TOTAL, cBayar, SYS from tblpembelianhdr order b' +
      'y Tgl_Pembelian, Faktur_Pembelian Asc'
    CommandTimeout = 300
    Parameters = <>
    Left = 112
    Top = 128
    object tblBeliHdrFAKTUR_PEMBELIAN: TWideStringField
      FieldName = 'FAKTUR_PEMBELIAN'
      Size = 25
    end
    object tblBeliHdrTGL_PEMBELIAN: TDateField
      FieldName = 'TGL_PEMBELIAN'
    end
    object tblBeliHdrKODE_SUPPLIER: TWideStringField
      FieldName = 'KODE_SUPPLIER'
    end
    object tblBeliHdrDISC: TFloatField
      FieldName = 'DISC'
      OnValidate = tblBeliHdrDISCValidate
      DisplayFormat = '#,#0.00'
    end
    object tblBeliHdrNDisc_: TBCDField
      FieldName = 'NDisc_'
      DisplayFormat = '###,#0.00'
      Precision = 28
      Size = 8
    end
    object tblBeliHdrPPN: TFloatField
      FieldName = 'PPN'
      OnValidate = tblBeliHdrPPNValidate
      DisplayFormat = '#,#0.00'
    end
    object tblBeliHdrNPPN_: TBCDField
      FieldName = 'NPPN_'
      DisplayFormat = '###,#0.00'
      Precision = 28
      Size = 8
    end
    object tblBeliHdrTOTAL: TBCDField
      FieldName = 'TOTAL'
      DisplayFormat = '###,#0.00'
      Precision = 28
      Size = 8
    end
    object tblBeliHdrsubTotal: TBCDField
      FieldKind = fkCalculated
      FieldName = 'subTotal'
      Calculated = True
    end
    object tblBeliHdrcBayar: TSmallintField
      FieldName = 'cBayar'
    end
    object tblBeliHdrSYS: TAutoIncField
      FieldName = 'SYS'
      ReadOnly = True
    end
  end
  object dsBeliHdr: TDataSource
    DataSet = tblBeliHdr
    Left = 184
    Top = 128
  end
  object dsSupplier: TDataSource
    DataSet = tblSupplier
    Left = 184
    Top = 192
  end
  object tblSupplier: TADODataSet
    Connection = MainForm.conToko
    CursorType = ctStatic
    CommandText = 
      'select KODE_SUPPLIER, NAMA_SUPPLIER from tblsupplier'#13#10'order by K' +
      'ode_Supplier'
    Parameters = <>
    Left = 112
    Top = 192
    object tblSupplierKODE_SUPPLIER: TWideStringField
      FieldName = 'KODE_SUPPLIER'
    end
    object tblSupplierNAMA_SUPPLIER: TWideStringField
      FieldName = 'NAMA_SUPPLIER'
      Size = 50
    end
  end
  object tblBeliDtl: TADODataSet
    Connection = MainForm.conToko
    CursorType = ctStatic
    AfterPost = tblBeliDtlAfterPost
    OnNewRecord = tblBeliDtlNewRecord
    CommandText = 
      'select FAKTUR_PEMBELIAN, NO, KODE_BARANG, HARGA_BELI, JUMLAH, SU' +
      'BTOTAL, SYS from tblpembeliandtl Where '#13#10'Faktur_Pembelian=:Faktu' +
      'r_Pembelian and Sys=:Sys'
    DataSource = dsBeliHdr
    IndexFieldNames = 'FAKTUR_PEMBELIAN;SYS'
    MasterFields = 'FAKTUR_PEMBELIAN;SYS'
    Parameters = <
      item
        Name = 'Faktur_Pembelian'
        Attributes = [paNullable]
        DataType = ftString
        Precision = 255
        Size = 255
        Value = Null
      end
      item
        Name = 'Sys'
        Attributes = [paNullable]
        DataType = ftString
        Precision = 255
        Size = 255
        Value = Null
      end>
    Left = 112
    Top = 248
    object tblBeliDtlFAKTUR_PEMBELIAN: TWideStringField
      FieldName = 'FAKTUR_PEMBELIAN'
      Size = 25
    end
    object tblBeliDtlNO: TBCDField
      FieldName = 'NO'
      Precision = 18
      Size = 8
    end
    object tblBeliDtlKODE_BARANG: TWideStringField
      FieldName = 'KODE_BARANG'
      OnValidate = tblBeliDtlKODE_BARANGValidate
      Size = 30
    end
    object tblBeliDtlHARGA_BELI: TBCDField
      FieldName = 'HARGA_BELI'
      DisplayFormat = '###,#0.00'
      Precision = 28
      Size = 8
    end
    object tblBeliDtlJUMLAH: TBCDField
      FieldName = 'JUMLAH'
      OnValidate = tblBeliDtlJUMLAHValidate
      DisplayFormat = '#,#0.00'
      Precision = 18
      Size = 8
    end
    object tblBeliDtlSUBTOTAL: TBCDField
      FieldName = 'SUBTOTAL'
      DisplayFormat = '###,#0.00'
      Precision = 28
      Size = 8
    end
    object tblBeliDtlSYS: TIntegerField
      FieldName = 'SYS'
    end
  end
  object dsBeliDtl: TDataSource
    DataSet = tblBeliDtl
    Left = 184
    Top = 248
  end
  object tblBarang: TADODataSet
    Connection = MainForm.conToko
    CursorType = ctStatic
    CommandText = 
      'select KODE_BARANG, NAMA_BARANG, HARGA_BELI, STOCK, DescSatuan f' +
      'rom vbarang'#13#10'order by Kode_Barang'
    CommandTimeout = 300
    Parameters = <>
    Left = 112
    Top = 304
    object tblBarangKODE_BARANG: TWideStringField
      FieldName = 'KODE_BARANG'
      Size = 30
    end
    object tblBarangNAMA_BARANG: TWideStringField
      FieldName = 'NAMA_BARANG'
      Size = 50
    end
    object tblBarangHARGA_BELI: TBCDField
      FieldName = 'HARGA_BELI'
      DisplayFormat = '###,#0.00'
      Precision = 28
      Size = 8
    end
    object tblBarangSTOCK: TBCDField
      FieldName = 'STOCK'
      DisplayFormat = '#,#0.00'
      Precision = 18
      Size = 8
    end
    object tblBarangDescSatuan: TWideStringField
      FieldName = 'DescSatuan'
      Size = 35
    end
  end
  object dsBarang: TDataSource
    DataSet = tblBarang
    Left = 184
    Top = 304
  end
  object spNo_Urut: TADOStoredProc
    Connection = MainForm.conToko
    CursorType = ctStatic
    CommandTimeout = 300
    ProcedureName = 'SP_NoUrut'
    Parameters = <
      item
        Name = 'NOFaktur'
        Attributes = [paNullable]
        DataType = ftString
        Size = 25
        Value = ''
      end
      item
        Name = 'Table_'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = ''
      end>
    Left = 112
    Top = 360
    object spNo_Uruthasil: TIntegerField
      FieldName = 'hasil'
      ReadOnly = True
    end
  end
  object sp_Total: TADOStoredProc
    Connection = MainForm.conToko
    CursorType = ctStatic
    CommandTimeout = 300
    ProcedureName = 'SP_TOTAL'
    Parameters = <
      item
        Name = 'FAKTUR'
        Attributes = [paNullable]
        DataType = ftString
        Size = 25
        Value = ''
      end
      item
        Name = 'TABLE_'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = ''
      end>
    Left = 184
    Top = 360
    object sp_TotalTOTAL_: TBCDField
      FieldName = 'TOTAL_'
      ReadOnly = True
      DisplayFormat = '###,#0.00'
      Precision = 28
      Size = 8
    end
  end
  object ds_Total: TDataSource
    DataSet = sp_Total
    Left = 240
    Top = 360
  end
end
