program POS;

uses
  Forms,
  templateBrowse in 'templateBrowse.pas' {TemplateForm},
  Item in 'Item.pas' {ItemForm},
  templeteTransaksi in 'templeteTransaksi.pas' {TransaksiForm},
  fItem in 'fItem.pas' {TransaksiItem},
  Main in 'Main.pas' {MainForm},
  NoDaftar2 in 'NoDaftar2.pas' {SearchForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TSearchForm, SearchForm);
  Application.Run;
end.
