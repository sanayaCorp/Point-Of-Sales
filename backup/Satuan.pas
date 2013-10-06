unit Satuan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Main, Template, cxGraphics, cxControls, cxLookAndFeels,
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
  cxGridTableView, cxGridDBBandedTableView, cxGrid, cxPC, ADODB;

type
  TSatuanForm = class(TTemplateForm)
    tblSatuan: TADODataSet;
    dsSatuan: TDataSource;
    cxGrid1DBBandedTableView1SATUAN: TcxGridDBBandedColumn;
    tblSatuanSATUAN: TSmallintField;
    tblSatuanDESCRIPTION: TWideStringField;
    cxGrid1DBBandedTableView1DESCRIPTION: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SatuanForm: TSatuanForm;

implementation

{$R *.dfm}

procedure TSatuanForm.FormCreate(Sender: TObject);
begin
  inherited;
  if MainForm.conToko.Connected = True then
  begin
    tblSatuan.Close;
    tblSatuan.Open;
  end;
end;

end.
