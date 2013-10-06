unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, dxSkinsCore, dxSkinsdxBarPainter, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxBar, cxClasses, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsdxStatusBarPainter,
  dxStatusBar, DB, ADODB, ActnList, mylib;
type
  TMyMenuItem = class(TMenuItem);
  
type

  TMainForm = class(TForm)
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    ransaksi1: TdxBarSubItem;
    Laporan1: TdxBarSubItem;
    JenisBarang1: TdxBarButton;
    Satuan1: TdxBarButton;
    Master1: TdxBarSubItem;
    Pengguna1: TdxBarButton;
    UbahPassword1: TdxBarButton;
    LogOut1: TdxBarButton;
    Keluar1: TdxBarButton;
    HakAkses1: TdxBarButton;
    Sistem1: TdxBarSubItem;
    dxStatusBar1: TdxStatusBar;
    dxStatusBar1Container3: TdxStatusBarContainerControl;
    conToko: TADOConnection;
    actlst1: TActionList;
    Pengguna: TAction;
    HakAkses: TAction;
    Jenis: TAction;
    Satuan: TAction;
    Barang: TAction;
    lapPembelian: TdxBarButton;
    lapPenjualan: TdxBarButton;
    lapBarang: TdxBarButton;
    lapSupplier: TdxBarButton;
    lapCustomer: TdxBarButton;
    dxBarSeparator1: TdxBarSeparator;
    Brg: TdxBarButton;
    Supplier: TAction;
    supp: TdxBarButton;
    Customer: TAction;
    Cust: TdxBarButton;
    PurchaseInvoice: TAction;
    dxBarButton1: TdxBarButton;
    procedure MenuDrawItem(Sender: TObject; ACanvas: TCanvas;
  ARect: TRect; Selected: Boolean);
    procedure MenuMeasureItem(Sender: TObject; ACanvas: TCanvas;
    var Width, Height: Integer);
    procedure PenggunaExecute(Sender: TObject);
    procedure HakAksesExecute(Sender: TObject);
    procedure JenisExecute(Sender: TObject);
    procedure SatuanExecute(Sender: TObject);
    procedure BarangExecute(Sender: TObject);
    procedure SupplierExecute(Sender: TObject);
    procedure CustomerExecute(Sender: TObject);
    procedure PurchaseInvoiceExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

uses Pengguna, HakAkses, Jenis, Satuan, Barang, Supplier, Customer, Beli;

{$R *.dfm}

function IsMDIChildOpen(const AFormName: TForm; const AMDIChildName : string): Boolean;
var
  i: Integer;
begin
  Result := False;
  for i := Pred(AFormName.MDIChildCount) DownTo 0 do
    if (AFormName.MDIChildren[i].Name = AMDIChildName) then
    begin
      Result := True;
      Break;
    end;
end;

procedure TMainForm.MenuDrawItem(Sender: TObject; ACanvas: TCanvas;
  ARect: TRect; Selected: Boolean);
var
  MyCaption: string;
begin
  MyCaption := (Sender as TMenuItem).Caption;
  ACanvas.Font.Size := 20;
  ARect.Left := 50;
  DrawText(ACanvas.Handle, PChar(MyCaption), -1, ARect, DT_LEFT or DT_VCENTER or DT_SINGLELINE or DT_NOCLIP);
end;

procedure TMainForm.MenuMeasureItem(Sender: TObject; ACanvas: TCanvas;
  var Width, Height: Integer);
var
  NewSize: TSize;
begin
  ACanvas.Font.Size := 20;
  NewSize := ACanvas.TextExtent((Sender as TMenuItem).Caption);
  Width := NewSize.cx;
  Height := NewSize.cy;
end;
//

procedure TMainForm.PenggunaExecute(Sender: TObject);
begin
  if not IsMDIChildOpen(MainForm, 'PenggunaForm') then
    PenggunaForm := TPenggunaForm.Create(Self);

    PenggunaForm.Show;
    PenggunaForm.BringToFront;//
end;

procedure TMainForm.HakAksesExecute(Sender: TObject);
begin
  if not IsMDIChildOpen(MainForm, 'HakAksesForm') then
    HakAksesForm := THakAksesForm.Create(Self);

    HakAksesForm.Show;
    HakAksesForm.BringToFront;//
end;

procedure TMainForm.JenisExecute(Sender: TObject);
begin
  if not IsMDIChildOpen(MainForm, 'JenisForm') then
    JenisForm := TJenisForm.Create(Self);

    JenisForm.Show;
    JenisForm.BringToFront;//
end;

procedure TMainForm.SatuanExecute(Sender: TObject);
begin
  if not IsMDIChildOpen(MainForm, 'SatuanForm') then
    SatuanForm := TSatuanForm.Create(Self);

    SatuanForm.Show;
    SatuanForm.BringToFront;//
end;

procedure TMainForm.BarangExecute(Sender: TObject);
begin
  if not IsMDIChildOpen(MainForm, 'BarangForm') then
    BarangForm := TBarangForm.Create(Self);

    BarangForm.Show;
    BarangForm.BringToFront;//
end;

procedure TMainForm.SupplierExecute(Sender: TObject);
begin
  if not IsMDIChildOpen(MainForm, 'SupplierForm') then
    SupplierForm := TSupplierForm.Create(Self);

    SupplierForm.Show;
    SupplierForm.BringToFront;//
end;

procedure TMainForm.CustomerExecute(Sender: TObject);
begin
  if not IsMDIChildOpen(MainForm, 'CustomerForm') then
    CustomerForm := TCustomerForm.Create(Self);

    CustomerForm.Show;
    CustomerForm.BringToFront;//
end;

procedure TMainForm.PurchaseInvoiceExecute(Sender: TObject);
begin
  if not IsMDIChildOpen(MainForm, 'BeliForm') then
    BeliForm := TBeliForm.Create(Self);

    BeliForm.Show;
    BeliForm.BringToFront;//
end;

procedure TMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  conToko.Close;
  conToko.ConnectionString := DBConnectMasterMysql;
  try
    conToko.Connected := True;
  except
      konfError('Tidak dapat melanjutkan operasi selanjutnya karena terjadi ' + #13 +
                'kerusakan, silahkan cek konektivitas Database anda atau hubungi' + #13 +
                'developer sistem ini untuk penanganan lebih lanjut.');
  end;
end;

end.
