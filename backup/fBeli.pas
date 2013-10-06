unit fBeli;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Beli, ftemplate, cxGraphics, cxControls, cxLookAndFeels,
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
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridCustomView, cxClasses, cxGridLevel,
  cxGrid, StdCtrls, Mask, DBCtrls, ComCtrls, cxContainer, cxCheckListBox,
  cxDBCheckListBox, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, mylib, cxCheckComboBox,
  cxDBCheckComboBox;

type
  TfBeliForm = class(TfTemplateform)
    lbl1: TLabel;
    DBEdit1: TDBEdit;
    lbl2: TLabel;
    DBEdit2: TDBEdit;
    lbl3: TLabel;
    DBEdit3: TDBEdit;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxStyleRepository1: TcxStyleRepository;
    GridBandedTableViewStyleSheetWindowsStandard: TcxGridBandedTableViewStyleSheet;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    cxStyle9: TcxStyle;
    cxStyle10: TcxStyle;
    cxStyle11: TcxStyle;
    cxStyle12: TcxStyle;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    lbl4: TLabel;
    DBEdit4: TDBEdit;
    lbl5: TLabel;
    DBEdit5: TDBEdit;
    cxGrid1DBBandedTableView1NO: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1KODE_BARANG: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1HARGA_BELI: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1JUMLAH: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1SUBTOTAL: TcxGridDBBandedColumn;
    lbl6: TLabel;
    DBEdit6: TDBEdit;
    lbl7: TLabel;
    DBEdit7: TDBEdit;
    lbl8: TLabel;
    DBEdit8: TDBEdit;
    lbl9: TLabel;
    DBEdit9: TDBEdit;
    btn3: TSpeedButton;
    lbl10: TLabel;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBCheckComboBox1: TcxDBCheckComboBox;
    cal1: TMonthCalendar;
    btn4: TButton;
    procedure FormCreate(Sender: TObject);
    procedure cal1Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure DBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit2Exit(Sender: TObject);
    procedure cxDBCheckComboBox1PropertiesCloseUp(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure cxGrid1Enter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fBeliForm: TfBeliForm;

implementation

{$R *.dfm}

procedure TfBeliForm.FormCreate(Sender: TObject);
begin
  inherited;
  with BeliForm.sp_Total do
  begin
    close;
    Parameters.ParamByName('FAKTUR').Value := Dbedit2.Text;
    Parameters.ParamByName('TABLE_').Value := 'BELI';
    open;
  end;
  self.Height := 536;
  Self.Width  := 728;
  btn2.top    := 462 + 35;
  btn1.top    := 462 + 35;
  btn1.Left   := 626;
  btn2.Left   := 535;  
  cal1.Hide;
end;

procedure TfBeliForm.cal1Click(Sender: TObject);
begin
  inherited;
  BeliForm.tblBeliHdrTGL_PEMBELIAN.Value := cal1.Date;
  cal1.Hide;
end;

procedure TfBeliForm.btn3Click(Sender: TObject);
begin
  inherited;
  cal1.Show;
end;

procedure TfBeliForm.DBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_f4 then
  begin
    btn3Click(sender);
  end;
end;

procedure TfBeliForm.DBEdit2Exit(Sender: TObject);
begin
  inherited;
  if (BeliForm.tblBeliHdrFAKTUR_PEMBELIAN.Value = null) or (BeliForm.tblBeliHdrFAKTUR_PEMBELIAN.Value = '') then
  begin
    konfError('Harap diIsi No. Faktur Transaksi/Bukti Transaksi');
    DBEdit2.SetFocus;
    Abort;
  end;
  BeliForm.tblSupplier.close;
  BeliForm.tblSupplier.Open;  
end;

procedure TfBeliForm.cxDBCheckComboBox1PropertiesCloseUp(Sender: TObject);
begin
  inherited;
  BeliForm.tblBeliHdr.Post;
  BeliForm.tblBeliDtl.Close;
  BeliForm.tblBeliDtl.Open;
  BeliForm.tblBeliDtl.Append;
end;

procedure TfBeliForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then
  begin
    if DBEdit1.Focused then
       DBEdit2.SetFocus else
    if DBEdit2.Focused then
       cxDBLookupComboBox1.SetFocus else
    if cxDBLookupComboBox1.Focused then
       cxDBCheckComboBox1.SetFocus else
    if cxDBCheckComboBox1.Focused then
    begin
      cxGrid1DBBandedTableView1KODE_BARANG.FocusWithSelection;
      cxGrid1DBBandedTableView1.Columns[1].Selected := true;
      cxGrid1.SetFocus;
    end;
    if DBEdit4.Focused then
       DBEdit7.SetFocus;
  end;
end;

procedure TfBeliForm.FormShow(Sender: TObject);
begin
  inherited;
  if BeliForm.dsBeliHdr.State = dsInsert then
  begin
    self.caption := 'Add New Transaction Purchase';
    dbedit2.enabled := True;
    dbedit1.enabled := True;
    dbedit1.SetFocus;
  end;
  if BeliForm.dsBeliHdr.State = dsEdit then
  begin
    self.caption := 'Change Old Transaction Purchase';
    dbedit2.enabled := false;
    dbedit1.enabled := False;

  end;
end;

procedure TfBeliForm.cxGrid1Enter(Sender: TObject);
begin
  inherited;
//  BeliForm.tblBeliHdr.Post;
end;

procedure TfBeliForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  self.close;
  abort;
end;

end.
