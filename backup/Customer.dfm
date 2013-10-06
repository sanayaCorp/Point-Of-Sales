inherited CustomerForm: TCustomerForm
  Caption = 'Form Data Customer'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxTabControl1: TcxTabControl
    inherited cxGrid1: TcxGrid
      inherited cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
        DataController.DataSource = dsCustomer
        Bands = <
          item
            Caption = 'Information'
          end>
        object cxGrid1DBBandedTableView1KODE_PELANGGAN: TcxGridDBBandedColumn
          Caption = 'KODE'
          DataBinding.FieldName = 'KODE_PELANGGAN'
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1NAMA_PELANGGAN: TcxGridDBBandedColumn
          Caption = 'NAMA PELANGGAN'
          DataBinding.FieldName = 'NAMA_PELANGGAN'
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
      end
    end
  end
  inherited cxStyleRepository1: TcxStyleRepository
    inherited GridBandedTableViewStyleSheetWindowsClassic: TcxGridBandedTableViewStyleSheet
      BuiltIn = True
    end
  end
  object tblCustomer: TADODataSet
    Connection = MainForm.conToko
    CursorType = ctStatic
    AfterInsert = tblCustomerAfterInsert
    AfterEdit = tblCustomerAfterEdit
    CommandText = 
      'select KODE_PELANGGAN, NAMA_PELANGGAN, ALAMAT_PELANGGAN, TELEPON' +
      ' from tblpelanggan'
    CommandTimeout = 300
    Parameters = <>
    Left = 136
    Top = 200
    object tblCustomerKODE_PELANGGAN: TWideStringField
      FieldName = 'KODE_PELANGGAN'
    end
    object tblCustomerNAMA_PELANGGAN: TWideStringField
      FieldName = 'NAMA_PELANGGAN'
      Size = 50
    end
    object tblCustomerALAMAT_PELANGGAN: TWideStringField
      FieldName = 'ALAMAT_PELANGGAN'
      Size = 50
    end
    object tblCustomerTELEPON: TWideStringField
      FieldName = 'TELEPON'
    end
  end
  object dsCustomer: TDataSource
    DataSet = tblCustomer
    Left = 184
    Top = 200
  end
end
