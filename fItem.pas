unit fItem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, templeteTransaksi, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxContainer, cxEdit, Menus,
  dxLayoutcxEditAdapters, dxLayoutLookAndFeels, dxLayoutControl, StdCtrls,
  cxButtons, cxPC, cxGroupBox, ExtCtrls, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxCheckBox, cxRadioGroup, Main, DB, MemDS,
  DBAccess, Uni, ActnList;

type
  TTransaksiItem = class(TTransaksiForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl8: TLabel;
    edtKode: TEdit;
    lbl7: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    lbl11: TLabel;
    lbl12: TLabel;
    lbl13: TLabel;
    lbl14: TLabel;
    edtBarcode: TEdit;
    edtItem: TEdit;
    edtJenis: TEdit;
    edtSatuan: TEdit;
    edtKeterangan: TEdit;
    cxRadioGroup1: TcxRadioGroup;
    cxTabSheet2: TcxTabSheet;
    btnJenis: TcxButton;
    btnSatuan: TcxButton;
    lbl15: TLabel;
    lbl16: TLabel;
    lbl17: TLabel;
    lbl18: TLabel;
    edtSupplier1: TEdit;
    edtSupplier2: TEdit;
    edtSupplier3: TEdit;
    lbl19: TLabel;
    lbl20: TLabel;
    lbl21: TLabel;
    lbl22: TLabel;
    lbl23: TLabel;
    lbl24: TLabel;
    edtStockMin: TEdit;
    cbAktif: TcxCheckBox;
    lbl25: TLabel;
    lbl26: TLabel;
    lbl27: TLabel;
    lbl28: TLabel;
    lbl29: TLabel;
    edtStockAwal: TEdit;
    edtHppAwal: TEdit;
    lbl30: TLabel;
    lbl31: TLabel;
    edtTotalAwal: TEdit;
    lbl32: TLabel;
    lbl33: TLabel;
    edtStockAkhir: TEdit;
    lbl34: TLabel;
    lbl35: TLabel;
    edtHppAkhir: TEdit;
    lbl36: TLabel;
    lbl37: TLabel;
    edtTotalAkhir: TEdit;
    lblSPPL1: TLabel;
    lblSPPL2: TLabel;
    lblSPPL3: TLabel;
    btnSupplier1: TcxButton;
    btnSupplier2: TcxButton;
    btnSupplier3: TcxButton;
    lbl41: TLabel;
    lbl42: TLabel;
    edttgl: TcxDateEdit;
    lbl43: TLabel;
    lbl44: TLabel;
    lbl45: TLabel;
    lbl46: TLabel;
    edtJml1: TEdit;
    lbl47: TLabel;
    lbl48: TLabel;
    edtJml2: TEdit;
    lbl49: TLabel;
    lbl50: TLabel;
    edtJml3: TEdit;
    lbl51: TLabel;
    lbl52: TLabel;
    lbl53: TLabel;
    edtJmlMax: TEdit;
    edtJml2Akhir: TEdit;
    edtJumlah1Akhir: TEdit;
    lbl54: TLabel;
    lbl55: TLabel;
    lbl56: TLabel;
    edtProsentaseMax: TEdit;
    edtProsentase2: TEdit;
    edtProsentase1: TEdit;
    lbl57: TLabel;
    lbl58: TLabel;
    lbl59: TLabel;
    edtNilaiProsentase1: TEdit;
    edtNilaiProsentase2: TEdit;
    edtNilaiProsentaseMax: TEdit;
    lbl60: TLabel;
    lbl61: TLabel;
    lbl62: TLabel;
    edtProsentasePotongan: TEdit;
    edtNilaiProsentasePotongan: TEdit;
    lbl63: TLabel;
    lbl64: TLabel;
    edtTglAwal: TcxDateEdit;
    lbl65: TLabel;
    edtTglAkhir: TcxDateEdit;
    cxGroupBox3: TcxGroupBox;
    cbProsentaseHpp: TcxCheckBox;
    cbNominalTetap: TcxCheckBox;
    lbl66: TLabel;
    lbl67: TLabel;
    lbl68: TLabel;
    lbl69: TLabel;
    lbl70: TLabel;
    lbl71: TLabel;
    edtProsentaseLevel1: TEdit;
    edtProsentaseLevel2: TEdit;
    edtProsentaseLevel3: TEdit;
    lbl72: TLabel;
    lbl73: TLabel;
    lbl74: TLabel;
    edtNilaiProsentaseLevel3: TEdit;
    edtNilaiProsentaseLevel2: TEdit;
    edtnilaiProsentaseLevel1: TEdit;
    shp1: TShape;
    lbl75: TLabel;
    lbl76: TLabel;
    lbl77: TLabel;
    cxDetailJasa: TcxTabSheet;
    lbl38: TLabel;
    edtHargaJualJasa: TEdit;
    QCari: TUniQuery;
    QCariNoItem: TStringField;
    QCariKodeBarCode: TStringField;
    QCariNamaItem: TStringField;
    QCariJenis: TStringField;
    QCariSatuan: TStringField;
    QCariHargaPokok: TFloatField;
    QCariHargaJual: TFloatField;
    QCariTotalPokok: TFloatField;
    QCariQuantity: TFloatField;
    QCariStokMin: TFloatField;
    QCariSupplier: TStringField;
    QCariSupplier2: TStringField;
    QCariSupplier3: TStringField;
    QCariGambar: TStringField;
    QCariNote: TMemoField;
    QCariDiskonP: TFloatField;
    QCariDiskonN: TFloatField;
    QCariPerDis1: TDateTimeField;
    QCariPerDis2: TDateTimeField;
    QCariHPUpdate: TFloatField;
    QCariPrHargaL1: TFloatField;
    QCariPrHargaL2: TFloatField;
    QCariPrHargaL3: TFloatField;
    QCariHargaPokok2: TFloatField;
    QCariSupplierAkhir: TStringField;
    QCariTanggalAkhir: TDateTimeField;
    QCariInv_IdAwal: TStringField;
    QCariInv_JmlAwal: TFloatField;
    QCariInv_HrgAwal: TFloatField;
    QCariInv_TglAwal: TDateTimeField;
    QCariQtyDari2: TFloatField;
    QCariQtyDari3: TFloatField;
    QCariQtySampai1: TFloatField;
    QCariQtySampai2: TFloatField;
    QCariProc1: TFloatField;
    QCariProc2: TFloatField;
    QCariProc3: TFloatField;
    QCariHargaL1: TFloatField;
    QCariHargaL2: TFloatField;
    QCariHargaL3: TFloatField;
    QCariHargaJual2: TFloatField;
    QCariHargaJual3: TFloatField;
    QCariKeterangan: TStringField;
    PilihJenis: TAction;
    PilihSatuan: TAction;
    PilihSupplier: TAction;
    Simpan: TAction;
    QLook: TUniQuery;
    lblJenis: TLabel;
    lblSatuan: TLabel;
    rbBarang: TcxCheckBox;
    rbJasa: TcxCheckBox;
    QCariStatusItem: TSmallintField;
    QCariStatusProduk: TSmallintField;
    QCariSistemHJ: TSmallintField;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edtJenisKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PilihJenisExecute(Sender: TObject);
    procedure edtSatuanKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PilihSatuanExecute(Sender: TObject);
    procedure PilihSupplierExecute(Sender: TObject);
    procedure edtSupplier1Enter(Sender: TObject);
    procedure edtSupplier1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtSupplier2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtSupplier2Enter(Sender: TObject);
    procedure edtSupplier3Enter(Sender: TObject);
    procedure edtSupplier3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SimpanExecute(Sender: TObject);
    procedure edtKodeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormDeactivate(Sender: TObject);
    procedure rbBarangKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure rbJasaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure rbBarangExit(Sender: TObject);
    procedure rbJasaExit(Sender: TObject);
    procedure edtStockMinKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtStockAwalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtHppAwalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbAktifKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtJumlah1AkhirKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtProsentase1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtJml2AkhirKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtProsentase2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtJml2AkhirExit(Sender: TObject);
    procedure edtProsentase2Exit(Sender: TObject);
    procedure edtJumlah1AkhirExit(Sender: TObject);
    procedure edtProsentase1Exit(Sender: TObject);
    procedure edtProsentaseMaxExit(Sender: TObject);
    procedure edtProsentaseMaxKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtProsentasePotonganKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtProsentasePotonganExit(Sender: TObject);
    procedure edtProsentaseLevel1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtProsentaseLevel2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtProsentaseLevel3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtProsentaseLevel3Exit(Sender: TObject);
    procedure edtProsentaseLevel2Exit(Sender: TObject);
    procedure edtProsentaseLevel1Exit(Sender: TObject);
    procedure cbProsentaseHppKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbNominalTetapKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtHargaJualJasaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtHargaJualJasaExit(Sender: TObject);
  private
    procedure awalEntry;
    procedure isiEntry;
    Procedure CekTransaksi(Stat_:SmallInt);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TransaksiItem: TTransaksiItem;
  Queri : TUniQuery;
  statSPPL : SmallInt;
implementation
uses Item, NoDaftar2;
{$R *.dfm}

procedure TTransaksiItem.cbAktifKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = VK_RETURN then
  begin
    cxPageControl1.ActivePage := cxTabSheet2;
    edtJumlah1Akhir.SetFocus;
  end;
end;

procedure TTransaksiItem.cbNominalTetapKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = VK_Return then
  begin
    if cbNominalTetap.Checked = True then
    begin
      cbNominalTetap.Checked := true;
      cbProsentaseHpp.Enabled := false;
      btnSimpan.SetFocus;
    end;
    if cbNominalTetap.Checked = False then
    begin
      cbNominalTetap.Checked := false;
      cbProsentaseHpp.Enabled := True;
      cbProsentaseHpp.SetFocus;
    end;
  end;
end;

procedure TTransaksiItem.cbProsentaseHppKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = VK_Return then
  begin
    if cbProsentaseHpp.Checked = True then
    begin
      cbProsentaseHpp.Checked := true;
      cbNominalTetap.Enabled := false;
      btnSimpan.SetFocus;
    end;
    if cbProsentaseHpp.Checked = False then
    begin
      cbProsentaseHpp.Checked := false;
      cbNominalTetap.Enabled := True;
      cbNominalTetap.SetFocus;
    end;
  end;
end;

Procedure TTransaksiItem.CekTransaksi(Stat_:SmallInt);
begin
  // stat_ = 1 menunjukan new atau insert data
  // stat_ = 2 menunjukkan change atau update data
  if Stat_ = 1 Then
  begin

  end;
  if stat_ = 2 then
  begin
     with QCari do
     begin
       Close;
       params.parambyName('NOItem_').value := ItemForm.QItemNoItem.Value;
       Open;
     end;
     if not QCari.IsEmpty then
     begin
       isiEntry;
       edtKode.ReadOnly := True;
     end;
  end;
end;

procedure TTransaksiItem.edtHargaJualJasaExit(Sender: TObject);
begin
  inherited;
  if (edtHargaJualJasa.Text <> '') or (StrToFloat(edtHargaJualJasa.Text) <> 0) then
  begin
    if StrToFloat(edtHargaJualJasa.Text) <= 0 then
    begin
      ShowMessage('Jumlah Harap diisi > 0');
      edtHargaJualJasa.SetFocus;
      abort;
    end;
    btnSimpan.SetFocus;
  end;
end;

procedure TTransaksiItem.edtHargaJualJasaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_return then
  begin
    if StrToInt(edtHargaJualJasa.Text) <= 0 then
    begin
      ShowMessage('Harga Pokok > 0');
      edtHargaJualJasa.SetFocus;
      Abort;
    end;
    btnSimpan.SetFocus;
  end;
end;

procedure TTransaksiItem.edtHppAwalKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_return then
  begin
    if StrToInt(edtHppAwal.Text) <= 0 then
    begin
      ShowMessage('Harga Pokok > 0');
      edtHppAwal.SetFocus;
      Abort;
    end;
    edtHppAkhir.Text  := edtHppAwal.Text;
    edtTotalAwal.Text :=  FloatToStr(strtofloat(edtHppAwal.Text) * strtofloat(edtStockAwal.Text));
    edtTotalAkhir.Text:= edtTotalAwal.Text;
  end;
end;

procedure TTransaksiItem.edtJenisKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_F4 then
  begin
    PilihJenis.Execute;
    edtJenis.SetFocus
  end;
end;

procedure TTransaksiItem.edtJml2AkhirExit(Sender: TObject);
begin
  inherited;
  if (edtJml2.Text <> '') or (StrToFloat(edtJml2.Text) <> 0) then
  begin
    if StrToFloat(edtJml2Akhir.Text) <= 0 then
    begin
      ShowMessage('Jumlah Harap diisi > 0');
      edtJml2Akhir.SetFocus;
      abort;
    end;
    edtJml3.Text := edtJml2Akhir.Text;
  end;
end;

procedure TTransaksiItem.edtJml2AkhirKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = VK_RETURN then
  begin
    if StrToFloat(edtJml2Akhir.Text) <= 0 then
    begin
      ShowMessage('Jumlah Harap diisi > 0');
      edtJml2Akhir.SetFocus;
      abort;
    end;
    edtJml3.Text := edtJml2Akhir.Text;
  end;
end;

procedure TTransaksiItem.edtJumlah1AkhirExit(Sender: TObject);
begin
  inherited;
  if (edtJumlah1Akhir.Text <> '') or (StrToFloat(edtJumlah1Akhir.Text) <> 0) then
  begin
    if StrToFloat(edtJumlah1Akhir.Text) <= 0 then
    begin
      ShowMessage('Jumlah Harap diisi > 0');
      edtJumlah1Akhir.SetFocus;
      abort;
    end;
    edtJml2.Text := edtJumlah1Akhir.Text;
  end;
end;

procedure TTransaksiItem.edtJumlah1AkhirKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = VK_RETURN then
  begin
    if StrToFloat(edtJumlah1Akhir.Text) <= 0 then
    begin
      ShowMessage('Jumlah Harap diisi > 0');
      edtJumlah1Akhir.SetFocus;
      abort;
    end;
    edtJml2.Text := edtJumlah1Akhir.Text;
  end;
end;

procedure TTransaksiItem.edtKodeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_return then
  begin
    QCari.Close;
    Qcari.Open;
    if not QCari.Locate('NoItem',edtKode.Text,[loCaseInsensitive,loPartialKey]) then
    begin
      if MessageDlg('Kode Item tidak ditemukan'#13#10'Apakah anda akan menambah data baru ?',(mtInformation),[mbOK,mbCancel],0) = mrOk then
        edtBarcode.SetFocus else
        edtKode.SetFocus;
      Abort;
    end;
  end;
  if key = vk_escape then
  begin
    btnCloseClick(sender);
  end;
end;

procedure TTransaksiItem.edtProsentase1Exit(Sender: TObject);
begin
  inherited;
  if (edtProsentase1.Text <> '') or (StrToFloat(edtProsentase1.Text) <> 0) then
  begin
    if StrToFloat(edtProsentase1.Text) <= 0 then
    begin
      ShowMessage('Prosentase Harap diisi > 0');
      edtProsentase1.SetFocus;
      abort;
    end;
    edtNilaiProsentase1.Text := FloatToStr((StrToFloat(edtHppAkhir.Text) * StrToFloat(edtProsentase1.Text)) / 100);
  end;
end;

procedure TTransaksiItem.edtProsentase1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = VK_RETURN then
  begin
    if StrToFloat(edtProsentase1.Text) <= 0 then
    begin
      ShowMessage('Prosentase Harap diisi > 0');
      edtProsentase1.SetFocus;
      abort;
    end;
//    edtJml2.Text := edtJumlah1Akhir.Text;
    edtNilaiProsentase1.Text := FloatToStr((StrToFloat(edtHppAkhir.Text) * StrToFloat(edtProsentase1.Text)) / 100);
  end;
end;

procedure TTransaksiItem.edtProsentase2Exit(Sender: TObject);
begin
  inherited;
  if (edtProsentase2.Text <> '') or (StrToFloat(edtProsentase2.Text) <> 0) then
  begin
    if StrToFloat(edtProsentase2.Text) <= 0 then
    begin
      ShowMessage('Prosentase Harap diisi > 0');
      edtProsentase2.SetFocus;
      abort;
    end;
    edtNilaiProsentase2.Text := FloatToStr((StrToFloat(edtHppAkhir.Text) * StrToFloat(edtProsentase2.Text)) / 100);
  end;
end;

procedure TTransaksiItem.edtProsentase2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = VK_RETURN then
  begin
    if StrToFloat(edtProsentase2.Text) <= 0 then
    begin
      ShowMessage('Prosentase Harap diisi > 0');
      edtProsentase2.SetFocus;
      abort;
    end;
//    edtJml2.Text := edtJumlah1Akhir.Text;
    edtNilaiProsentase2.Text := FloatToStr((StrToFloat(edtHppAkhir.Text) * StrToFloat(edtProsentase2.Text)) / 100);
  end;
end;

procedure TTransaksiItem.edtProsentaseLevel1Exit(Sender: TObject);
begin
  inherited;
  if (edtProsentaseLevel1.Text <> '') or (StrToFloat(edtProsentaseLevel1.Text) <> 0) then
  begin
    if StrToFloat(edtProsentaseLevel1.Text) <= 0 then
    begin
      ShowMessage('Prosentase Harap diisi > 0');
      edtProsentaseLevel1.SetFocus;
      abort;
    end;
//    edtJml2.Text := edtJumlah1Akhir.Text;
    edtnilaiProsentaseLevel1.Text := FloatToStr((StrToFloat(edtHppAkhir.Text) * StrToFloat(edtProsentaseLevel1.Text)) / 100);
  end;
end;

procedure TTransaksiItem.edtProsentaseLevel1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = VK_RETURN then
  begin
    if StrToFloat(edtProsentaseLevel1.Text) <= 0 then
    begin
      ShowMessage('Prosentase Harap diisi > 0');
      edtProsentaseLevel1.SetFocus;
      abort;
    end;
//    edtJml2.Text := edtJumlah1Akhir.Text;
    edtnilaiProsentaseLevel1.Text := FloatToStr((StrToFloat(edtHppAkhir.Text) * StrToFloat(edtProsentaseLevel1.Text)) / 100);
  end;
end;

procedure TTransaksiItem.edtProsentaseLevel2Exit(Sender: TObject);
begin
  inherited;
  if (edtProsentaseLevel2.Text <> '') or (StrToFloat(edtProsentaseLevel2.Text) <> 0) then
  begin
    if StrToFloat(edtProsentaseLevel2.Text) <= 0 then
    begin
      ShowMessage('Prosentase Harap diisi > 0');
      edtProsentaseLevel2.SetFocus;
      abort;
    end;
//    edtJml2.Text := edtJumlah1Akhir.Text;
    edtnilaiProsentaseLevel2.Text := FloatToStr((StrToFloat(edtHppAkhir.Text) * StrToFloat(edtProsentaseLevel2.Text)) / 100);
  end;
end;

procedure TTransaksiItem.edtProsentaseLevel2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = VK_RETURN then
  begin
    if StrToFloat(edtProsentaseLevel2.Text) <= 0 then
    begin
      ShowMessage('Prosentase Harap diisi > 0');
      edtProsentaseLevel2.SetFocus;
      abort;
    end;
//    edtJml2.Text := edtJumlah1Akhir.Text;
    edtnilaiProsentaseLevel2.Text := FloatToStr((StrToFloat(edtHppAkhir.Text) * StrToFloat(edtProsentaseLevel2.Text)) / 100);
  end;
end;

procedure TTransaksiItem.edtProsentaseLevel3Exit(Sender: TObject);
begin
  inherited;
  if (edtProsentaseLevel3.Text <> '') or (StrToFloat(edtProsentaseLevel3.Text) <> 0) then
  begin
    if StrToFloat(edtProsentaseLevel3.Text) <= 0 then
    begin
      ShowMessage('Prosentase Harap diisi > 0');
      edtProsentaseLevel3.SetFocus;
      abort;
    end;
//    edtJml2.Text := edtJumlah1Akhir.Text;
    edtnilaiProsentaseLevel3.Text := FloatToStr((StrToFloat(edtHppAkhir.Text) * StrToFloat(edtProsentaseLevel3.Text)) / 100);
  end;
end;

procedure TTransaksiItem.edtProsentaseLevel3KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = VK_RETURN then
  begin
    if StrToFloat(edtProsentaseLevel3.Text) <= 0 then
    begin
      ShowMessage('Prosentase Harap diisi > 0');
      edtProsentaseLevel3.SetFocus;
      abort;
    end;
//    edtJml2.Text := edtJumlah1Akhir.Text;
    edtnilaiProsentaseLevel3.Text := FloatToStr((StrToFloat(edtHppAkhir.Text) * StrToFloat(edtProsentaseLevel3.Text)) / 100);
  end;
end;

procedure TTransaksiItem.edtProsentaseMaxExit(Sender: TObject);
begin
  inherited;
  if (edtProsentaseMax.Text <> '') or (StrToFloat(edtProsentaseMax.Text) <> 0) then
  begin
    if StrToFloat(edtProsentaseMax.Text) <= 0 then
    begin
      ShowMessage('Prosentase Harap diisi > 0');
      edtProsentaseMax.SetFocus;
      abort;
    end;
    edtNilaiProsentaseMax.Text := FloatToStr((StrToFloat(edtHppAkhir.Text) * StrToFloat(edtProsentaseMax.Text)) / 100);
  end;
end;

procedure TTransaksiItem.edtProsentaseMaxKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = VK_RETURN then
  begin
    if StrToFloat(edtProsentaseMax.Text) <= 0 then
    begin
      ShowMessage('Prosentase Harap diisi > 0');
      edtProsentaseMax.SetFocus;
      abort;
    end;
//    edtJml2.Text := edtJumlah1Akhir.Text;
    edtNilaiProsentaseMax.Text := FloatToStr((StrToFloat(edtHppAkhir.Text) * StrToFloat(edtProsentaseMax.Text)) / 100);
  end;
end;

procedure TTransaksiItem.edtProsentasePotonganExit(Sender: TObject);
begin
  inherited;
  if (edtProsentasePotongan.Text <> '') or (StrToFloat(edtProsentasePotongan.Text) <> 0) then
  begin
    if StrToInt(edtProsentasePotongan.Text) <= 0 then
    begin
      ShowMessage('Stock Awal > 0');
      edtProsentasePotongan.SetFocus;
      Abort;
    end;
    edtNilaiProsentasePotongan.Text := floattostr((StrToFloat(edtNilaiProsentase1.Text) * StrToFloat(edtProsentasePotongan.Text))/100);
  end;
end;

procedure TTransaksiItem.edtProsentasePotonganKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = vk_return then
  begin
    if StrToInt(edtProsentasePotongan.Text) <= 0 then
    begin
      ShowMessage('Stock Awal > 0');
      edtProsentasePotongan.SetFocus;
      Abort;
    end;
    edtNilaiProsentasePotongan.Text := floattostr((StrToFloat(edtNilaiProsentase1.Text) * StrToFloat(edtProsentasePotongan.Text))/100);
  end;
end;

procedure TTransaksiItem.edtSatuanKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_F4 then
  begin
    PilihSatuan.Execute;
    edtSatuan.SetFocus
  end;
end;

procedure TTransaksiItem.edtStockAwalKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_return then
  begin
    if StrToInt(edtStockAwal.Text) <= 0 then
    begin
      ShowMessage('Stock Awal > 0');
      edtStockAwal.SetFocus;
      Abort;
    end;
    edtStockAkhir.Text := edtStockAwal.Text;
  end;
end;

procedure TTransaksiItem.edtStockMinKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_return then
  begin
    if StrToInt(edtStockMin.Text) <= 0 then
    begin
      ShowMessage('Stock Minimal > 0');
      edtStockMin.SetFocus;
      Abort;
    end;
  end;
end;

procedure TTransaksiItem.edtSupplier1Enter(Sender: TObject);
begin
  inherited;
  statSPPL := 1;
end;

procedure TTransaksiItem.edtSupplier1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_F4 then
  begin
    PilihSupplier.Execute;
    edtSupplier1.SetFocus;
  end;
end;

procedure TTransaksiItem.edtSupplier2Enter(Sender: TObject);
begin
  inherited;
  statSPPL := 2;
end;

procedure TTransaksiItem.edtSupplier2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_F4 then
  begin
    PilihSupplier.Execute;
    edtSupplier2.SetFocus;
  end;
end;

procedure TTransaksiItem.edtSupplier3Enter(Sender: TObject);
begin
  inherited;
  statSPPL := 3;
end;

procedure TTransaksiItem.edtSupplier3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_F4 then
  begin
    PilihSupplier.Execute;
    edtSupplier3.SetFocus;
  end;
end;

Procedure TTransaksiItem.IsiEntry;
begin
  edtKode.Text    := QCariNoItem.Value;
  edtBarcode.Text := QCariKodeBarCode.Value;
  edtItem.Text    := QCariNamaItem.Value;
  edtJenis.Text   := QCarijenis.Value;
  edtSatuan.Text  := QCariSatuan.Value;
  edtKeterangan.Text := QCariKeterangan.Value;
  edtSupplier1.Text := QCariSupplier.Value;
  edtSupplier2.Text := QCariSupplier2.Value;
  edtSupplier3.Text := QCariSupplier3.Value;
  edtStockMin.Text  := FloatToStr(QCariStokMin.Value);
  edtStockAwal.Text := FloatToStr(QCariInv_JmlAwal.Value);
  edtStockAkhir.Text := FloatToStr(QCariQuantity.Value);
  if QCariStatusItem.value = 1 then rbBarang.Checked := True else
  rbJasa.Checked := True;
  if QCariStatusProduk.Value = 1 then cbaktif.Checked := True else
  cbaktif.Checked := False;
  edtHppAwal.Text := FloatToStr(QCariInv_HrgAwal.Value);
  edtHppAkhir.Text := FloatToStr(QCariHargaPokok.Value);
  edtTotalAwal.text := FloatToStr(QCariTotalPokok.Value);
  edttgl.Date := QCariInv_TglAwal.Value;
  edtJml1.Text := '1';
  edtJml2.Text := FloatToStr(QCariQtySampai1.Value);
  edtJml3.Text := FloatToStr(QCariQtySampai2.Value);
  edtJumlah1Akhir.Text := FloatToStr(QCariQtyDari2.Value);
  edtJml2Akhir.Text := FloatToStr(QCariQtyDari3.Value);
  edtProsentase1.Text := FloatToStr(QCariProc1.Value);
  edtProsentase2.Text := FloatToStr(QCariProc2.Value);
  edtProsentaseMax.Text := FloatToStr(QCariProc3.Value);
  edtNilaiProsentase1.Text := FloatToStr(QCariHargaJual.Value);
  edtNilaiProsentase2.Text := FloatToStr(QCariHargaJual2.Value);
  edtNilaiProsentaseMax.Text := FloatToStr(QCariHargaJual3.Value);
  edtProsentasePotongan.Text := FloatToStr(QCariDiskonP.Value);
  edtNilaiProsentasePotongan.Text := FloatToStr(QCariDiskonN.Value);
  edtTglAwal.Date := QCariPerDis1.Value;
  edtTglAkhir.Date := QCariPerDis2.Value;
  edtProsentaseLevel1.Text := FloatToStr(QCariPrHargaL1.Value);
  edtProsentaseLevel2.Text := FloatToStr(QCariPrHargaL2.Value);
  edtProsentaseLevel3.Text := FloatToStr(QCariPrHargaL3.Value);
  edtNilaiProsentaseLevel3.Text := FloatToStr(QCariHargaL1.Value);
  edtNilaiProsentaseLevel2.Text := FloatToStr(QCariHargaL2.Value);
  edtNilaiProsentaseLevel1.Text := FloatToStr(QCariHargaL3.Value);
  if QCariSistemHJ.Value = 1 then cbProsentaseHpp.Checked := True else
     cbNominalTetap.Checked := False;
  Queri := TUniQuery.Create(Self);
  Queri.Connection := MainForm.connPOS;
  with Queri do
  begin
    close;
    SQL.Clear;
    SQL.Add('Select NamaSupplier From tblSupplier where NoSupplier=:Supp_');
    Params.ParamByName('Supp_').Value := QCariSupplier.Value;
    open;
  end;
  if not Queri.IsEmpty then
  lblSPPL1.Caption := Queri.Fields[0].Value;
  with Queri do
  begin
    close;
    SQL.Clear;
    SQL.Add('Select NamaSupplier From tblSupplier where NoSupplier=:Supp_');
    Params.ParamByName('Supp_').Value := QCariSupplier2.Value;
    open;
  end;
  if not Queri.IsEmpty then
  lblSPPL2.Caption := Queri.Fields[0].Value;
  with Queri do
  begin
    close;
    SQL.Clear;
    SQL.Add('Select NamaSupplier From tblSupplier where NoSupplier=:Supp_');
    Params.ParamByName('Supp_').Value := QCariSupplier3.Value;
    open;
  end;
  if not Queri.IsEmpty then
  lblSPPL3.Caption := Queri.Fields[0].Value;

  Queri.Free;
//
//  edtTotalAwal.Text := QCari[0].Value;
//  edtTotalAkhir.Text := QCari[0].Value;

end;

procedure TTransaksiItem.PilihJenisExecute(Sender: TObject);
var i : SmallInt;
begin
  inherited;
  SearchForm := TSearchForm .Create(nil);
  SearchForm.FormStyle := fsNormal;
  SearchForm.StringGrid1.Cells[0,0]:='JenisID';
  SearchForm.StringGrid1.Cells[1,0]:='Nama';
  With SearchForm.QCari do
  begin
    Close;
    SQL.Clear;
    SQL.Add(' Select Jenis, NamaJenis From tblitemJenis order by NamaJenis asc');
    Open;
  end;
  i:= 1;
  SearchForm.QCari.First;
  SearchForm.StringGrid1.RowCount := SearchForm.QCari.RecordCount + 1;
  while not SearchForm.QCari.Eof do
  begin
    SearchForm.StringGrid1.Cells[0,i] := SearchForm.QCari.Fields[0].Value;
    SearchForm.StringGrid1.Cells[1,i] := SearchForm.QCari.Fields[1].Value;
    Inc(i);
    SearchForm.QCari.Next;
  end;
  SearchForm.hide;
  if SearchForm.ShowModal = MrOK then
  begin
    edtJenis.Text := SearchForm.nilaiPilih_;
    lblJenis.Caption := SearchForm.nilaiPilih2_;
  end;
end;

procedure TTransaksiItem.PilihSatuanExecute(Sender: TObject);
var i : SmallInt;
begin
  inherited;
  SearchForm := TSearchForm .Create(nil);
  SearchForm.FormStyle := fsNormal;
  SearchForm.StringGrid1.Cells[0,0]:='SatuanID';
  SearchForm.StringGrid1.Cells[1,0]:='Nama';
  With SearchForm.QCari do
  begin
    Close;
    SQL.Clear;
    SQL.Add(' Select Satuan, NamaSatuan From tblitemSatuan order by NamaSatuan asc');
    Open;
  end;
  i:= 1;
  SearchForm.QCari.First;
  SearchForm.StringGrid1.RowCount := SearchForm.QCari.RecordCount + 1;
  while not SearchForm.QCari.Eof do
  begin
    SearchForm.StringGrid1.Cells[0,i] := SearchForm.QCari.Fields[0].Value;
    SearchForm.StringGrid1.Cells[1,i] := SearchForm.QCari.Fields[1].Value;
    Inc(i);
    SearchForm.QCari.Next;
  end;
  SearchForm.hide;
  if SearchForm.ShowModal = MrOK then
  begin
    edtSatuan.Text := SearchForm.nilaiPilih_;
    lblSatuan.Caption := SearchForm.nilaiPilih2_;
  end;
end;

procedure TTransaksiItem.PilihSupplierExecute(Sender: TObject);
var
 i: SmallInt;
begin
  inherited;
  if statSPPL = 1 then
  begin
    SearchForm := TSearchForm .Create(nil);
    SearchForm.FormStyle := fsNormal;
    SearchForm.StringGrid1.Cells[0,0]:='SupplierID';
    SearchForm.StringGrid1.Cells[1,0]:='Nama';
    With SearchForm.QCari do
    begin
      Close;
      SQL.Clear;
      SQL.Add(' Select NoSupplier, NamaSupplier From tblSupplier order by NamaSupplier asc');
      Open;
    end;
    i:= 1;
    SearchForm.QCari.First;
    SearchForm.StringGrid1.RowCount := SearchForm.QCari.RecordCount + 1;
    while not SearchForm.QCari.Eof do
    begin
      SearchForm.StringGrid1.Cells[0,i] := SearchForm.QCari.Fields[0].Value;
      SearchForm.StringGrid1.Cells[1,i] := SearchForm.QCari.Fields[1].Value;
      Inc(i);
      SearchForm.QCari.Next;
    end;
    SearchForm.hide;
    if SearchForm.ShowModal = MrOK then
    begin
      edtSupplier1.Text := SearchForm.nilaiPilih_;
      lblSPPL1.Caption  := SearchForm.nilaiPilih2_;
    end;
  end;
  if statSPPL = 2 then
  begin
    SearchForm := TSearchForm .Create(nil);
    SearchForm.FormStyle := fsNormal;
    SearchForm.StringGrid1.Cells[0,0]:='SupplierID';
    SearchForm.StringGrid1.Cells[1,0]:='Nama';
    With SearchForm.QCari do
    begin
      Close;
      SQL.Clear;
      SQL.Add(' Select NoSupplier, NamaSupplier From tblSupplier order by NamaSupplier asc');
      Open;
    end;
    i:= 1;
    SearchForm.QCari.First;
    SearchForm.StringGrid1.RowCount := SearchForm.QCari.RecordCount + 1;
    while not SearchForm.QCari.Eof do
    begin
      SearchForm.StringGrid1.Cells[0,i] := SearchForm.QCari.Fields[0].Value;
      SearchForm.StringGrid1.Cells[1,i] := SearchForm.QCari.Fields[1].Value;
      Inc(i);
      SearchForm.QCari.Next;
    end;
    SearchForm.hide;
    if SearchForm.ShowModal = MrOK then
    begin
      edtSupplier2.Text := SearchForm.nilaiPilih_;
      lblSPPL2.Caption  := SearchForm.nilaiPilih2_;
    end;
  end;
  if statSPPL = 3 then
  begin
    SearchForm := TSearchForm .Create(nil);
    SearchForm.FormStyle := fsNormal;
    SearchForm.StringGrid1.Cells[0,0]:='SupplierID';
    SearchForm.StringGrid1.Cells[1,0]:='Nama';
    With SearchForm.QCari do
    begin
      Close;
      SQL.Clear;
      SQL.Add(' Select NoSupplier, NamaSupplier From tblSupplier order by NamaSupplier asc');
      Open;
    end;
    i:= 1;
    SearchForm.QCari.First;
    SearchForm.StringGrid1.RowCount := SearchForm.QCari.RecordCount + 1;
    while not SearchForm.QCari.Eof do
    begin
      SearchForm.StringGrid1.Cells[0,i] := SearchForm.QCari.Fields[0].Value;
      SearchForm.StringGrid1.Cells[1,i] := SearchForm.QCari.Fields[1].Value;
      Inc(i);
      SearchForm.QCari.Next;
    end;
    SearchForm.hide;
    if SearchForm.ShowModal = MrOK then
    begin
      edtSupplier3.Text := SearchForm.nilaiPilih_;
      lblSPPL3.Caption  := SearchForm.nilaiPilih2_;
    end;
  end;
end;

procedure TTransaksiItem.rbBarangExit(Sender: TObject);
begin
  inherited;
  if rbBarang.Checked = True then
  begin
    rbBarang.Checked := true;
    rbJasa.Enabled := false;
    cxPageControl1.ActivePageIndex := 0;
    edtSupplier1.SetFocus;
  end;
  if rbBarang.Checked = False then
  begin
    rbBarang.Checked := false;
    rbJasa.Enabled := True;
    rbJasa.SetFocus;
  end;
end;

procedure TTransaksiItem.rbBarangKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = VK_Return then
  begin
    if rbBarang.Checked = True then
    begin
      rbBarang.Checked := true;
      rbJasa.Enabled := false;
      cxPageControl1.ActivePageIndex := 0;
      edtSupplier1.SetFocus;
    end;
    if rbBarang.Checked = False then
    begin
      rbBarang.Checked := false;
      rbJasa.Enabled := True;
      rbJasa.SetFocus;
    end;
  end;
end;

procedure TTransaksiItem.rbJasaExit(Sender: TObject);
begin
  inherited;
  if rbJasa.Checked = True then
  begin
    rbJasa.Checked := true;
    rbJasa.Enabled := false;
    cxTabSheet2.TabVisible := False;
    cxTabSheet1.TabVisible := False;
    cxDetailJasa.TabVisible := True;
    cxPageControl1.ActivePageIndex := 2;
    edtHargaJualJasa.SetFocus;
  end;
  if rbJasa.Checked = False then
  begin
    rbJasa.Checked := false;
    rbBarang.Enabled := True;
    rbBarang.SetFocus;
    cxTabSheet2.TabVisible := True;
    cxTabSheet1.TabVisible := True;
    cxDetailJasa.TabVisible := False;
    cxPageControl1.ActivePageIndex := 0;
  end;
end;

procedure TTransaksiItem.rbJasaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = VK_RETURN then
  begin
    if rbJasa.Checked = True then
    begin
      rbJasa.Checked := true;
      rbJasa.Enabled := false;
      cxTabSheet2.TabVisible := False;
      cxTabSheet1.TabVisible := False;
      cxDetailJasa.TabVisible := True;
      cxPageControl1.ActivePageIndex := 2;
      edtHargaJualJasa.SetFocus;
    end;
    if rbJasa.Checked = False then
    begin
      rbJasa.Checked := false;
      rbBarang.Enabled := True;
      rbBarang.SetFocus;
      cxTabSheet2.TabVisible := True;
      cxTabSheet1.TabVisible := True;
      cxDetailJasa.TabVisible := False;
      cxPageControl1.ActivePageIndex := 0;
    end;
  end;
end;

procedure TTransaksiItem.SimpanExecute(Sender: TObject);
begin
  inherited;
  if ItemForm.StatTrans_ = 1 then
  begin

  end;
  if ItemForm.StatTrans_ = 2 then
  begin

  end;
end;

procedure TTransaksiItem.awalEntry;
begin
  edtKode.Clear;
  edtBarcode.Clear;
  edtItem.Clear;
  edtJenis.Clear;
  edtSatuan.Clear;
  edtKeterangan.Clear;
  edtSupplier1.clear;
  edtSupplier2.Clear;
  edtSupplier3.Clear;
  edtStockMin.Text := '0';
  edtStockAwal.Text := '0';
  edtStockAkhir.Text := '0';
  edtJml1.Text := '1';
  edtJml2.Text := '0';
  edtJml3.Text := '0';
  edtJumlah1Akhir.Text := '0';
  edtJml2Akhir.Text := '0';
  edtJml3.Text := '0';
  edtProsentase1.Text := '0';
  edtProsentase2.Text := '0';
  edtProsentaseMax.Text := '0';
  edtNilaiProsentase1.Text := '0';
  edtNilaiProsentase2.Text := '0';
  edtNilaiProsentaseMax.Text := '0';
  edtProsentasePotongan.Text := '0';
  edtNilaiProsentasePotongan.Text := '0';
  edtTglAwal.Date := now;
  edtTglAkhir.date := now;
  edtProsentaseLevel1.Text := '0';
  edtProsentaseLevel2.Text := '0';
  edtProsentaseLevel3.Text := '0';
  edtNilaiProsentaseLevel3.Text := '0';
  edtNilaiProsentaseLevel2.Text := '0';
  edtNilaiProsentaseLevel1.Text := '0';
  cbProsentaseHpp.Checked := False;
  cbNominalTetap.Checked := False;
  edtSupplier1.Clear;
  edtSupplier2.Clear;
  edtSupplier3.Clear;
  lblSPPL1.Caption := '';
  lblSPPL2.Caption := '';
  lblSPPL3.Caption := '';
  edtHppAwal.Text := '0';
  edtHppAkhir.Text := '0';
  edtTotalAwal.Text := '0';
  edtTotalAkhir.Text := '0';
  edttgl.Date := now;
  rbBarang.Checked := false;
  rbJasa.Checked := False;
  // Disable Entrian Default
  edtJml1.Enabled := false;
  edtJml2.Enabled := false;
  edtJml3.Enabled := false;
  edtJmlMax.Enabled := false;
  cxDetailJasa.tabVisible := false;
  edtHargaJualJasa.Text := '0';

  cxPageControl1.ActivePage := cxTabSheet1;
  edtKode.ReadOnly := false;
end;
procedure TTransaksiItem.FormCreate(Sender: TObject);
begin
  inherited;
  awalEntry;
  KeyPreview := true;
end;

procedure TTransaksiItem.FormDeactivate(Sender: TObject);
begin
  inherited;
  if ActiveMDIChild <> nil then
  ActiveMDIChild.Close else
  Self.Close;
end;

procedure TTransaksiItem.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then
  begin
    Key := #0;
    if edtKode.Focused then
       edtBarcode.SetFocus else
    if edtBarcode.Focused then
       edtItem.SetFocus else
    if edtItem.Focused then
       edtJenis.SetFocus else
    if edtJenis.Focused then
       edtSatuan.SetFocus else
    if edtSatuan.Focused then
       edtKeterangan.SetFocus else
    if edtKeterangan.Focused then
       rbBarang.SetFocus else
    if rbBarang.Focused then
    begin
       if rbBarang.Checked = true then
       begin
         rbJasa.Enabled := False;
         cxPageControl1.ActivePage := cxTabSheet1;
         edtSupplier1.SetFocus;
       end;
       if rbBarang.Checked = False then
       begin
         rbJasa.Enabled := True;
         rbJasa.SetFocus;
         rbBarang.Enabled := False;
       end;
    end;
    if rbJasa.Focused then
    begin
       if rbJasa.Checked = true then
       begin
         rbBarang.Enabled := False;
         cxPageControl1.ActivePage := cxTabSheet1;
         edtSupplier1.SetFocus;
       end;
       if rbJasa.Checked = False then
       begin
         rbBarang.Enabled := True;
         rbBarang.SetFocus;
         rbJasa.Enabled := False;
       end;
    end;
    if edtSupplier1.Focused then
       edtSupplier2.SetFocus else
    if edtSupplier2.Focused then
       edtSupplier3.SetFocus else
    if edtSupplier3.Focused then
       edtStockMin.SetFocus else
    if edtStockMin.Focused then
       edtStockAwal.SetFocus else
    if edtStockAwal.Focused then
       edtHppAwal.SetFocus else
    if edtHppAwal.Focused then
       edtHppAkhir.SetFocus else
    if edtHppAkhir.Focused then
       edttgl.SetFocus else
    if edttgl.Focused then
       cbAktif.SetFocus else
    if cbAktif.Focused then
    begin
       cxPageControl1.ActivePage := cxTabSheet2;
       edtJumlah1Akhir.SetFocus
    end;
    if edtJumlah1Akhir.Focused then
       edtProsentase1.SetFocus else
    if edtProsentase1.Focused then
       edtJml2Akhir.SetFocus else
    if edtJml2Akhir.Focused then
       edtProsentase2.SetFocus else
    if edtProsentase2.Focused then
       edtProsentaseMax.SetFocus else
    if edtProsentaseMax.Focused then
       edtProsentasePotongan.SetFocus else
    if edtProsentasePotongan.Focused then
       edtTglAwal.SetFocus else
    if edtTglAwal.Focused then
       edtTglAkhir.SetFocus else
    if edtTglAkhir.Focused then
    begin
       if cbProsentaseHpp.Checked = True then
       begin
         cbNominalTetap.Enabled := false;
         edtProsentaseLevel1.SetFocus;
       end;
       if cbProsentaseHpp.Checked = False then
       begin
         cbNominalTetap.Enabled := true;
         cbNominalTetap.SetFocus;
         cbProsentaseHpp.Enabled := false;
       end;
       if cbNominalTetap.Checked = True then
       begin
         cbProsentaseHpp.Enabled := false;
         edtProsentaseLevel1.SetFocus;
       end;
       if cbNominalTetap.Checked = False then
       begin
         cbProsentaseHpp.Enabled := true;
         cbProsentaseHpp.SetFocus;
         cbNominalTetap.Enabled := false;
       end;
    end;
    if edtProsentaseLevel1.Focused then
       edtProsentaseLevel2.SetFocus else
    if edtProsentaseLevel2.Focused then
       edtProsentaseLevel3.SetFocus else
    if edtProsentaseLevel3.Focused then
       btnSimpan.SetFocus;
  end;
end;

end.



