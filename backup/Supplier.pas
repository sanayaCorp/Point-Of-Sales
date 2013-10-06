unit Supplier;

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
  cxGridTableView, cxGridDBBandedTableView, cxGrid, cxPC, MAin, ADODB;

type
  TSupplierForm = class(TTemplateForm)
    tblSupplier: TADODataSet;
    tblSupplierKODE_SUPPLIER: TWideStringField;
    tblSupplierNAMA_SUPPLIER: TWideStringField;
    tblSupplierALAMAT: TWideStringField;
    tblSupplierTELEPON: TWideStringField;
    tblSupplierKONTAK: TWideStringField;
    dsSupplier: TDataSource;
    cxGrid1DBBandedTableView1KODE_SUPPLIER: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1NAMA_SUPPLIER: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1TELEPON: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1KONTAK: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure tblSupplierAfterInsert(DataSet: TDataSet);
    procedure tblSupplierAfterEdit(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SupplierForm: TSupplierForm;

implementation

uses fSupplier;

{$R *.dfm}

procedure TSupplierForm.FormCreate(Sender: TObject);
begin
  inherited;
  if MainForm.conToko.Connected = True Then
  begin
    tblSupplier.Close;
    tblSupplier.Open;
  end;
end;

procedure TSupplierForm.tblSupplierAfterInsert(DataSet: TDataSet);
begin
  inherited;
  fSupplierForm := TfSupplierForm.create(Self);
  fSupplierForm.caption := 'New Add Supplier';
  fSupplierForm.dbedit1.enabled := true;
  fSupplierForm.show;
end;

procedure TSupplierForm.tblSupplierAfterEdit(DataSet: TDataSet);
begin
  inherited;
  fSupplierForm := TfSupplierForm.create(Self);
  fSupplierForm.caption := 'Change Old Supplier';
  fSupplierForm.dbedit1.enabled := False;
  fSupplierForm.show;
end;

end.
