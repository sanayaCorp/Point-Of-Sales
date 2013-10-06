unit uFDatabasePrompt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, StdCtrls, Mask,
  wwdbedit, fcLabel, cxButtons, ComCtrls, ExtCtrls, fcpanel, Registry,
  ZConnection, ZAbstractDataset, ZAbstractRODataset, ZDataset,
  CenterForm;

type
  TDatabasePromptForm = class(TForm)
    fcPanel1: TfcPanel;
    TabControl1: TTabControl;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    fcLabel1: TfcLabel;
    fcLabel2: TfcLabel;
    fcLabel3: TfcLabel;
    fcLabel4: TfcLabel;
    ledservername: TwwDBEdit;
    leddbname: TwwDBEdit;
    ledUserId: TwwDBEdit;
    ledPass: TwwDBEdit;
    MCenterForm1: MCenterForm;
    fcLabel5: TfcLabel;
    leddnsName: TwwDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  
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

var
  zcon :Tzconnection;
  qCon :TZquery;

implementation
//
//uses
//   uLibMedicasoft;

procedure TDatabasePromptForm.Execute(var ServerName, DatabaseName, userid, password: string; portserver :integer);
begin
  with TDatabasePromptForm.Create(nil) do
  try
    ledServerName.Text := ServerName;
    ledDBName.Text := DatabaseName;
    ledUserId.Text := Userid;
    ledPass.Text  := IntToStr(portserver);
    leddnsName.Text := password;
    ShowModal;
    case ModalResult of
      mrOK :
        begin
          ServerName:=ledServerName.Text;
          DatabaseName:=ledDBName.Text;
          userId  := leduserid.text;
          password := leddnsName.Text;
          portserver := StrToInt(ledPass.Text);
        end;
    end;
  finally
    Free;
  end;
end;


{$R *.dfm}

procedure TDatabasePromptForm.FormCreate(Sender: TObject);
begin
  Caption := Application.Title;
  inherited;
end;

procedure TDatabasePromptForm.cxButton2Click(Sender: TObject);

begin
  inherited;
  if (ledServerName.Text = '') OR (ledDBName.Text = '') then
  begin
    MessageDlg('You must enter both the server and the database name.', mtWarning, [mbOk],0);
    ModalResult := mrNone;
  end else
  begin
    Self.Close;
  end;  
end;

procedure TDatabasePromptForm.cxButton1Click(Sender: TObject);
begin
  inherited;
  Application.Terminate;
end;

procedure TDatabasePromptForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
 