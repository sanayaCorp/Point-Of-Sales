unit templeteTransaksi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxContainer, cxEdit, dxLayoutcxEditAdapters,
  dxLayoutControl, cxGroupBox, dxLayoutLookAndFeels, Menus, StdCtrls,
  cxButtons, cxPC, Main, ActnList;

type
  TTransaksiForm = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxlytcxlkndfl1: TdxLayoutCxLookAndFeel;
    cxGroupBox1: TcxGroupBox;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxGroupBox2: TcxGroupBox;
    btnCancel: TcxButton;
    btnSimpan: TcxButton;
    btnClose: TcxButton;
    actlst1: TActionList;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TransaksiForm: TTransaksiForm;

implementation

{$R *.dfm}

procedure TTransaksiForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:= caFree;
end;

procedure TTransaksiForm.btnCloseClick(Sender: TObject);
begin
  if ActiveMDIChild <> nil then
    ActiveMDIChild.Close else
    self.close;
end;

end.
