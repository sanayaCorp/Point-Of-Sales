unit Pengguna;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ComCtrls, Main, ADODB;

type
  TPenggunaForm = class(TForm)
    tbc1: TTabControl;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    tblPengguna: TADODataSet;
    tblPenggunaKODE_PENGGUNA: TWideStringField;
    tblPenggunaNAMA_PENGGUNA: TWideStringField;
    tblPenggunaPASSWORD: TWideStringField;
    tblPenggunaLevel: TWideStringField;
    dsPengguna: TDataSource;
    cxGrid1DBTableView1KODE_PENGGUNA: TcxGridDBColumn;
    cxGrid1DBTableView1NAMA_PENGGUNA: TcxGridDBColumn;
    cxGrid1DBTableView1Level: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    tblPenggunaPASSWORD2: TWideStringField;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    procedure tblPenggunaAfterInsert(DataSet: TDataSet);
    procedure tblPenggunaAfterEdit(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PenggunaForm: TPenggunaForm;

implementation

uses FPengguna;

{$R *.dfm}

procedure TPenggunaForm.tblPenggunaAfterInsert(DataSet: TDataSet);
begin
  FPenggunaForm := TFPenggunaForm.create(Self);
  FPenggunaForm.dbedit1.enabled := True;
  FPenggunaForm.caption := 'Tambah Data Pengguna';
  FPenggunaForm.show;
end;

procedure TPenggunaForm.tblPenggunaAfterEdit(DataSet: TDataSet);
begin
  FPenggunaForm := TFPenggunaForm.create(Self);
  FPenggunaForm.dbedit1.enabled := False;
  FPenggunaForm.caption := 'Edit Data Pengguna';
  FPenggunaForm.show;
end;

procedure TPenggunaForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TPenggunaForm.FormCreate(Sender: TObject);
begin
  if MainForm.conToko.Connected = True then
  begin
    tblPengguna.Close;
    tblPengguna.Open;
  end;
end;

end.
