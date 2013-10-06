inherited SupplierForm: TSupplierForm
  Left = 366
  Top = 244
  Caption = 'Form Data Supplier'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxTabControl1: TcxTabControl
    inherited cxGrid1: TcxGrid
      inherited cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
        DataController.DataSource = dsSupplier
        Bands = <
          item
            Caption = 'Information'
          end>
        object cxGrid1DBBandedTableView1KODE_SUPPLIER: TcxGridDBBandedColumn
          Caption = 'KODE'
          DataBinding.FieldName = 'KODE_SUPPLIER'
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1NAMA_SUPPLIER: TcxGridDBBandedColumn
          Caption = 'NAMA SUPPLIER'
          DataBinding.FieldName = 'NAMA_SUPPLIER'
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1TELEPON: TcxGridDBBandedColumn
          DataBinding.FieldName = 'TELEPON'
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1KONTAK: TcxGridDBBandedColumn
          DataBinding.FieldName = 'KONTAK'
          Position.BandIndex = 0
          Position.ColIndex = 3
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
  object tblSupplier: TADODataSet
    Connection = MainForm.conToko
    CursorType = ctStatic
    AfterInsert = tblSupplierAfterInsert
    AfterEdit = tblSupplierAfterEdit
    CommandText = 
      'select KODE_SUPPLIER, NAMA_SUPPLIER, ALAMAT, TELEPON, KONTAK fro' +
      'm tblsupplier'
    CommandTimeout = 300
    Parameters = <>
    Left = 144
    Top = 176
    object tblSupplierKODE_SUPPLIER: TWideStringField
      FieldName = 'KODE_SUPPLIER'
    end
    object tblSupplierNAMA_SUPPLIER: TWideStringField
      FieldName = 'NAMA_SUPPLIER'
      Size = 50
    end
    object tblSupplierALAMAT: TWideStringField
      FieldName = 'ALAMAT'
      Size = 50
    end
    object tblSupplierTELEPON: TWideStringField
      FieldName = 'TELEPON'
    end
    object tblSupplierKONTAK: TWideStringField
      FieldName = 'KONTAK'
      Size = 35
    end
  end
  object dsSupplier: TDataSource
    DataSet = tblSupplier
    Left = 200
    Top = 176
  end
end
