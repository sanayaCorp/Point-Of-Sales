unit Item;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, templateBrowse, cxGraphics, cxControls, cxLookAndFeels,
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
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxContainer, Menus,
  dxLayoutControl, dxLayoutcxEditAdapters, dxLayoutLookAndFeels, StdCtrls,
  cxButtons, cxGroupBox, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, Main,
  ActnList, MemDS, DBAccess, Uni;

type
  TItemForm = class(TTemplateForm)
    actlst1: TActionList;
    New: TAction;
    QItem: TUniQuery;
    QItemNoItem: TStringField;
    QItemKodeBarCode: TStringField;
    QItemNamaItem: TStringField;
    QItemJenis: TStringField;
    QItemSatuan: TStringField;
    QItemHargaPokok: TFloatField;
    QItemHargaJual: TFloatField;
    QItemTotalPokok: TFloatField;
    QItemQuantity: TFloatField;
    QItemStokMin: TFloatField;
    QItemSupplier: TStringField;
    QItemSupplier2: TStringField;
    QItemSupplier3: TStringField;
    QItemGambar: TStringField;
    QItemNote: TMemoField;
    QItemDiskonP: TFloatField;
    QItemDiskonN: TFloatField;
    QItemPerDis1: TDateTimeField;
    QItemPerDis2: TDateTimeField;
    QItemHPUpdate: TFloatField;
    QItemPrHargaL1: TFloatField;
    QItemPrHargaL2: TFloatField;
    QItemPrHargaL3: TFloatField;
    QItemHargaPokok2: TFloatField;
    QItemSupplierAkhir: TStringField;
    QItemTanggalAkhir: TDateTimeField;
    QItemInv_IdAwal: TStringField;
    QItemInv_JmlAwal: TFloatField;
    QItemInv_HrgAwal: TFloatField;
    QItemInv_TglAwal: TDateTimeField;
    QItemQtyDari2: TFloatField;
    QItemQtyDari3: TFloatField;
    QItemQtySampai1: TFloatField;
    QItemQtySampai2: TFloatField;
    QItemProc1: TFloatField;
    QItemProc2: TFloatField;
    QItemProc3: TFloatField;
    QItemHargaL1: TFloatField;
    QItemHargaL2: TFloatField;
    QItemHargaL3: TFloatField;
    QItemHargaJual2: TFloatField;
    QItemHargaJual3: TFloatField;
    QItem_: TUniDataSource;
    cxGrid1DBTableView1NoItem: TcxGridDBColumn;
    cxGrid1DBTableView1NamaItem: TcxGridDBColumn;
    cxGrid1DBTableView1Jenis: TcxGridDBColumn;
    cxGrid1DBTableView1Satuan: TcxGridDBColumn;
    cxGrid1DBTableView1HargaPokok: TcxGridDBColumn;
    cxGrid1DBTableView1Quantity: TcxGridDBColumn;
    cxGrid1DBTableView1KodeBarCode: TcxGridDBColumn;
    QItemStatusItem: TSmallintField;
    QItemStatusProduk: TSmallintField;
    QItemSistemHJ: TSmallintField;
    procedure NewExecute(Sender: TObject);
  private
    { Private declarations }
  public
    StatTrans_ :SmallInt;
    { Public declarations }
  end;

var
  ItemForm: TItemForm;

implementation
uses fItem;
{$R *.dfm}

procedure TItemForm.NewExecute(Sender: TObject);
begin
  inherited;
  StatTrans_ := 1;
  TransaksiItem := TTransaksiItem.create(Self);
  TransaksiItem.show;
end;

end.
