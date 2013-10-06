unit FormConnection;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask, ActnList, Registry;

type
  TDatabasePromptForm = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    ledDBName: TEdit;
    ledUserID: TEdit;
    ledPass: TEdit;
    ledPort: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Panel2: TPanel;
    Button1: TButton;
    Button2: TButton;
    ActionList1: TActionList;
    taKoneksi: TAction;
    taBatal: TAction;
    ledServerName: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure taKoneksiExecute(Sender: TObject);
    procedure taBatalExecute(Sender: TObject);
  private
    { Private declarations }
  public
    procedure Execute(var ServerName, DatabaseName, userid, password: string; portserver :integer);
    { Public declarations }
  end;

var
  DatabasePromptForm: TDatabasePromptForm;
  reg : TRegistry;
  ServerName, DBName, myUser, myPasword : string;
  portserver : Integer;
implementation

{$R *.dfm}

procedure TDatabasePromptForm.Execute(var ServerName, DatabaseName, userid, password: string; portserver :integer);
begin
  with TDatabasePromptForm.Create(nil) do
  try
    ledServerName.Text := ServerName;
    ledDBName.Text := DatabaseName;
    ledUserId.Text := Userid;
    ledPass.Text  := password;
    ledport.Text := IntToStr(portserver);
    ShowModal;
    case ModalResult of
      mrOK :
        begin
          ServerName:=ledServerName.Text;
          DatabaseName:=ledDBName.Text;
          userId  := leduserid.text;
          password := ledPass.Text;
          portserver := StrToInt(ledPort.Text);
        end;
    end;
  finally
    Free;
  end;
end;

procedure TDatabasePromptForm.FormCreate(Sender: TObject);
begin
  KeyPreview:=True;
end;

procedure TDatabasePromptForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key in [#13,#27] then
  begin
    key := #0;
    PostMessageA(Handle, WM_NEXTDLGCTL, 0,0);
  end;
end;

procedure TDatabasePromptForm.taBatalExecute(Sender: TObject);
begin
  application.Terminate;
end;

procedure TDatabasePromptForm.taKoneksiExecute(Sender: TObject);
begin
  if (ledServerName.Text = '') OR (ledDBName.Text = '') then
  begin
    MessageDlg('You must enter both the server and the database name.', mtWarning, [mbOk],0);
    ModalResult := mrNone;
  end else
  begin
    ModalResult := mrOk;
    Self.hide;
  end;
end;

end.
