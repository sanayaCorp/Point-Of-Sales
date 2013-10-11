unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxSkinsCore, dxSkinsdxBarPainter, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, ActnList, XPStyleActnCtrls, ActnMan, dxBar,
  dxSkinsForm, dxStatusBar, dxRibbonStatusBar, cxClasses, dxRibbon,
  cxPropertiesStore, cxStyles, DBAccess, UniDacVcl, UniProvider,
  MySQLUniProvider, DASQLMonitor, UniSQLMonitor, Uni, DB, ImgList,
  PlatformDefaultStyleActnCtrls, Registry, MMSystem, Math;

const
  screenx1  = 800;
  screenx2  = 1024;
  screenx3  = 1366;
  screeny1  = 600;
  screeny2  = 768;

type
  TMainForm = class(TForm)
    dxBarManager1: TdxBarManager;
    dxBarApplicationMenu1: TdxBarApplicationMenu;
    dxRibbon1Tab1: TdxRibbonTab;
    dxRibbon1: TdxRibbon;
    dxRibbonStatusBar1: TdxRibbonStatusBar;
    cxLookAndFeelController1: TcxLookAndFeelController;
    dxSkinController1: TdxSkinController;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    actmgr1: TActionManager;
    item: TAction;
    cxStyleRepository1: TcxStyleRepository;
    cxPropertiesStore1: TcxPropertiesStore;
    dxBarScreenTipRepository1: TdxBarScreenTipRepository;
    dxBarManager1Bar2: TdxBar;
    btnClose: TdxBarButton;
    connPOS: TUniConnection;
    MySQLUniProvider1: TMySQLUniProvider;
    cxImageList1: TcxImageList;
    UniTransaction1: TUniTransaction;
    procedure itemExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure autosizeAll;
    procedure FormActivate(Sender: TObject);
  private
  procedure DBConnectMasterMysql;
    { Private declarations }
  public
     Server_, UserName_, Password_, DBName:string;
        Port_:Integer;
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

uses Item,FormConnection;
{$R *.dfm}

function centreleft(fw:integer):integer;
  {calculates the form.left}
var
  smcx:integer;
begin
  smcx:=GetSystemMetrics(SM_CXSCREEN);
  centreleft:=(smcx-fw) div 2;
end;

function centretop(fh:integer):integer;
  {calculates the form.top}
var
  smcy:integer;
begin
  smcy:=GetSystemMetrics(SM_CYSCREEN);
  centretop:=(smcy-fh) div 2;
end;

procedure TMainForm.autosizeall  ;
var
  scrx,scry, k,i, y, screenxvalue, screenyvalue:integer ;
  ratio:double;
begin
  scrx:= GetSystemMetrics(SM_CXSCREEN); {finds screen resolution x value}
  scry:= (GetSystemMetrics(SM_CYSCREEN)); {finds screen resolution y value}

  if (scrx >= 1024) and (scrx <= 1280) then
  begin
    ratio:=min(scrx/screenx2,scry/screeny2);
  end else
  if (scrx >= 1280) and (scrx <= 1366) then
  begin
    ratio:=min(scrx/screenx3,scry/screeny2);
  end else
  if (scrx < 1024) then
  begin
    ratio:=min(scrx/screenx1,scry/screeny1);
  end;

  {takes the smaller ratio and makes sure you dont make the window
  too big for the screen}

  scaleby(trunc(ratio*100),100);
  {scales all controls and attempts to place them in the correct position}

  {to centre the form on the screen}
  self.Left :=centreleft(Self.width);
  self.Top  :=centretop(self.Height)  + 15;

end;


Procedure tulisReg(keyReg,fieldTeks,nilaiTeks : String);
Var
Reg : TRegistry;
begin

  //Buat objek registry
  Reg := TRegistry.Create;
  with Reg do
  begin

    //set tujuan registry sesuai yang kita inginkan
    RootKey:=HKEY_LOCAL_MACHINE;

    //Mengecek , apakah kita bisa membuka regkey kita , bila regkey tidak di temukan , kita akan membuatnya
    if OpenKey(keyReg,true) then

      //Gak perlu ngecek field lagi , karena kita akan membuatnya dengan memasukan nilaiTeks
      Writestring(fieldTeks,nilaiTeks)
    else

    //Jika error terjadi ketika kita menulis pada registry , lagi
    //ShowMessage('Error membuka/membuat :'+keyReg);
    CloseKey;
  end;
end;

function bacaReg (regKey,fieldTeks : String) : string;
Var
Reg : TRegistry;
begin

  //Membuat object Registry
  Reg := TRegistry.Create;
  with Reg do
  begin

  //set tujuan registry sesuai yang kita inginkan, bisa diganti lihat aja di regedit
    RootKey:=HKEY_LOCAL_MACHINE;

    //Mengecek , apakah kita bisa membuka regkey kita , bila regkey tidak di temukan , kita akan membuatnya
    if OpenKey(regKey,true) then
    begin

      //Jika fieldTeks tersedia
      if ValueExists(fieldTeks) then

      //Membaca nila dari fieldTeks
        result := ReadString(fieldTeks)
      else
//          ShowMessage(fieldTeks+' Tidak tersedia pada'+regKey);
    end
  else

    //Jika error terjadi ketika kita menulis pada registry
//      ShowMessage('Error membuka/membuat : '+regKey);
    CloseKey;
  end;
end;

procedure TMainForm.DBConnectMasterMysql;
var
  port : Integer;
  DatabasePromptForm :  TDatabasePromptForm;
begin
   Server_:= bacaReg('SOFTWARE\POS','Server');
   UserName_:= bacaReg('SOFTWARE\POS','UserName');
   Password_:= bacaReg('SOFTWARE\POS','Password');
   DBName:= bacaReg('SOFTWARE\POS','DB');
   Port_:= StrToInt(bacaReg('SOFTWARE\POS','Port'));
  if (Server_= '') Or (UserName_ = '') or (Password_ = '') OR(DBName = '') then
  begin
     DatabasePromptForm := TDatabasePromptForm.Create(nil);
     DatabasePromptForm.FormStyle:= fsNormal;
     DatabasePromptForm.Hide;
     DatabasePromptForm.Caption := 'KONEKSI DATABASE SYSTEM';
     if DatabasePromptForm.ShowModal = mrOk then
     begin
       Server_    := DatabasePromptForm.ledservername.Text;
       UserName_  := DatabasePromptForm.ledUserId.Text;
       Password_  := DatabasePromptForm.ledPass.text;
       DBName     := DatabasePromptForm.leddbname.Text;
       port       := StrToInt(DatabasePromptForm.ledPort.Text);
     end;
     tulisReg('SOFTWARE\POS','Server',Server_ );
     tulisReg('SOFTWARE\POS','UserName',UserName_ );
     tulisReg('SOFTWARE\POS','Password',Password_ );
     tulisReg('SOFTWARE\POS','DB',DBName );
     tulisReg('SOFTWARE\POS','Port',IntToStr(port) );
  end;
//    Result        := constr;
end;

procedure TMainForm.FormActivate(Sender: TObject);
begin
  if WindowState <> wsMaximized then autosizeAll;
end;

procedure TMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  DBConnectMasterMysql;
  KeyPreview := True;
  connPOS.ProviderName := 'Mysql';
  connPOS.SpecificOptions.Values['Direct'] := 'True';
  connPOS.Server       := Server_;
  connPOS.Username     := UserName_;
  connPOS.Password     := Password_;
  connPOS.Database     := DBName;

  try
    connPOS.Connect;

  except
    on E: Exception do
        ShowMessage(E.Message);
  end;
end;

procedure TMainForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then
  begin
    if ActiveMDIChild<>nil  then
    ActiveMDIChild.Close else self.Close;
  end;
end;

procedure TMainForm.FormShow(Sender: TObject);
begin
//  UniConnectDialog1.Execute;
end;

procedure TMainForm.itemExecute(Sender: TObject);
begin
  ItemForm := TItemForm.create(Self);
  ItemForm.show;
end;

end.
