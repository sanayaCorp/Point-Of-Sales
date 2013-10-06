inherited BarangForm: TBarangForm
  Caption = 'Form Data Barang'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxTabControl1: TcxTabControl
    inherited cxGrid1: TcxGrid
      inherited cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
        DataController.DataSource = dsBarang
        Bands = <
          item
            Caption = 'Information'
          end>
        object cxGrid1DBBandedTableView1KODE_BARANG: TcxGridDBBandedColumn
          Caption = 'KODE'
          DataBinding.FieldName = 'KODE_BARANG'
          Width = 164
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1NAMA_BARANG: TcxGridDBBandedColumn
          Caption = 'NAMA BARANG'
          DataBinding.FieldName = 'NAMA_BARANG'
          Width = 272
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1JENIS: TcxGridDBBandedColumn
          DataBinding.FieldName = 'JENIS'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownAutoSize = True
          Properties.DropDownListStyle = lsFixedList
          Properties.KeyFieldNames = 'JENIS'
          Properties.ListColumns = <
            item
              FieldName = 'DESCRIPTION'
            end>
          Properties.ListSource = dsJenis
          Width = 84
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1SATUAN: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SATUAN'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownAutoSize = True
          Properties.DropDownListStyle = lsFixedList
          Properties.KeyFieldNames = 'SATUAN'
          Properties.ListColumns = <
            item
              FieldName = 'DESCRIPTION'
            end>
          Properties.ListSource = dsSatuan
          Width = 79
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1STOCK: TcxGridDBBandedColumn
          DataBinding.FieldName = 'STOCK'
          Width = 56
          Position.BandIndex = 0
          Position.ColIndex = 4
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
  object tblBarang: TADODataSet
    Connection = MainForm.conToko
    CursorType = ctStatic
    AfterInsert = tblBarangAfterInsert
    AfterEdit = tblBarangAfterEdit
    CommandText = 
      'select KODE_BARANG, NAMA_BARANG, JENIS, SATUAN, HARGA_BELI, HARG' +
      'A_JUAL, STOCK from tblbarang'
    CommandTimeout = 300
    Parameters = <>
    Left = 104
    Top = 152
    object tblBarangKODE_BARANG: TWideStringField
      FieldName = 'KODE_BARANG'
      Size = 30
    end
    object tblBarangNAMA_BARANG: TWideStringField
      FieldName = 'NAMA_BARANG'
      Size = 50
    end
    object tblBarangJENIS: TSmallintField
      FieldName = 'JENIS'
    end
    object tblBarangSATUAN: TSmallintField
      FieldName = 'SATUAN'
    end
    object tblBarangHARGA_BELI: TBCDField
      FieldName = 'HARGA_BELI'
      Precision = 28
      Size = 8
    end
    object tblBarangHARGA_JUAL: TBCDField
      FieldName = 'HARGA_JUAL'
      Precision = 28
      Size = 8
    end
    object tblBarangSTOCK: TBCDField
      FieldName = 'STOCK'
      Precision = 18
      Size = 8
    end
  end
  object tblJenis: TADODataSet
    Connection = MainForm.conToko
    CursorType = ctStatic
    CommandText = 'select  JENIS, DESCRIPTION from tbljenis'
    CommandTimeout = 300
    Parameters = <>
    Left = 104
    Top = 208
    object tblJenisJENIS: TSmallintField
      FieldName = 'JENIS'
    end
    object tblJenisDESCRIPTION: TWideStringField
      FieldName = 'DESCRIPTION'
      Size = 35
    end
  end
  object tblSatuan: TADODataSet
    Connection = MainForm.conToko
    CursorType = ctStatic
    CommandText = 'select SATUAN, DESCRIPTION from tblsatuan'
    CommandTimeout = 300
    Parameters = <>
    Left = 104
    Top = 264
    object tblSatuanSATUAN: TSmallintField
      FieldName = 'SATUAN'
    end
    object tblSatuanDESCRIPTION: TWideStringField
      FieldName = 'DESCRIPTION'
      Size = 35
    end
  end
  object dsBarang: TDataSource
    DataSet = tblBarang
    Left = 176
    Top = 152
  end
  object dsJenis: TDataSource
    DataSet = tblJenis
    Left = 176
    Top = 208
  end
  object dsSatuan: TDataSource
    DataSet = tblSatuan
    Left = 176
    Top = 264
  end
end
