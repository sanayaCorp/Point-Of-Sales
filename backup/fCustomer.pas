unit fCustomer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Customer, ftemplate, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, DBActns, ActnList, cxPC, Buttons,
  StdCtrls, Mask, DBCtrls;

type
  TfCustomerForm = class(TfTemplateform)
    lbl1: TLabel;
    DBEdit1: TDBEdit;
    lbl2: TLabel;
    DBEdit2: TDBEdit;
    lbl3: TLabel;
    lbl4: TLabel;
    DBEdit4: TDBEdit;
    dbmmoALAMAT_PELANGGAN: TDBMemo;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCustomerForm: TfCustomerForm;

implementation

{$R *.dfm}

procedure TfCustomerForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
  begin
    key :=#0;
    if DBEdit1.Focused then
      DBEdit2.SetFocus else
    if DBEdit2.Focused then
      dbmmoALAMAT_PELANGGAN.SetFocus else
    if dbmmoALAMAT_PELANGGAN.Focused then
      DBEdit4.SetFocus;
  end;
end;

end.
