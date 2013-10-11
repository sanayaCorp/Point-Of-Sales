program POS;


uses
  Forms,
  Uni,
  SysUtils,
  Variants, Classes, Controls,
  CheckLst, DB, commctrl,
  StdCtrls, IniFiles, ExtCtrls,
  Dialogs,
  Graphics, JPEG, Registry, StrUtils, Windows, Messages,
  templateBrowse in 'templateBrowse.pas' {TemplateForm},
  Item in 'Item.pas' {ItemForm},
  templeteTransaksi in 'templeteTransaksi.pas' {TransaksiForm},
  fItem in 'fItem.pas' {TransaksiItem},
  Main in 'Main.pas' {MainForm},
  NoDaftar2 in 'NoDaftar2.pas' {SearchForm},
  FormConnection in 'FormConnection.pas' {DatabasePromptForm};


{$R *.res}


//function Connect:Boolean;
//begin
//  Connection := TUniConnection.Create(nil);
//  Connection.ProviderName := 'Mysql';
//  Connection.SpecificOptions.Values['Direct'] := 'True';
//  Connection.Server       := Server_;
//  Connection.Username     := UserName_;
//  Connection.Password     := Password_;
//  Connection.Database     := DBName;
//  Connection.Port         := Port_;
//  try
//    Connection.Connect;
//    Result := True;
//  except
//    Application.MessageBox('Server MySql Belum dijalankan','Peringatan',MB_OK);
//    Result := False;
//  end;
//  Connection.Free;
//end;

begin
  Application.Initialize;
//  if connect then
//  begin
    Application.CreateForm(TMainForm, MainForm);
    Application.CreateForm(TDatabasePromptForm, DatabasePromptForm);
    Application.Run;
//  end;
end.
