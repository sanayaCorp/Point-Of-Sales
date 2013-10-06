program mainPjr;

uses
  Forms,
  Main in 'Main.pas' {MainForm},
  AES in 'AES.pas',
  ElAES in 'ElAES.pas',
  eshardwareid in 'eshardwareid.pas',
  mylib in 'mylib.pas',
  uInfoHardware in 'uInfoHardware.pas' {FMInfoAplikasi},
  FormConnection in 'FormConnection.pas' {DatabasePromptForm},
  FPengguna in 'FPengguna.pas' {FPenggunaForm},
  Pengguna in 'Pengguna.pas' {PenggunaForm},
  HakAkses in 'HakAkses.pas' {HakAksesForm},
  Template in 'Template.pas' {TemplateForm},
  Jenis in 'Jenis.pas' {JenisForm},
  Satuan in 'Satuan.pas' {SatuanForm},
  Barang in 'Barang.pas' {BarangForm},
  ftemplate in 'ftemplate.pas' {fTemplateform},
  fBarang in 'fBarang.pas' {fBarangForm},
  Supplier in 'Supplier.pas' {SupplierForm},
  fSupplier in 'fSupplier.pas' {fSupplierForm},
  Customer in 'Customer.pas' {CustomerForm},
  fCustomer in 'fCustomer.pas' {fCustomerForm},
  Beli in 'Beli.pas' {BeliForm},
  fBeli in 'fBeli.pas' {fBeliForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
