unit NoDaftar2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, StdCtrls, Grids, dxLayoutControl, cxGroupBox,
  dxSkinsForm, dxLayoutLookAndFeels, StrUtils, cxLabel, Main, DB, MemDS,
  DBAccess, Uni;

type
  TSearchForm = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    dxSkinController1: TdxSkinController;
    cxGroupBox1: TcxGroupBox;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxGroupBox2: TcxGroupBox;
    StringGrid1: TStringGrid;
    editor: TEdit;
    cxLabel2: TcxLabel;
    QCari: TUniQuery;
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure StringGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure StringGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
  var
  nilaiPilih_, nilaiPilih2_ : string;
    { Public declarations }
  end;

var
  SearchForm: TSearchForm;
  nilaiAwal : Integer;
implementation


{$R *.dfm}

procedure TSearchForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TSearchForm.FormCreate(Sender: TObject);
begin
//  StringGrid1.Cells[0,0]:='No Formulir';
//  StringGrid1.Cells[1,0]:='NPWPD';
end;

procedure TSearchForm.StringGrid1DblClick(Sender: TObject);
var
 r : TGridRect;
begin
  r := stringgrid1.Selection;
  nilaiPilih_ := StringGrid1.Cells[0, R.top];
  nilaiPilih2_:= StringGrid1.Cells[1, R.Top];
  modalResult := mrOk;
//  ShowMessage(nilaiPilih_);
end;

procedure TSearchForm.StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var
  txtRect: TRect;
  btnRect: TRect;
  btnState: integer;
  tmpstr, str: string;
  kodewidth: integer;
  tmpRect: TRect;
  focusRect: TRect;
  r: TRect;
  S: string;
  SavedAlign: word;
const
  clPaleGreen = TColor($CCFFCC);
  clPaleRed =   TColor($CCCCFF);
begin
    r := Rect;
    if State = [gdselected] then
    begin

    end else
    begin

    end;

   if editor.Visible then
   begin
      editor.SetFocus;
//      if not edita then editor.SelStart := 1;
   end;

    with (Sender as TStringGrid) do
    begin
    // Don't change color for first Column, first row
//        if (ACol = 0) or (ARow = 0) then
//            Canvas.Brush.Color := $00E1FFF9
//        else
//        begin
          if ACol mod 2 = 0 then
             Canvas.Brush.Color := $00E1FFF9
          else Canvas.Brush.Color := $00FFEBDF;

          case ACol of
          1: Canvas.Font.Color := clBlack;
          2: Canvas.Font.Color := clBlue;
          end;

      // Draw the Band
          if (ARow mod 2 = 0)  then
             Canvas.Brush.Color := $00E1FFF9
          else
             Canvas.Brush.Color := $00FFEBDF;
          Canvas.TextRect(Rect, Rect.Left + 2, Rect.Top + 2, cells[acol, arow]);
          Canvas.FrameRect(Rect);
//        end;
    end;

    with stringgrid1.Canvas do
    begin
        Font.Style := [];
        if (gdSelected in State) then
        begin
            stringgrid1.Canvas.Brush.Color := clRed;
            stringgrid1.Canvas.Font.Color := clYellow;
            with Font do
            begin
                Name := 'Microsoft Sans Serif';
                Size := 11;
                Style := [fsBold];
            end;
        end;

        if (ACol in [0]) then
        begin
//            S := stringgrid1.Cells[ACol, ARow]; // cell contents
//            SavedAlign := SetTextAlign(stringgrid1.Canvas.Handle, TA_Left);
//            stringgrid1.Canvas.TextRect(Rect,
//            Rect.Left + (Rect.Right - Rect.Left) div 2, Rect.Top + 2, S);
//            SetTextAlign(stringgrid1.Canvas.Handle, SavedAlign);
              S := stringgrid1.Cells[ACol, ARow]; // cell contents
              SavedAlign := SetTextAlign(stringgrid1.Canvas.Handle, TA_RIGHT);
              stringgrid1.Canvas.TextRect(Rect,
              Rect.Right - 4 , Rect.Top + 2, S);
              SetTextAlign(stringgrid1.Canvas.Handle, SavedAlign);
            //Drawing selection:
            stringgrid1.ColWidths[0] := 100;
        end;
        if (ACol in [1]) then
        begin
            S := stringgrid1.Cells[ACol, ARow]; // cell contents
            SavedAlign := SetTextAlign(stringgrid1.Canvas.Handle, TA_LEFT);
            stringgrid1.Canvas.TextRect(Rect,
            Rect.Left + 2, Rect.Top + 2, S);
            SetTextAlign(stringgrid1.Canvas.Handle, SavedAlign);
            //Drawing selection:
            stringgrid1.ColWidths[1] := 300;
        end;

//        if ACol in [2,3,4] then
//        begin
//           with stringgrid1 do
//           begin
//              stringgrid1.ColWidths[2] := 100;
//              stringgrid1.ColWidths[3] := 120;
//              stringgrid1.ColWidths[4] := 107;
//
//              S := stringgrid1.Cells[ACol, ARow]; // cell contents
//              SavedAlign := SetTextAlign(stringgrid1.Canvas.Handle, TA_RIGHT);
//              stringgrid1.Canvas.TextRect(Rect,
//              Rect.Right - 4 , Rect.Top + 2, S);
//              SetTextAlign(stringgrid1.Canvas.Handle, SavedAlign);
//           end;
//       end;

        stringgrid1.Canvas.Font.Style := [];
        if gdSelected in State then
        begin
            stringgrid1.Canvas.Brush.Color := clRed;
            stringgrid1.Canvas.Font.Color := clYellow;
            with Font do
            begin
                Name := 'Microsoft Sans Serif';
                Size := 10;
                Style := [fsBold];
                Color := clYellow;
            end;

        end else
        begin
            stringgrid1.Canvas.Brush.Color := clWindow;
            stringgrid1.Canvas.Font.Color := clWindowText;
            with Font do
            begin
              Name := 'Microsoft Sans Serif';
              Size := 10;
              Style := [fsBold];
              Color := clBackground;
            end;
        end;
    end;
end;

procedure TSearchForm.StringGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  r : TGridRect;
  rr : TGridRect;
  i,xx : integer;
  xx_, nilai, nilaiHasil :string;
begin
   if Key = Vk_Return then
   begin
     StringGrid1DblClick(Sender);
   end;
//  if key = VK_RETURN then
//  begin
//    if FPendaftaranForm.statNomer = 1 then
//    Begin
//      i := 1;
//      nilaiAwal := StrToInt(StringGrid1.Cells[0,i]);
//      if StringGrid1.Cells[0,i] <> '' then
//      begin
//        xx:= StrToInt(StringGrid1.Cells[0,i]);
//        if Length(IntToStr(xx)) = 1 then
//        begin
//          xx_ := '000000';
//        end;
//        if Length(IntToStr(xx)) = 2 then
//        begin
//          xx_ := '00000';
//        end;
//        if Length(IntToStr(xx)) = 3 then
//        begin
//          xx_ := '0000';
//        end;
//        if Length(IntToStr(xx)) = 4 then
//        begin
//          xx_ := '000';
//        end;
//        if Length(IntToStr(xx)) = 5 then
//        begin
//          xx_ := '00';
//        end;
//        if Length(IntToStr(xx)) = 6 then
//        begin
//          xx_ := '0';
//        end;
//        if Length(IntToStr(xx)) = 7 then
//        begin
//          xx_ := inttostr(xx);
//        end;
//        StringGrid1.Cells[0,1] := '';
//        repeat
//          StringGrid1.Cells[0,i] := 'F'+Rightstr(FormatDateTime('YYYY', Now),2)+ xx_ +IntToStr(xx);
//          StringGrid1.Cells[0,i] := xx_ +IntToStr(xx);
//          StringGrid1.RowCount := i;
//          Inc(xx);
//          if Length(IntToStr(xx)) = 1 then
//          begin
//            xx_ := '000000';
//          end;
//          if Length(IntToStr(xx)) = 2 then
//          begin
//            xx_ := '00000';
//          end;
//          if Length(IntToStr(xx)) = 3 then
//          begin
//            xx_ := '0000';
//          end;
//          if Length(IntToStr(xx)) = 4 then
//          begin
//            xx_ := '000';
//          end;
//          if Length(IntToStr(xx)) = 5 then
//          begin
//            xx_ := '00';
//          end;
//          if Length(IntToStr(xx)) = 6 then
//          begin
//            xx_ := '0';
//          end;
//          if Length(IntToStr(xx)) = 7 then
//          begin
//            xx_ := inttostr(xx);
//          end;
//          nilaiHasil:= StringGrid1.Cells[0,i];
//          inc(i);
//        until i = 14;
//        StringGrid1.FixedRows := 1;
//        stringgrid1.Options := [goFixedVertLine,goFixedHorzLine,goVertLine,goHorzLine,goRangeSelect];
//      end;
//    end;
//    if FPendaftaranForm.statNomer = 2 then
//    Begin
//      i := 1;
//      nilaiAwal := StrToInt(StringGrid1.Cells[0,i]);
//      if StringGrid1.Cells[0,i] <> '' then
//      begin
//        xx:= StrToInt(StringGrid1.Cells[0,i]);
//        if Length(IntToStr(xx)) = 1 then
//        begin
//          xx_ := '0000';
//        end;
//        if Length(IntToStr(xx)) = 2 then
//        begin
//          xx_ := '000';
//        end;
//        if Length(IntToStr(xx)) = 3 then
//        begin
//          xx_ := '00';
//        end;
//        if Length(IntToStr(xx)) = 4 then
//        begin
//          xx_ := '0';
//        end;
//        if Length(IntToStr(xx)) = 5 then
//        begin
//          xx_ := inttostr(xx);
//        end;
//        StringGrid1.Cells[0,1] := '';
//        repeat
//          StringGrid1.Cells[0,i] := 'F'+Rightstr(FormatDateTime('YYYY', Now),2)+ xx_ +IntToStr(xx);
//          StringGrid1.Cells[0,i] := xx_ +IntToStr(xx);
//          StringGrid1.RowCount := i;
//          Inc(xx);
//          if Length(IntToStr(xx)) = 1 then
//          begin
//            xx_ := '0000';
//          end;
//          if Length(IntToStr(xx)) = 2 then
//          begin
//            xx_ := '000';
//          end;
//          if Length(IntToStr(xx)) = 3 then
//          begin
//            xx_ := '00';
//          end;
//          if Length(IntToStr(xx)) = 4 then
//          begin
//            xx_ := '0';
//          end;
//          if Length(IntToStr(xx)) = 5 then
//          begin
//            xx_ := inttostr(xx);
//          end;
//          nilaiHasil:= StringGrid1.Cells[0,i];
//          inc(i);
//        until i = 14;
//        StringGrid1.FixedRows := 1;
//        stringgrid1.Options := [goFixedVertLine,goFixedHorzLine,goVertLine,goHorzLine,goRangeSelect];
//      end;
//    end;
//  end;
//  if Key = VK_F3 then
//  begin
//    r := stringgrid1.Selection;
//    stringgrid1.Options := [goFixedVertLine,goFixedHorzLine,goVertLine,goHorzLine,goRangeSelect];
//    with r do
//    begin
//        Left := 2;
//        Right:= 2;
//    end;
//    editor.Show;
//  end;
//  if key = vk_UP then
//  begin
//    if FPendaftaranForm.statNomer = 1 then
//    Begin
//      i := 1;
//      nilaiAwal := 0;
//      r := stringgrid1.Selection;
//      nilai := StringGrid1.Cells[0, R.top];
//      nilaiAwal := strtoint(Rightstr(StringGrid1.Cells[0,1],4));
//      if strtoint(Rightstr(nilai,4)) = nilaiAwal then
//      begin
//        nilaiAwal := nilaiAwal -1;
//        xx:= nilaiAwal;
//        if Length(IntToStr(xx)) = 1 then
//        begin
//          xx_ := '000000';
//        end;
//        if Length(IntToStr(xx)) = 2 then
//        begin
//          xx_ := '00000';
//        end;
//        if Length(IntToStr(xx)) = 3 then
//        begin
//          xx_ := '0000';
//        end;
//        if Length(IntToStr(xx)) = 4 then
//        begin
//          xx_ := '000';
//        end;
//        if Length(IntToStr(xx)) = 5 then
//        begin
//          xx_ := '00';
//        end;
//        if Length(IntToStr(xx)) = 6 then
//        begin
//          xx_ := '0';
//        end;
//        if Length(IntToStr(xx)) = 7 then
//        begin
//          xx_ := inttostr(xx);
//        end;
//        StringGrid1.Cells[0,1] := '';
//        repeat
//          StringGrid1.Cells[0,i] := 'F'+Rightstr(FormatDateTime('YYYY', Now),2)+ xx_ +IntToStr(xx);
//          StringGrid1.Cells[0,i] := xx_ +IntToStr(xx);
//          StringGrid1.RowCount := i;
//          Inc(xx);
//          if Length(IntToStr(xx)) = 1 then
//          begin
//            xx_ := '000000';
//          end;
//          if Length(IntToStr(xx)) = 2 then
//          begin
//            xx_ := '00000';
//          end;
//          if Length(IntToStr(xx)) = 3 then
//          begin
//            xx_ := '0000';
//          end;
//          if Length(IntToStr(xx)) = 4 then
//          begin
//            xx_ := '000';
//          end;
//          if Length(IntToStr(xx)) = 5 then
//          begin
//            xx_ := '00';
//          end;
//          if Length(IntToStr(xx)) = 6 then
//          begin
//            xx_ := '0';
//          end;
//          if Length(IntToStr(xx)) = 7 then
//          begin
//            xx_ := inttostr(xx);
//          end;
//          inc(i);
//        until i = 14;
//        StringGrid1.FixedRows := 1;
//        stringgrid1.Options := [goFixedVertLine,goFixedHorzLine,goVertLine,goHorzLine,goRangeSelect];
//      end;
//    End;
//    if FPendaftaranForm.statNomer = 2 then
//    Begin
//      i := 1;
//      nilaiAwal := 0;
//      r := stringgrid1.Selection;
//      nilai := StringGrid1.Cells[0, R.top];
//      nilaiAwal := strtoint(Rightstr(StringGrid1.Cells[0,1],4));
//      if strtoint(Rightstr(nilai,4)) = nilaiAwal then
//      begin
//        nilaiAwal := nilaiAwal -1;
//        xx:= nilaiAwal;
//        if Length(IntToStr(xx)) = 1 then
//        begin
//          xx_ := '0000';
//        end;
//        if Length(IntToStr(xx)) = 2 then
//        begin
//          xx_ := '000';
//        end;
//        if Length(IntToStr(xx)) = 3 then
//        begin
//          xx_ := '00';
//        end;
//        if Length(IntToStr(xx)) = 4 then
//        begin
//          xx_ := '0';
//        end;
//        if Length(IntToStr(xx)) = 5 then
//        begin
//          xx_ := inttostr(xx);
//        end;
//        StringGrid1.Cells[0,1] := '';
//        repeat
//          StringGrid1.Cells[0,i] := 'F'+Rightstr(FormatDateTime('YYYY', Now),2)+ xx_ +IntToStr(xx);
//          StringGrid1.Cells[0,i] := xx_ +IntToStr(xx);
//          StringGrid1.RowCount := i;
//          Inc(xx);
//          if Length(IntToStr(xx)) = 1 then
//          begin
//            xx_ := '0000';
//          end;
//          if Length(IntToStr(xx)) = 2 then
//          begin
//            xx_ := '000';
//          end;
//          if Length(IntToStr(xx)) = 3 then
//          begin
//            xx_ := '00';
//          end;
//          if Length(IntToStr(xx)) = 4 then
//          begin
//            xx_ := '0';
//          end;
//          if Length(IntToStr(xx)) = 5 then
//          begin
//            xx_ := inttostr(xx);
//          end;
//          inc(i);
//        until i = 14;
//        StringGrid1.FixedRows := 1;
//        stringgrid1.Options := [goFixedVertLine,goFixedHorzLine,goVertLine,goHorzLine,goRangeSelect];
//      end;
//    End;
//  end;
//  if key = vk_down then
//  begin
//    if FPendaftaranForm.statNomer = 1 then
//    Begin
//      nilaiAwal := 0;
//      r := stringgrid1.Selection;
//      nilai := StringGrid1.Cells[0, R.top];
//      nilaiAwal := strtoint(Rightstr(StringGrid1.Cells[0,12],4));;
//      i := 1;
//      if strtoint(Rightstr(nilai,4)) = nilaiAwal then
//      begin
//        nilaiAwal := nilaiAwal +1;
//        xx:= nilaiAwal;
//        if Length(IntToStr(xx)) = 1 then
//        begin
//          xx_ := '000000';
//        end;
//        if Length(IntToStr(xx)) = 2 then
//        begin
//          xx_ := '00000';
//        end;
//        if Length(IntToStr(xx)) = 3 then
//        begin
//          xx_ := '0000';
//        end;
//        if Length(IntToStr(xx)) = 4 then
//        begin
//          xx_ := '000';
//        end;
//        if Length(IntToStr(xx)) = 5 then
//        begin
//          xx_ := '00';
//        end;
//        if Length(IntToStr(xx)) = 6 then
//        begin
//          xx_ := '0';
//        end;
//        if Length(IntToStr(xx)) = 7 then
//        begin
//          xx_ := inttostr(xx);
//        end;
//        StringGrid1.Cells[0,1] := '';
//        repeat
//          StringGrid1.Cells[0,i] := 'F'+Rightstr(FormatDateTime('YYYY', Now),2)+ xx_ +IntToStr(xx);
//          StringGrid1.Cells[0,i] :=  xx_ +IntToStr(xx);
//          StringGrid1.RowCount := i;
//          Inc(xx);
//          inc(i);
//        until i = 14;
//        StringGrid1.FixedRows := 1;
//        stringgrid1.Options := [goFixedVertLine,goFixedHorzLine,goVertLine,goHorzLine,goRangeSelect];
//      end;
//    End;
//    if FPendaftaranForm.statNomer = 2 then
//    Begin
//      nilaiAwal := 0;
//      r := stringgrid1.Selection;
//      nilai := StringGrid1.Cells[0, R.top];
//      nilaiAwal := strtoint(Rightstr(StringGrid1.Cells[0,12],4));;
//      i := 1;
//      if strtoint(Rightstr(nilai,4)) = nilaiAwal then
//      begin
//        nilaiAwal := nilaiAwal +1;
//        xx:= nilaiAwal;
//        if Length(IntToStr(xx)) = 1 then
//        begin
//          xx_ := '0000';
//        end;
//        if Length(IntToStr(xx)) = 2 then
//        begin
//          xx_ := '000';
//        end;
//        if Length(IntToStr(xx)) = 3 then
//        begin
//          xx_ := '00';
//        end;
//        if Length(IntToStr(xx)) = 4 then
//        begin
//          xx_ := '0';
//        end;
//        if Length(IntToStr(xx)) = 5 then
//        begin
//          xx_ := inttostr(xx);
//        end;
//        StringGrid1.Cells[0,1] := '';
//        repeat
//          StringGrid1.Cells[0,i] := 'F'+Rightstr(FormatDateTime('YYYY', Now),2)+ xx_ +IntToStr(xx);
//          StringGrid1.Cells[0,i] :=  xx_ +IntToStr(xx);
//          StringGrid1.RowCount := i;
//          Inc(xx);
//          inc(i);
//        until i = 14;
//        StringGrid1.FixedRows := 1;
//        stringgrid1.Options := [goFixedVertLine,goFixedHorzLine,goVertLine,goHorzLine,goRangeSelect];
//      end;
//    End;
//  end;
  if key = VK_ESCAPE  then
  begin
    ModalResult := mrNo;
    self.Close;
  end;
end;

end.
