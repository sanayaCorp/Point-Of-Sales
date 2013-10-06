unit Barang;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Template, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridBandedTableView,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBBandedTableView, cxGrid, cxPC, Main, ADODB,
  cxDBLookupComboBox;

type
  TBarangForm = class(TTemplateForm)
    tblBarang: TADODataSet;
    tblBarangKODE_BARANG: TWideStringField;
    tblBarangNAMA_BARANG: TWideStringField;
    tblBarangJENIS: TSmallintField;
    tblBarangSATUAN: TSmallintField;
    tblBarangHARGA_BELI: TBCDField;
    tblBarangHARGA_JUAL: TBCDField;
    tblBarangSTOCK: TBCDField;
    tblJenis: TADODataSet;
    tblSatuan: TADODataSet;
    dsBarang: TDataSource;
    dsJenis: TDataSource;
    dsSatuan: TDataSource;
    cxGrid1DBBandedTableView1KODE_BARANG: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1NAMA_BARANG: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1JENIS: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1SATUAN: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1STOCK: TcxGridDBBandedColumn;
    tblJenisJENIS: TSmallintField;
    tblJenisDESCRIPTION: TWideStringField;
    tblSatuanSATUAN: TSmallintField;
    tblSatuanDESCRIPTION: TWideStringField;
    procedure FormCreate(Sender: TObject);
    procedure tblBarangAfterInsert(DataSet: TDataSet);
    procedure tblBarangAfterEdit(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BarangForm: TBarangForm;

implementation

uses fBarang;

{$R *.dfm}

procedure TBarangForm.FormCreate(Sender: TObject);
begin
  inherited;
  if MainForm.conToko.Connected = True then
  begin
    tblBarang.Close;
    tblBarang.Open;
    tblJenis.Close;
    tblJenis.Open;
    tblSatuan.Close;
    tblSatuan.Open;
  end;  
end;

procedure TBarangForm.tblBarangAfterInsert(DataSet: TDataSet);
begin
  inherited;
  fBarangForm := TFBarangForm.create(Self);
  fBarangForm.caption := 'New Add Barang';
  fbarangForm.dbedit1.enabled := true;
  fBarangForm.show;
end;

procedure TBarangForm.tblBarangAfterEdit(DataSet: TDataSet);
begin
  inherited;
  fBarangForm := TFBarangForm.create(Self);
  fBarangForm.caption := 'Change Old Barang';
  fbarangForm.dbedit1.enabled := False;
  fBarangForm.show;
end;

end.
