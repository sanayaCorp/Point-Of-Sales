inherited JenisForm: TJenisForm
  Left = 318
  Top = 269
  Width = 361
  Height = 474
  Caption = 'Form Data Jenis'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxTabControl1: TcxTabControl
    Left = 0
    Top = 0
    Width = 353
    Height = 440
    Align = alClient
    ClientRectBottom = 440
    ClientRectRight = 353
    inherited cxGrid1: TcxGrid
      Width = 337
      Height = 401
      inherited cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
        DataController.DataSource = dsJenis
        Bands = <
          item
            Caption = 'Information'
          end>
        object cxGrid1DBBandedTableView1JENIS: TcxGridDBBandedColumn
          DataBinding.FieldName = 'JENIS'
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1DESCRIPTION: TcxGridDBBandedColumn
          DataBinding.FieldName = 'DESCRIPTION'
          Position.BandIndex = 0
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
  object tblJenis: TADODataSet
    Connection = MainForm.conToko
    CursorType = ctStatic
    CommandText = 'select JENIS, DESCRIPTION from tbljenis'
    CommandTimeout = 300
    Parameters = <>
    Left = 112
    Top = 144
    object tblJenisJENIS: TSmallintField
      FieldName = 'JENIS'
    end
    object tblJenisDESCRIPTION: TWideStringField
      FieldName = 'DESCRIPTION'
      Size = 35
    end
  end
  object dsJenis: TDataSource
    DataSet = tblJenis
    Left = 160
    Top = 144
  end
end
