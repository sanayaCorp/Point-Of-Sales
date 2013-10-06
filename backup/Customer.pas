unit Customer;

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
  TCustomerForm = class(TTemplateForm)
    tblCustomer: TADODataSet;
    tblCustomerKODE_PELANGGAN: TWideStringField;
    tblCustomerNAMA_PELANGGAN: TWideStringField;
    tblCustomerALAMAT_PELANGGAN: TWideStringField;
    tblCustomerTELEPON: TWideStringField;
    dsCustomer: TDataSource;
    cxGrid1DBBandedTableView1KODE_PELANGGAN: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1NAMA_PELANGGAN: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1TELEPON: TcxGridDBBandedColumn;
    procedure tblCustomerAfterInsert(DataSet: TDataSet);
    procedure tblCustomerAfterEdit(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CustomerForm: TCustomerForm;

implementation

uses fCustomer;

{$R *.dfm}

procedure TCustomerForm.tblCustomerAfterInsert(DataSet: TDataSet);
begin
  inherited;
  fCustomerform := TfCustomerform.create(self);
  fCustomerform.caption := 'Add New Customer';
  fCustomerform.Dbedit1.enabled := True;
  fCustomerform.show;
end;

procedure TCustomerForm.tblCustomerAfterEdit(DataSet: TDataSet);
begin
  inherited;
  fCustomerform := TfCustomerform.create(self);
  fCustomerform.caption := 'Change Old Customer';
  fCustomerform.Dbedit1.enabled := false;
  fCustomerform.show;
end;

procedure TCustomerForm.FormCreate(Sender: TObject);
begin
  inherited;
  if MainForm.conToko.Connected = True then
  begin
    tblCustomer.Close;
    tblCustomer.Open;
  end;  
end;

end.
