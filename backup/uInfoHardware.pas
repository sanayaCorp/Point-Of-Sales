unit uInfoHardware;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, icekey, StdCtrls, Buttons, ExtCtrls, eshardwareid, StrUtils  ;

const
  MsgInformation = '信息';

  StrEncStrEmpty = '请输入要加密的字符串。';
  StrDecStrEmpty = '请输入要解密的字符串。';

type
  TFMInfoAplikasi = class(TForm)
    dlgOpen1: TOpenDialog;
    icekey1: Ticekey;
    pnl1: TPanel;
    mmo1: TMemo;
    btn1: TBitBtn;
    btnTrial: TBitBtn;
    edt3: TEdit;
    edt2: TEdit;
    edt1: TEdit;
    lbl1: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl2: TLabel;
    mmo2: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnTrialClick(Sender: TObject);
  private
    { Private declarations }
  public
    statusINformasi : String;
    i :Integer;
    procedure Execute(var HardWareId, HardWareSerial, HardWareVolume : string);
    { Public declarations }
  end;

var
  FMInfoAplikasi: TFMInfoAplikasi;
  HardWareId, HardWareSerial, HardWareVolume : string;
implementation
uses AES;
{$R *.dfm}

procedure TFMInfoAplikasi.Execute(var HardWareId, HardWareSerial, HardWareVolume : string);
begin
  with TFMInfoAplikasi.Create(nil) do
  try
    edt1.Text   := HardWareId;
    edt2.Text   := HardWareSerial;
    edt3.Text   := HardWareVolume;
    ShowModal;
    case ModalResult of
      mrOK :
        begin
          HardWareId      :=edt1.Text;
          HardWareSerial  :=edt2.Text;
          HardWareVolume  :=edt3.text;
        end;
    end;
  finally
    Free;
  end;
end;

procedure TFMInfoAplikasi.FormCreate(Sender: TObject);
var
bdate:string;
begin
  eshardwareid.gethardwareid;
  Caption := Application.Title;
  bdate:=Copy(eshardwareid.Biosdate,1,2) + Copy(eshardwareid.Biosdate,4,2) + Copy(eshardwareid.Biosdate,7,4);
  bdate:=ReverseString(bdate);
  edt1.Text:=eshardwareid.HDDManufactur + '-' + bdate + '-' + eshardwareid.HDDSerialno + '-' + eshardwareid.HDDVSerialno;
  edt2.Text:=eshardwareid.Winusername;
//  edt3.Text:=_connModul.tbSystemversion.Value;
//  if MainForm.xtrial = _connModul.tbSystemTimeTrial.Value then
//  begin
//    btnTrial.Enabled := false;
//  end;
  i := 0
end;

procedure TFMInfoAplikasi.btn1Click(Sender: TObject);
Var
myHardwareID:string;

begin
    myHardwareID      := Trim(edt1.Text);
    myHardwareID      := myHardwareID + Trim(edt2.Text) + Trim(edt3.Text);
//    xkey:=Trim(edt1.Text+edt2.Text+edt3.Text);
//    icekey1.CreateIcekey(myHardwareID);
    mmo2.Lines.Text :=EncryptString(myHardwareID,'');
    if i <> 0 then
     i:=i else
      i := 0;
    if Trim(mmo1.Lines.Text) <> Trim(mmo2.Lines.Text) then
    begin
      Showmessage('Key is Not Accept');
      ModalResult := mrNone;
      inc(i);

    end;
    if Trim(mmo1.Lines.Text) = Trim(mmo2.Lines.Text) then
    begin
      Showmessage('Key is Accept');
      statusINformasi := 'Registrasi';
      Self.Close;
    end;
    if i = 3 then
    begin
      MessageDlg('Maaf Anda Harus Mengaktifkan Program Terlebih Dahulu'#13'Silahkan Smskan HardwareId program Anda, Registration Name dan Program Name Anda'#13'ke No: 082142409686',(mtError),[mbYes],0);
                Application.Terminate;
    end;
end;

procedure TFMInfoAplikasi.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFMInfoAplikasi.btnTrialClick(Sender: TObject);
begin
  statusINformasi := 'Trial';
  Self.Close;
end;

end.
