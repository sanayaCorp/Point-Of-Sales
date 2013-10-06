unit Beli;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Template, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridBandedTableView,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBBandedTableView, cxGrid, cxPC, Main, ADODB,
  cxDBLookupComboBox, mylib;

type
  TBeliForm = class(TTemplateForm)
    tblBeliHdr: TADODataSet;
    dsBeliHdr: TDataSource;
    cxGrid1DBBandedTableView1FAKTUR_PEMBELIAN: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1TGL_PEMBELIAN: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1KODE_SUPPLIER: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1DISC: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1TOTAL: TcxGridDBBandedColumn;
    dsSupplier: TDataSource;
    tblSupplier: TADODataSet;
    tblSupplierKODE_SUPPLIER: TWideStringField;
    tblSupplierNAMA_SUPPLIER: TWideStringField;
    tblBeliDtl: TADODataSet;
    tblBeliDtlFAKTUR_PEMBELIAN: TWideStringField;
    tblBeliDtlNO: TBCDField;
    tblBeliDtlKODE_BARANG: TWideStringField;
    tblBeliDtlHARGA_BELI: TBCDField;
    tblBeliDtlJUMLAH: TBCDField;
    tblBeliDtlSUBTOTAL: TBCDField;
    dsBeliDtl: TDataSource;
    tblBarang: TADODataSet;
    dsBarang: TDataSource;
    tblBeliHdrFAKTUR_PEMBELIAN: TWideStringField;
    tblBeliHdrTGL_PEMBELIAN: TDateField;
    tblBeliHdrKODE_SUPPLIER: TWideStringField;
    tblBeliHdrDISC: TFloatField;
    tblBeliHdrNDisc_: TBCDField;
    tblBeliHdrPPN: TFloatField;
    tblBeliHdrNPPN_: TBCDField;
    tblBeliHdrTOTAL: TBCDField;
    tblBeliHdrsubTotal: TBCDField;
    tblBeliHdrcBayar: TSmallintField;
    spNo_Urut: TADOStoredProc;
    spNo_Uruthasil: TIntegerField;
    tblBarangKODE_BARANG: TWideStringField;
    tblBarangNAMA_BARANG: TWideStringField;
    tblBarangHARGA_BELI: TBCDField;
    tblBarangSTOCK: TBCDField;
    tblBarangDescSatuan: TWideStringField;
    sp_Total: TADOStoredProc;
    sp_TotalTOTAL_: TBCDField;
    ds_Total: TDataSource;
    tblBeliDtlSYS: TIntegerField;
    tblBeliHdrSYS: TAutoIncField;
    procedure FormCreate(Sender: TObject);
    procedure tblBeliHdrNewRecord(DataSet: TDataSet);
    procedure tblBeliDtlNewRecord(DataSet: TDataSet);
    procedure tblBeliDtlKODE_BARANGValidate(Sender: TField);
    procedure tblBeliDtlJUMLAHValidate(Sender: TField);
    procedure tblBeliHdrDISCValidate(Sender: TField);
    procedure tblBeliHdrPPNValidate(Sender: TField);
    procedure tblBeliHdrAfterInsert(DataSet: TDataSet);
    procedure tblBeliHdrAfterEdit(DataSet: TDataSet);
    procedure tblBeliDtlAfterPost(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BeliForm: TBeliForm;

implementation

uses fBeli;

{$R *.dfm}

procedure TBeliForm.FormCreate(Sender: TObject);
begin
  inherited;
  if MainForm.conToko.Connected = True then
  begin
    tblBeliHdr.Close;
    tblBeliHdr.Open;
    tblBeliDtl.Close;
    tblBeliDtl.Open;
    tblSupplier.Close;
    tblSupplier.Open;
    tblBarang.Close;
    tblBarang.Open;    
  end;
end;

procedure TBeliForm.tblBeliHdrNewRecord(DataSet: TDataSet);
begin
  inherited;
  tblBeliHdrTGL_PEMBELIAN.Value := now;
  tblBeliHdrDISC.Value          := 0;
  tblBeliHdrNDisc_.Value        := 0;
  tblBeliHdrPPN.Value           := 0;
  tblBeliHdrNPPN_.Value         := 0;
  tblBeliHdrTOTAL.Value         := 0;
  tblBeliHdrcBayar.Value        := 0;
end;

procedure TBeliForm.tblBeliDtlNewRecord(DataSet: TDataSet);
begin
  inherited;
  with spNo_Urut do
  begin
    Close;
    Parameters.ParamByName('NOFaktur').Value := tblBeliHdrFAKTUR_PEMBELIAN.Value;
    Parameters.ParamByName('Table_').Value   := 'tblpembeliandtl';
    Open;
  end;

  try
    tblBeliDtlNO.Value := spNo_Uruthasil.Value;
    tblBarang.Close;
    tblBarang.Open;
  except
    konfError('Tidak dapat melanjutkan operasi selanjutnya karena terjadi ' + #13 +
              'kerusakan, silahkan cek konektivitas Database anda atau hubungi' + #13 +
              'developer sistem ini untuk penanganan lebih lanjut.');
    fBeliForm.DBEdit2.SetFocus;
    Abort;
  end;

end;

procedure TBeliForm.tblBeliDtlKODE_BARANGValidate(Sender: TField);
begin
  inherited;
  tblBeliDtlHARGA_BELI.AsCurrency := tblBarangHARGA_BELI.AsCurrency;
end;

procedure TBeliForm.tblBeliDtlJUMLAHValidate(Sender: TField);
begin
  inherited;
  if tblBeliDtlJUMLAH.Value > 0 then
  begin
    tblBeliDtlSUBTOTAL.Value := tblBeliDtlHARGA_BELI.Value * tblBeliDtlJUMLAH.Value;
  end;  
end;

procedure TBeliForm.tblBeliHdrDISCValidate(Sender: TField);
begin
  inherited;
  if tblBeliHdrDISC.Value > 0 then
  begin
    tblBeliHdrNDisc_.Value := (sp_TotalTOTAL_.Value * tblBeliHdrDISC.Value) / 100;
    tblBeliHdrTOTAL.Value  := sp_TotalTOTAL_.Value - tblBeliHdrNDisc_.Value;
  end;  
end;

procedure TBeliForm.tblBeliHdrPPNValidate(Sender: TField);
begin
  inherited;
  if tblBeliHdrPPN.Value > 0 then
  begin
    tblBeliHdrNPPN_.Value :=  ((sp_TotalTOTAL_.Value - tblBeliHdrNDisc_.Value) * tblBeliHdrPPN.AsCurrency) /100 ;
    tblBeliHdrTOTAL.Value  := sp_TotalTOTAL_.Value - tblBeliHdrNDisc_.Value + tblBeliHdrNPPN_.Value;    
  end;
end;

procedure TBeliForm.tblBeliHdrAfterInsert(DataSet: TDataSet);
begin
  inherited;
  fBeliForm := TfBeliForm.Create(nil);
  Fbeliform.show;
end;

procedure TBeliForm.tblBeliHdrAfterEdit(DataSet: TDataSet);
begin
  inherited;
  fBeliForm := TfBeliForm.Create(nil);
  Fbeliform.show;
end;

procedure TBeliForm.tblBeliDtlAfterPost(DataSet: TDataSet);
begin
  inherited;
  with BeliForm.sp_Total do
  begin
    close;
    Parameters.ParamByName('FAKTUR').Value := tblBeliDtlFAKTUR_PEMBELIAN.Value;
    Parameters.ParamByName('TABLE_').Value := 'BELI';
    open;
  end;
//  tblBeliHdr.Edit;
end;

procedure TBeliForm.FormActivate(Sender: TObject);
begin
  inherited;
  tblBeliHdr.Close;
  tblBeliHdr.Open;
end;

end.
