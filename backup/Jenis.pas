unit Jenis;

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
  cxGridTableView, cxGridDBBandedTableView, cxGrid, cxPC, Main, ADODB;

type
  TJenisForm = class(TTemplateForm)
    tblJenis: TADODataSet;
    dsJenis: TDataSource;
    cxGrid1DBBandedTableView1JENIS: TcxGridDBBandedColumn;
    tblJenisJENIS: TSmallintField;
    tblJenisDESCRIPTION: TWideStringField;
    cxGrid1DBBandedTableView1DESCRIPTION: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  JenisForm: TJenisForm;

implementation

{$R *.dfm}

procedure TJenisForm.FormCreate(Sender: TObject);
begin
  inherited;
  if MainForm.conToko.Connected = True then
  begin
    tblJenis.Close;
    tblJenis.Open;
  end;
end;

end.
