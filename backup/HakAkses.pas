unit HakAkses;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBActns, ActnList, Buttons, StdCtrls, DBCtrls, ExtCtrls,
  ComCtrls, Main, DB, ADODB;

type
  THakAksesForm = class(TForm)
    tbc1: TTabControl;
    lbl1: TLabel;
    shp1: TShape;
    dbchkTRANSAKSI: TDBCheckBox;
    dbchkPEMBELIAN: TDBCheckBox;
    dbchkPENJUALAN: TDBCheckBox;
    dbchkLAPORAN: TDBCheckBox;
    dbchkLAP_PEMBELIAN: TDBCheckBox;
    dbchkLAP_PENJUALAN: TDBCheckBox;
    dbchkLAP_BARANG: TDBCheckBox;
    dbchkLAP_SUPPLIER: TDBCheckBox;
    dbchkLAP_CUSTOMER: TDBCheckBox;
    dbchkMASTER: TDBCheckBox;
    dbchkJENIS: TDBCheckBox;
    dbchkSATUAN: TDBCheckBox;
    dbchkBARANG: TDBCheckBox;
    dbchkSUPPLIER: TDBCheckBox;
    dbchkCUSTOMER: TDBCheckBox;
    dbchkSISTEM: TDBCheckBox;
    dbchkPENGGUNA: TDBCheckBox;
    dbchkUBAH_PASSWORD: TDBCheckBox;
    dbchkLOGOUT: TDBCheckBox;
    dbchkKELUAR: TDBCheckBox;
    dbchkHAK_AKSES: TDBCheckBox;
    btn1: TSpeedButton;
    btn2: TSpeedButton;
    actlst1: TActionList;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    tblHakAkses: TADODataSet;
    cbb1: TComboBox;
    tblHakAksesLEVEL: TWideStringField;
    tblHakAksesTRANSAKSI: TSmallintField;
    tblHakAksesPEMBELIAN: TSmallintField;
    tblHakAksesPENJUALAN: TSmallintField;
    tblHakAksesLAPORAN: TSmallintField;
    tblHakAksesLAP_PEMBELIAN: TSmallintField;
    tblHakAksesLAP_PENJUALAN: TSmallintField;
    tblHakAksesLAP_BARANG: TSmallintField;
    tblHakAksesLAP_SUPPLIER: TSmallintField;
    tblHakAksesLAP_CUSTOMER: TSmallintField;
    tblHakAksesMASTER: TSmallintField;
    tblHakAksesJENIS: TSmallintField;
    tblHakAksesSATUAN: TSmallintField;
    tblHakAksesBARANG: TSmallintField;
    tblHakAksesSUPPLIER: TSmallintField;
    tblHakAksesCUSTOMER: TSmallintField;
    tblHakAksesSISTEM: TSmallintField;
    tblHakAksesPENGGUNA: TSmallintField;
    tblHakAksesUBAH_PASSWORD: TSmallintField;
    tblHakAksesLOGOUT: TSmallintField;
    tblHakAksesKELUAR: TSmallintField;
    tblHakAksesHAK_AKSES: TSmallintField;
    dsHakAkses: TDataSource;
    shp2: TShape;
    shp3: TShape;
    shp4: TShape;
    procedure tblHakAksesTRANSAKSIValidate(Sender: TField);
    procedure tblHakAksesLAPORANValidate(Sender: TField);
    procedure tblHakAksesMASTERValidate(Sender: TField);
    procedure tblHakAksesSISTEMValidate(Sender: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cbb1CloseUp(Sender: TObject);
    procedure tblHakAksesBeforePost(DataSet: TDataSet);
    procedure tblHakAksesNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  HakAksesForm: THakAksesForm;

implementation

{$R *.dfm}

procedure THakAksesForm.tblHakAksesTRANSAKSIValidate(Sender: TField);
begin
  if tblHakAksesTRANSAKSI.Value = 0 then
  begin
    tblHakAksesPEMBELIAN.Value := 0;
    tblHakAksesPENJUALAN.Value := 0;
    dbchkPEMBELIAN.Enabled := false;
    dbchkPENJUALAN.Enabled := false;
  end;
  if tblHakAksesTRANSAKSI.Value = 1 then
  begin
    tblHakAksesPEMBELIAN.Value := 0;
    tblHakAksesPENJUALAN.Value := 0;
    dbchkPEMBELIAN.Enabled := True;
    dbchkPENJUALAN.Enabled := True;
  end;
end;

procedure THakAksesForm.tblHakAksesLAPORANValidate(Sender: TField);
begin
  if tblHakAksesLAPORAN.Value = 0 then
  begin
    tblHakAksesLAP_PEMBELIAN.Value := 0;
    tblHakAksesLAP_PENJUALAN.Value := 0;
    tblHakAksesLAP_BARANG.Value := 0;
    tblHakAksesLAP_SUPPLIER.Value := 0;
    tblHakAksesLAP_CUSTOMER.Value := 0;
    dbchkLAP_PEMBELIAN.Enabled := false;
    dbchkLAP_PENJUALAN.Enabled := false;
    dbchkLAP_BARANG.Enabled := false;
    dbchkLAP_SUPPLIER.Enabled := false;
    dbchkLAP_CUSTOMER.Enabled := false;
  end;
  if tblHakAksesLAPORAN.Value = 1 then
  begin
    tblHakAksesLAP_PEMBELIAN.Value := 0;
    tblHakAksesLAP_PENJUALAN.Value := 0;
    tblHakAksesLAP_BARANG.Value := 0;
    tblHakAksesLAP_SUPPLIER.Value := 0;
    tblHakAksesLAP_CUSTOMER.Value := 0;
    dbchkLAP_PEMBELIAN.Enabled := True;
    dbchkLAP_PENJUALAN.Enabled := True;
    dbchkLAP_BARANG.Enabled := True;
    dbchkLAP_SUPPLIER.Enabled := True;
    dbchkLAP_CUSTOMER.Enabled := True;
  end;
end;

procedure THakAksesForm.tblHakAksesMASTERValidate(Sender: TField);
begin
  if tblHakAksesMASTER.Value = 0 then
  begin
    tblHakAksesBARANG.Value := 0;
    tblHakAksesSUPPLIER.Value := 0;
    tblHakAksesJENIS.Value := 0;
    tblHakAksesSATUAN.Value := 0;
    tblHakAksesCUSTOMER.Value := 0;
    dbchkBARANG.Enabled := false;
    dbchkJENIS.Enabled := false;
    dbchkSUPPLIER.Enabled := false;
    dbchkSATUAN.Enabled := false;
    dbchkCUSTOMER.Enabled := false;
  end;
  if tblHakAksesMASTER.Value = 1 then
  begin
    tblHakAksesBARANG.Value := 0;
    tblHakAksesSUPPLIER.Value := 0;
    tblHakAksesJENIS.Value := 0;
    tblHakAksesSATUAN.Value := 0;
    tblHakAksesCUSTOMER.Value := 0;
    dbchkBARANG.Enabled := True;
    dbchkJENIS.Enabled := True;
    dbchkSUPPLIER.Enabled := True;
    dbchkSATUAN.Enabled := True;
    dbchkCUSTOMER.Enabled := True;
  end;
end;

procedure THakAksesForm.tblHakAksesSISTEMValidate(Sender: TField);
begin
  if tblHakAksesSISTEM.Value = 0 then
  begin
    tblHakAksesPENGGUNA.Value := 0;
    tblHakAksesHAK_AKSES.Value := 0;
    tblHakAksesUBAH_PASSWORD.Value := 0;
    tblHakAksesKELUAR.Value := 1;
    tblHakAksesLOGOUT.Value := 1;
    dbchkPENGGUNA.Enabled := false;
    dbchkHAK_AKSES.Enabled := false;
    dbchkUBAH_PASSWORD.Enabled := false;
    dbchkKELUAR.Enabled := false;
    dbchkLOGOUT.Enabled := false;
  end;
  if tblHakAksesSISTEM.Value = 1 then
  begin
    tblHakAksesPENGGUNA.Value := 0;
    tblHakAksesHAK_AKSES.Value := 0;
    tblHakAksesUBAH_PASSWORD.Value := 0;
    tblHakAksesKELUAR.Value := 1;
    tblHakAksesLOGOUT.Value := 1;
    dbchkPENGGUNA.Enabled := True;
    dbchkHAK_AKSES.Enabled := True;
    dbchkUBAH_PASSWORD.Enabled := True;
    dbchkKELUAR.Enabled := True;
    dbchkLOGOUT.Enabled := True;
  end;
end;

procedure THakAksesForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure THakAksesForm.FormCreate(Sender: TObject);
begin
  if MainForm.conToko.Connected = True then
  begin
    dbchkPENGGUNA.Enabled := True;
    dbchkHAK_AKSES.Enabled := True;
    dbchkUBAH_PASSWORD.Enabled := True;
    dbchkKELUAR.Enabled := True;
    dbchkLOGOUT.Enabled := True;
    dbchkBARANG.Enabled := True;
    dbchkJENIS.Enabled := True;
    dbchkSUPPLIER.Enabled := True;
    dbchkSATUAN.Enabled := True;
    dbchkCUSTOMER.Enabled := True;
    dbchkLAP_PEMBELIAN.Enabled := True;
    dbchkLAP_PENJUALAN.Enabled := True;
    dbchkLAP_BARANG.Enabled := True;
    dbchkLAP_SUPPLIER.Enabled := True;
    dbchkLAP_CUSTOMER.Enabled := True;
    dbchkPEMBELIAN.Enabled := True;
    dbchkPENJUALAN.Enabled := True;
  end;
end;

procedure THakAksesForm.cbb1CloseUp(Sender: TObject);
begin
  with tblHakAkses do
  begin
    close;
    Parameters.ParamByName('Level_').Value := cbb1.Text;
    Open;
  end;
//  if not tblHakAkses.IsEmpty then tblHakAkses.edit else
//  tblHakAkses.Append;
end;

procedure THakAksesForm.tblHakAksesBeforePost(DataSet: TDataSet);
begin
  tblHakAksesLEVEL.Value := cbb1.Text;
end;

procedure THakAksesForm.tblHakAksesNewRecord(DataSet: TDataSet);
begin
  if tblHakAkses.State in [dsInsert] then
  begin
    tblHakAksesPEMBELIAN.Value := 0;
    tblHakAksesPENJUALAN.Value := 0;
    tblHakAksesLAP_PEMBELIAN.Value := 0;
    tblHakAksesLAP_PENJUALAN.Value := 0;
    tblHakAksesLAP_BARANG.Value := 0;
    tblHakAksesLAP_SUPPLIER.Value := 0;
    tblHakAksesLAP_CUSTOMER.Value := 0;
    tblHakAksesBARANG.Value := 0;
    tblHakAksesSUPPLIER.Value := 0;
    tblHakAksesJENIS.Value := 0;
    tblHakAksesSATUAN.Value := 0;
    tblHakAksesCUSTOMER.Value := 0;
    tblHakAksesPENGGUNA.Value := 0;
    tblHakAksesHAK_AKSES.Value := 0;
    tblHakAksesUBAH_PASSWORD.Value := 0;
    tblHakAksesKELUAR.Value := 1;
    tblHakAksesLOGOUT.Value := 1;
  end;
end;

end.
