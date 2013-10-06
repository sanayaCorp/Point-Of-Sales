unit fBarang;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ftemplate, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, DBActns, ActnList, cxPC, Buttons, Barang,
  DBCtrls, StdCtrls, Mask;

type
  TfBarangForm = class(TfTemplateform)
    lbl1: TLabel;
    DBEdit1: TDBEdit;
    lbl2: TLabel;
    DBEdit2: TDBEdit;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    DBEdit5: TDBEdit;
    lbl6: TLabel;
    DBEdit6: TDBEdit;
    lbl7: TLabel;
    DBEdit7: TDBEdit;
    dblkcbbJENIS: TDBLookupComboBox;
    dblkcbbSATUAN: TDBLookupComboBox;
    procedure DBEdit2Exit(Sender: TObject);
    procedure dblkcbbJENISCloseUp(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fBarangForm: TfBarangForm;

implementation

{$R *.dfm}

procedure TfBarangForm.DBEdit2Exit(Sender: TObject);
begin
  inherited;
  BarangForm.tblJenis.Close;
  BarangForm.tblJenis.Open;  
end;

procedure TfBarangForm.dblkcbbJENISCloseUp(Sender: TObject);
begin
  inherited;
  BarangForm.tblSatuan.Close;
  BarangForm.tblSatuan.Open;
end;

procedure TfBarangForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then
  begin
    key :=#0;
    if DBEdit1.Focused then
       DBEdit2.SetFocus else
    if DBEdit2.Focused then
      dblkcbbJENIS.SetFocus else
    if dblkcbbJENIS.Focused then
      dblkcbbSATUAN.SetFocus else
    if dblkcbbSATUAN.Focused then
      DBEdit5.SetFocus else
    if DBEdit5.Focused then
      DBEdit6.SetFocus else
    if DBEdit6.Focused then
      DBEdit7.SetFocus;
  end;
end;

end.
