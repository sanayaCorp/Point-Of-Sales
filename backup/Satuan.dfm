inherited SatuanForm: TSatuanForm
  Left = 403
  Top = 221
  Width = 361
  Caption = 'Form Data Satuan'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxTabControl1: TcxTabControl
    Left = 0
    Top = 0
    Width = 353
    Height = 466
    Align = alClient
    ClientRectBottom = 466
    ClientRectRight = 353
    inherited cxGrid1: TcxGrid
      Width = 338
      Height = 426
      inherited cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
        DataController.DataSource = dsSatuan
        Bands = <
          item
            Caption = 'Information'
          end>
        object cxGrid1DBBandedTableView1SATUAN: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SATUAN'
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
  object tblSatuan: TADODataSet
    Connection = MainForm.conToko
    CursorType = ctStatic
    CommandText = 'select SATUAN, DESCRIPTION from tblsatuan'
    CommandTimeout = 300
    Parameters = <>
    Left = 88
    Top = 136
    object tblSatuanSATUAN: TSmallintField
      FieldName = 'SATUAN'
    end
    object tblSatuanDESCRIPTION: TWideStringField
      FieldName = 'DESCRIPTION'
      Size = 35
    end
  end
  object dsSatuan: TDataSource
    DataSet = tblSatuan
    Left = 136
    Top = 136
  end
end
