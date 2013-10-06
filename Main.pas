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
  MySQLUniProvider, DASQLMonitor, UniSQLMonitor, Uni, DB;

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
    UniConnectDialog1: TUniConnectDialog;
    MonitorPos: TUniSQLMonitor;
    MySQLUniProvider1: TMySQLUniProvider;
    procedure itemExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

uses Item;
{$R *.dfm}

procedure TMainForm.itemExecute(Sender: TObject);
begin
  ItemForm := TItemForm.create(Self);
  ItemForm.show;
end;

end.
