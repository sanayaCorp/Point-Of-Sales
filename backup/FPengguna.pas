unit FPengguna;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBActns, ActnList, Buttons, DBCtrls, StdCtrls, Mask, ComCtrls, Pengguna;

type
  TFPenggunaForm = class(TForm)
    tbc1: TTabControl;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    btn1: TSpeedButton;
    btn2: TSpeedButton;
    btn3: TSpeedButton;
    actlst1: TActionList;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    dbcbbLevel: TDBComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPenggunaForm: TFPenggunaForm;

implementation

{$R *.dfm}

procedure TFPenggunaForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := caFree;
end;

end.
