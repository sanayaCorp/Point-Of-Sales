unit mylib;

interface
Uses
   Messages,Forms,
   SysUtils, Variants, Classes, Controls,
   CheckLst, DB, commctrl,
   StdCtrls, IniFiles, ExtCtrls,
   Graphics,JPEG, Registry, StrUtils, Windows, ADODB,
   OleDB, ADOInt, ActiveX, ComObj,FormConnection, uInfoHardware, AES, DBGrids,
   Provider, Grids;
type
    MD5Digest   = array[0..15] of Byte;
    MD5State    = array[0..3] of LongWord;
    MD5Buffer   = array[0..63] of Byte;
    TStr15= String[15];

    TMD5 = class
  private
    FState    : MD5State;
    FCount    : Int64;
    FBuffer   : MD5Buffer;

  public
    constructor Create;
    procedure Update(const Input; Length: Cardinal);
    function Final: MD5Digest;
  end;

//================================control DBGrid================================
  procedure FixDBGridColumnsWidth(const DBGrid: TDBGrid);

//================================SQL File======================================
  function EksekusiSQL(machine: TADOQuery; _SQL: string ; cari: Boolean): boolean;
//  function EksekusiSQLmysql(machine: TMyQuery; _SQL: string ; cari: Boolean): boolean;  

//================================Dialog File===================================
  function konfTanya(src: string): boolean;
  procedure konfPeringatan(src: string);
  procedure konfError(src: string);
  procedure konfBerhasil(src: string);

//================================MD5 File======================================
  function MD5Print(const D: MD5Digest): string;
  function ROL(X: LongWord; Count: Integer): LongWord;
  procedure Transform(var State: MD5State; const Block);
  function MD5Message(const Message; Length: Cardinal): MD5Digest;
  function MD5File(const FileName: string): MD5Digest;
  function MD5String(const S: string): MD5Digest;
  function StrToMd5(const strSrc: string): string;
  function enkripsi(src: string): string;
  function dekripsi(src: string): string;
  function Encrypt(const s: String; CryptInt: Integer): String;
  function Decrypt(const s: String; CryptInt: Integer): String;

//================================Windows File==================================
  function  parser(s: string): string;
  procedure tulisFilelogin(login,pass: String);
  Procedure DeleteUserProfile;
  procedure tulisFileLoginPiutang(login,pass: String);
  Procedure DeleteUserProfilePiutang;
  procedure tulisFileLoginpembayaran(login,pass: String);
  Procedure DeleteUserProfilePembayaran;
  procedure tulisFileLoginoperasional(login,pass: String);
  Procedure DeleteUserProfileoperasional;
  procedure tulisFileLoginPasangBaru(login,pass: String);
  Procedure DeleteUserProfilePasangBaru;
  Function GetUserFromWindows: string;
  function GetComputerNetName: string;
  function SetComputerName(AComputerName: string): Boolean;
  procedure FormatDate();
//  function CreateMutex(lpMutexAttributes: PSecurityAttributes; bInitialOwner: BOOL; lpName: PChar): THandle;

//================================Untuk Editing Or Inserting====================
  function awalInput : String;
  function awal:String;
  function nexttgl(xtgl: TDateTime) : TDateTime;
  function prevtgl(xtgl: TDateTime) : TDateTime;
  function ambilkoma(s : string) : string;
  function buangkoma(s : string) : string;
  function spasikanan(s:string;i:integer):string;
  function nolkanan(s:string;i:integer):string;
  function nolkiri(s:string;i:integer):string;
  function HilangSpasiKanan(s:string) : string;
  function hilangnol(s:string): string;
  function HilangkannolKanan(s:string) : string;
  function DateForSQL(const date : TDateTime;statyear:Boolean) : string;
  function DatetimeForSql(const date : TDateTime): string;
  function DeleteSpaces(Str: string): string;
  function isStrANumber(const s: string): Boolean;
  procedure eliminatetitik(var s:string);
  function HilangTitikKanan(s:string) : string;
  function buangTitik(s : string) : string;
  function ambiltitik(s : string) : string;
  function cekTanggal(dp: TDateTime): String;
  function cekTanggaltime(dp: TDateTime): String;
  function ConvertToNumber(s: string): double;
  procedure tampiltogrid(s:TStringGrid; t:TADOQuery;title,s1:array of string);
  procedure AutoSizeCol(Grid: TStringGrid; Column: integer);
  function MyTerbilang(Bilangan:Double):String;
  Function noltrim (x:TStr15):string;
  function saysat(sat:TStr15):string;
  function saypul(pul : TStr15) : STRING;
  function sayrat(rat : TStr15) : string;
  function sayribu(ribu : TStr15) : string;
  function sayjuta(juta : TStr15) : string;
  function saymill(mill : TStr15) : string;
  function saytril(tril : TStr15) : string;

//================================Koneksi Database==============================
  function DBConnectMasterMysql : string;
  function DBConnectMasterMSSQLFarmasi : string;
  function DBConnectMasterMSSQLHIS : string;
  function CekMysqlSetting :string;
  function CekMysql:Boolean;

//================================Information Hardware==========================
  function GetHardDiskSerial(const DriveLetter: char): string;
  procedure tulisinformasiHardware(hardid,hardserial,hardvolume: String);
  function cekHardwareId : string;
  function cekstatusTrial : Boolean;

//================================handle Kode Automatic=========================
  function  buatNotransaksi(xtgl:TDatetime;KdGudang, kdInst: string): string;
  function  buatUrut(notran, kdGudang :string): integer;
  function buatNoRef(notran, kdGudang :string): string;

//================================Handle CRUD Table=============================
  function dbTambah(machine: TADOQuery; nmTabel: string ; slField,slValue: TStringList): boolean;
  function dbUpdate(machine: TADOQuery; fPrimary,sPrimary,nmTabel: string ; slField,slValue: TStringList): boolean;
  function dbHapus(machine: TADOQuery; nmTabel,fPrimary1,fPrimary2,sPrimary1,sPrimary2: string): boolean;
//  function dbTambahmysql(machine: Tmyquery; nmTabel: string ; slField,slValue: TStringList): boolean;
//  function dbUpdatemysql(machine: Tmyquery; fPrimary,sPrimary,nmTabel: string ; slField,slValue: TStringList): boolean;
//  function dbHapusmysql(machine: Tmyquery; nmTabel,fPrimary1,fPrimary2,sPrimary1,sPrimary2: string): boolean;
//  function dbUpdatemysqlII(machine: Tmyquery; fPrimary,fPrimary1,fPrimary2,sPrimary,sPrimary1,sPrimary2,nmTabel: string ; slField,slValue: TStringList): boolean;
  function dbUpdatemysqlIII(machine: TADOQuery; fPrimary,fPrimary1,fPrimary2,sPrimary,sPrimary1,sPrimary2,nmTabel: string ; slField,slValue: TStringList): boolean;

//================================Backup Data===================================
//  procedure ExecBackupRestoreMySQL(Jenis,User,Pass: String);
  function DoExecute(FileName: String; Visibility:Integer): CARDINAL;
  procedure BuatBatch(NamaFile,PathFile,Isi: String);
  
const
  abjad1 = 'zabcdefghij6789012345&*)(-_|\><.,?/;:~`!@#$%^&*KLMNOPQRSTUVWXYZABCDEFGHIJklmnopqrstuvwxy';
  abjad2 = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789~`!@#$%^&*()_-+=|\<>,.?/:;';
  sOK = #13#10'OK'#13#10;
  sERROR ='ERROR';
  PETIK : char = '''';
  sSYS = 'smartvision.SYS';
  tglakhirbln : array[1..12] of integer = (31,28,31,30,31,30,31,31,30,31,30,31);
  days        : array[1..7] of integer  = (1, 2, 3, 4, 5, 6, 7);
  NL : ARRAY[0..9] OF STRING[8]
           = ( '','Satu','Dua','Tiga','Empat','Lima','Enam','Tujuh',
               'Delapan','Sembilan');
var
  MyiniFile            :  TIniFile;
  ServerName, DBName, myUser, myPasword, su, pa, _SQL, hdVolume, hdId, hdSerial, cuser, cpass : string;
  port         : Integer;
  statusTransaksi : Boolean;
  Reg             : TRegistry;
implementation

//  function CreateMutex(lpMutexAttributes: PSecurityAttributes; bInitialOwner: BOOL; lpName: PChar): THandle;
//  begin
//    Result := _CreateMutex(lpMutexAttributes, Integer(Boolean(bInitialOwner)), lpName);
//  end;

  procedure BuatBatch(NamaFile,PathFile,Isi: String);
  var
      OutputFile : TextFile;
  begin
      AssignFile (OutputFile, PathFile + NamaFile);

      if FileExists(PathFile + NamaFile) then
          //Kalau filenya sudah ada ditambahkan dibawahnya
          Append(OutPutFile)
      else
          //Kalau filenya belum ada dibuat dulu filenya
          Rewrite (OutputFile);
      try
          Writeln (OutputFile, Isi);
      finally
        CloseFile (OutputFile);
      end;
  end;

  function DoExecute(FileName: String; Visibility:Integer): CARDINAL;
  var
      AName     : array[0..512] of char;
      CurrentDir  : array[0..512] of char;
      WorkDir     : String;
      StartUpInfo : TStartupInfo;
      ProcessInfo : TProcessInformation;
  begin
      StrPCopy(AName, FileName);
      GetDir(0,WorkDir);
      StrPCopy(CurrentDir, WorkDir);
      FillChar(StartupInfo, SizeOf(StartupInfo),#0);
      StartupInfo.cb := System.SizeOf(StartupInfo);
      StartupInfo.dwFlags := STARTF_USESHOWWINDOW;
      StartupInfo.wShowWindow := Visibility;

      if (not CreateProcess(nil,AName,nil,nil,false,CREATE_NEW_CONSOLE or
        NORMAL_PRIORITY_CLASS,nil,CurrentDir,StartupInfo,ProcessInfo)) then
      begin
          Result := $FFFFFFFF;
          MessageBox(
             Application.Handle,
             PCHAR('Kesalahan ExecuteAndWait ' + #13#10 +
             SysErrorMessage(GetLastError)),'Kesalahan',0)
      end else
      begin
          try
          WaitforSingleObject(ProcessInfo.hProcess, INFINITE);
          GetExitCodeProcess(ProcessInfo.hProcess,Result);
          CloseHandle(ProcessInfo.hProcess);
          CloseHandle(ProcessInfo.hThread);
          except
//            On E:Exception do ShowMessage(E.Message);
            konfError('Terjadi Kesalahan');
            Abort;
          end;
      end;
  end;

  Function noltrim (x:TStr15):string;
  begin
    if (x[0] <> #0) then
       while (x[1] = '0') and (x[0] <> #0) do
             delete (x,1,1);
       noltrim := x;
  end;

  function saysat(sat:TStr15):string;
  var angka,i : integer;
  begin
    if sat[1]='0' then saysat := '' else
    begin
      val(sat[1],angka,i);
      saysat := nl[angka]+' '
    end;
  end;

  function saypul(pul : TStr15) : STRING;
  begin
    if pul[1] = '1' then
    begin
      if pul[2] = '1' then saypul := 'Sebelas ' else
      if pul[2] = '0' then saypul := 'Sepuluh ' else
         saypul := saysat(pul[2])+'Belas '
    end else
    if pul[1] in['2'..'9'] then
       saypul := saysat(pul[1])+'Puluh '+ saysat(pul[2])
    else saypul := saysat(pul[2]);
  end;

  function sayrat(rat : TStr15) : string;
  begin
    if rat[1] = '1' then
       sayrat := 'Seratus '+ saypul(rat[2]+rat[3]) else
    if rat[1] in['2'..'9'] then
       sayrat := saysat(rat[1])+'Ratus '+ saypul(rat[2]+rat[3])
    else sayrat := saypul(rat[2]+rat[3]);
  end;

  function sayribu(ribu : TStr15) : string;
  var a,b : TStr15;
  begin
    ribu := nolkiri(ribu,6);
    a := copy(ribu,1,3);
    b := copy(ribu,4,3);
    if (length(noltrim(a)) = 1) and (a[3] = '1') then
       sayribu := 'Seribu '+ sayrat(b) else
    if length(noltrim(a)) <> 0 then
       sayribu := sayrat(a)+'Ribu '+ sayrat(b)
    else sayribu := sayrat(b);
  end;

  function sayjuta(juta : TStr15) : string;
  var a,b : TStr15;
  begin
    juta := nolkiri(juta,9);
    a := copy(juta,1,3);
    b := copy(juta,4,6);
    if length(noltrim(a)) <> 0 then
       sayjuta :=  sayrat(a)+'Juta '+sayribu(b)
    else sayjuta := sayribu(b);
  end;

  function saymill(mill : TStr15) : string;
  var a,b : TStr15;
  begin
    mill := nolkiri(mill,12);
    a := copy(mill,1,3);
    b := copy(mill,4,9);
    if length(noltrim(a)) <> 0 then
       saymill :=  sayrat(a)+'Milyar '+sayjuta(b)
    else saymill := sayjuta(b);
  end;

  function saytril(tril : TStr15) : string;
  var a,b : TStr15;
  begin
    tril := nolkiri(tril,15);
    a := copy(tril,1,3);
    b := copy(tril,4,12);
    if length(noltrim(a)) <> 0 then
       saytril :=  sayrat(a)+'Trillyun '+saymill(b)
    else saytril :=  saymill(b);
  end;

  function MyTerbilang;
  var
     a, b, x, y, Induk, Koma, TI, TK, Tanda: String;
      c,d,e,f : Integer;
     bilText:String;
  begin
  //Inisialisasi
    c:=0;
    BilText := FloatToStr(bilangan);
    x:=  bilText;
    y:=x;
    TI:='';
    TK:='';
    Tanda:='';
  //Mencari titik lalu memisahkan keduanya--
    if pos('.',BilText)>0 then
    begin
       while pos('.',y)>0 do
         delete(y,1,1);
         f:=Length(y);
       while pos('.',x)>0 do
         delete(x,pos('.',x),f+1);
       Induk:=x;
       Koma:=y;
       Tanda :='Koma ';
    end
  //Mencari komalalu memisahkan keduanya----
    else
      if pos(',',BilText)>0 then
      begin
       while pos(',',y)>0 do
         delete(y,1,1);
         f:=Length(y);
       while pos(',',x)>0 do
         delete(x,pos(',',x),f+1);
       Induk:=x;
       Koma:=y;
       Tanda:='Koma ';
      end;
  //Menulis Angka Induk----------------------
     case length(x) of
     0      : TI   := '';
     1      : Begin
                if x='0' then TI:='Nol' else
                TI   := saysat(x);
              End;
     2      : TI:= saypul(x);
     3      : TI:= sayrat(x);
     4..6   : TI:= sayribu(x);
     7..9   : TI:= sayjuta(x);
     10..12 : TI:= saymill(x);
     13..15 : TI:= saytril(x);
     end;
  //Menulis angka koma------------------------
    for d:=0 to (Length(Koma)-1) do
    begin
       c:=c+1;
       a:=Copy(Koma,c,1);
       e:=StrToInt(a);
       Case e of
       0 : b:='Nol ';
       1 : b:='Satu ';
       2 : b:='Dua ';
       3 : b:='Tiga ';
       4 : b:='Empat ';
       5 : b:='Lima ';
       6 : b:='Enam ';
       7 : b:='Tujuh ';
       8 : b:='Delapan ';
       9 : b:='Sembilan ';
       end;
       TK:=TK+b;
    end;
  //Tulis Semuanya-----------------------
  MyTerbilang:=TI+Tanda+TK;
  end;


  procedure AutoSizeCol(Grid: TStringGrid; Column: integer);
  var
    i, W, WMax: integer;
  begin
    WMax := 0;
    for i := 0 to (Grid.RowCount - 1) do begin
      W := Grid.Canvas.TextWidth(Grid.Cells[Column, i]);
      if W > WMax then
        WMax := W;
    end;
    if wMax > 50 then Grid.ColWidths[Column] := WMax + 5 else Grid.ColWidths[Column] := 55;
  end;

  procedure tampiltogrid(s:TStringGrid;t:TADOQuery;title,s1:array of string);
  var i : integer;
  begin
    s.ColCount := length(s1);
    if t.RecordCount <> 0 then s.RowCount := t.RecordCount + 1 else
    begin
      s.RowCount :=2;
      for i := 0 to s.ColCount do
      s.Cells[i,1] := '';
    end;
    while not t.Eof do
    begin
      for i := 0 to length(s1) -1 do
      begin
         s.Cells[i,t.RecNo] := t.fieldByName(s1[i]).AsString;
      end;
      t.Next;
    end;
    for i := 0 to length(title) -1 do
    begin
      s.Cells[i,0] := title[i];
      AutoSizeCol(s,i);
    end;
  end;

  function HilangkannolKanan(s:string) : string;
  var s1 : string;
      i : Integer;
  begin
     s1 := s;
     i := Length(s);
     while i > 0 do
     begin
       if s[i] <> '0' then Break;
       i := i - 1;
     end;
     s1 := LeftStr(s,i);
     Result := s1;
  end;

  function nolkanan(s:string;i:integer):string;
  var a : integer;
      s1 : string;
  begin
     a := i - length(s);
     s1 := s;
     if a > 0 then
     begin
        while a > 0 do
        begin
          a := a - 1;
          s1 := s1+ '0';
        end;
     end;
     Result := s1;
  end;

  procedure FormatDate();
  begin
    DateSeparator := '/';
    ShortDateFormat := 'dd/mm/yyyy';
    LongDateFormat  := 'dddd, dd/mmm/yyyy';
    SetLocaleInfo(LOCALE_USER_DEFAULT,LOCALE_SSHORTDATE,
    'dd/MM/yyyy');

    ShortDayNames[1] := 'Aha';
    ShortDayNames[2] := 'Sen';
    ShortDayNames[3] := 'Sel';
    ShortDayNames[4] := 'Rab';
    ShortDayNames[5] := 'Kam';
    ShortDayNames[6] := 'Jum';
    ShortDayNames[7] := 'Sab';

    LongDayNames[1] := 'Ahad';
    LongDayNames[2] := 'Senin';
    LongDayNames[3] := 'Selasa';
    LongDayNames[4] := 'Rabu';
    LongDayNames[5] := 'Kamis';
    LongDayNames[6] := 'Jumat';
    LongDayNames[7] := 'Sabtu';

    LongMonthNames[1]  := 'Januari';
    LongMonthNames[2]  := 'Februari';
    LongMonthNames[3]  := 'Maret';
    LongMonthNames[4]  := 'April';
    LongMonthNames[5]  := 'Mei';
    LongMonthNames[6]  := 'Juni';
    LongMonthNames[7]  := 'Juli';
    LongMonthNames[8]  := 'Agustus';
    LongMonthNames[9]  := 'September';
    LongMonthNames[10] := 'Oktober';
    LongMonthNames[11] := 'November';
    LongMonthNames[12] := 'Desember';

    NegCurrFormat	     := 0;
    ThousandSeparator  := '.';
    DecimalSeparator   := ',';
    CurrencyDecimals   := 2;
  end;

//  function dbTambahmysql(machine: TMyQuery; nmTabel:string; slField,slValue: TStringList): boolean;
//  var sField,sValue: string;
//      iField,iValue: integer;
//     _SQL: string;
//  begin
//    //definisikan perintah awal SQL
//    //INSERT INTO barang VALUES('tes1','tes2')
//    _SQL:='INSERT INTO ' + nmTabel + '(';
//    //definisikan per stringlist
//    //untuk nama field
//    for iField:=0 to slField.Count - 1 do
//    begin
//        sField := sField + slField[iField];
//      sField := sField + ',';
//    end;
//    sField:=Copy(sField,0,Length(sField) -1)+')VALUES(';
//
//  //untuk nama value
//    for iValue:=0 to slValue.Count - 1 do
//    begin
//      sValue := sValue + '''' + slValue[iValue] + '''';
//      sValue := sValue + ',';
//    end;
//    sValue:=Copy(sValue,0,Length(sValue) - 1) + ')';
//    _SQL:=_SQL + sField + sValue;
////    MessageBox(0,PChar(_SQL),'Retno',MB_OK);
//  //  konfPeringatan(_SQL);
//    result:=EksekusiSQLmysql(machine,_SQL,False);
//  end;
//
//  function dbUpdatemysql(machine: TMyQuery ; fPrimary,sPrimary,nmTabel: string ; slField,slValue: TStringList): boolean;
//  var
//    _SQL,s: string;
//    i     : integer;
//  begin
//  //UPDATE nama_tabel set nmfield1 = 'isivalue1', nmfield2 = 'isivalue2'  WHERE primarykey = 'isi'
//    _SQL:='UPDATE ' + nmTabel + ' SET ';
//    for i:=0 to slField.Count - 1 do
//    begin
//      try
//        s := s + slField[i] + '="' + slValue[i] + '",';
//      except
//      end;
//    end;
//    s     :=Copy(s,0,Length(s) - 1);
//    _SQL  :=_SQL + s + ' WHERE ' + fPrimary + ' = "' + sPrimary + '"';
//  //  konfError('Wakakakaak...ye..ye...yeee.yeeeee...gak bisa diubah!!!');
//  //  abort;
//    result:=EksekusiSQLmysql(machine,_SQL,false);
//
//  end;
//
//  function dbUpdatemysqlII(machine: Tmyquery; fPrimary,fPrimary1,fPrimary2,sPrimary,sPrimary1,sPrimary2,nmTabel: string ; slField,slValue: TStringList): boolean;
//  var
//    _SQL,s: string;
//    i     : integer;
//  begin
//  //UPDATE nama_tabel set nmfield1 = 'isivalue1', nmfield2 = 'isivalue2'  WHERE primarykey = 'isi'
//    _SQL:='UPDATE ' + nmTabel + ' SET ';
//    for i:=0 to slField.Count - 1 do
//    begin
//      try
//        s := s + slField[i] + '="' + slValue[i] + '",';
//      except
//      end;
//    end;
//    s     :=Copy(s,0,Length(s) - 1);
//    _SQL  :=_SQL + s + ' WHERE ' + fPrimary + ' = "' + sPrimary + '" and ' + fprimary1 + ' = "' + sprimary1 + '" and ' + fprimary2 + ' = "' + sprimary2 + '"';
//  //  konfError('Wakakakaak...ye..ye...yeee.yeeeee...gak bisa diubah!!!');
//  //  abort;
////    MessageBox(0,PChar(_SQL),'Retno',MB_OK);
//    result:=EksekusiSQLmysql(machine,_SQL,false);
//
//  end;

  function dbUpdatemysqlIII(machine: TADOQuery; fPrimary,fPrimary1,fPrimary2,sPrimary,sPrimary1,sPrimary2,nmTabel: string ; slField,slValue: TStringList): boolean;
  var
    _SQL,s: string;
    i     : integer;
  begin
  //UPDATE nama_tabel set nmfield1 = 'isivalue1', nmfield2 = 'isivalue2'  WHERE primarykey = 'isi'
    _SQL:='UPDATE ' + nmTabel + ' SET ';
    for i:=0 to slField.Count - 1 do
    begin
      try
        s := s + slField[i] + '="' + slValue[i] + '",';
      except
      end;
    end;
    s     :=Copy(s,0,Length(s) - 1);
    _SQL  :=_SQL + s + ' WHERE ' + fPrimary + ' = "' + sPrimary + '" and ' + fprimary1 + ' = "' + sprimary1 + '" and ' + fprimary2 + ' = "' + sprimary2 + '"';
  //  konfError('Wakakakaak...ye..ye...yeee.yeeeee...gak bisa diubah!!!');
  //  abort;
    MessageBox(0,PChar(_SQL),'Retno',MB_OK);
    result:=EksekusiSQL(machine,_SQL,false);

  end;

//  function dbHapusmysql(machine: TMyQuery ; nmTabel,fPrimary1,fPrimary2,sPrimary1,sPrimary2: string): boolean;
//  var
//    _SQL: string;
//  begin
//    if Trim(fPrimary2) = '' then
//      _SQL:='DELETE FROM ' + nmTabel + ' WHERE ' + fPrimary1 + '=''' + sPrimary1 + ''''
//    else
//      _SQL:='DELETE FROM ' + nmTabel + ' WHERE ' + fPrimary1 + '=''' + sPrimary1 + ''' AND ' + fPrimary2 + '=''' + sPrimary2 + '''';
//
//    result:=EksekusiSQLmysql(machine,_SQL,False);
//  end;

  function buatNoRef(notran, kdGudang :string): string;
  var
    con      : TADOConnection;
    queri    : TADOQuery;
    su,hs    : string;
    x        : integer;
    hr,bl,th : integer;
    tglsem   : string;
  begin

    con := TADOConnection.Create(nil);
    con.Close;
    con.ConnectionString := DBConnectMasterMSSQLfarmasi;
    con.LoginPrompt := False;
    con.Open;

    queri := TADOQuery.Create(nil);
    Queri.Connection := con;

    _Sql := ' Select ISNull(max(right(no_urut,3)),''000'') as Nourut'+
            ' from '+
            ' rs_bedahfarmasi.dbo.penytranDetail where no_tran like '''+notran+'%'' and kd_gud = '''+KdGudang+''' order by notran Asc';
    EksekusiSQL(Queri,_sql, true);
    if not Queri.IsEmpty then
    begin
       if queri.RecordCount = 0 then
       begin
          su      := '1';
          Result  := su;
       end else
       begin
          Queri.Last;
          x   := StrToInt(queri.Fields[0].AsString);
          Inc(x);
          hs  := nolkiri(inttostr(x),3);
          su  := hs;
          Result  := su;
       end;
    end;
  end;

  function buatUrut(notran, kdGudang :string): integer;
  var
    con      : TADOConnection;
    queri    : TADOQuery;
    su       : integer;
    hs       : string;
    x        : integer;
    hr,bl,th : integer;
    tglsem   : string;
  begin

    con := TADOConnection.Create(nil);
    con.Close;
    con.ConnectionString := DBConnectMasterMSSQLfarmasi;
    con.LoginPrompt := False;
    con.Open;

    queri := TADOQuery.Create(nil);
    Queri.Connection := con;

    _Sql := ' Select ISNull(max(right(no_urut,3)),''000'') as Nourut'+
            ' from '+
            ' rs_bedahfarmasi.dbo.penytranDetail where no_tran like '''+notran+'%'' and kd_gud = '''+KdGudang+''' order by nourut Asc';
    EksekusiSQL(Queri,_sql, true);
    if not Queri.IsEmpty then
    begin
       if queri.RecordCount = 0 then
       begin
          su      := 1;
          Result  := su;
       end else
       begin
//          Queri.Last;
          x   := StrToInt(queri.Fields[0].AsString);
//          hs  := nolkiri(inttostr(x),3);
          su  := x + 1;
          Result  := su;
       end;
    end;
  end;

  function dbTambah(machine: TADOQuery; nmTabel:string; slField,slValue: TStringList): boolean;
  var sField,sValue: string;
      iField,iValue: integer;
     _SQL: string;
  begin
    //definisikan perintah awal SQL
    //INSERT INTO barang VALUES('tes1','tes2')
    _SQL:='INSERT INTO ' + nmTabel + '(';
    //definisikan per stringlist
    //untuk nama field
    for iField:=0 to slField.Count - 1 do
    begin
        sField := sField + slField[iField];
      sField := sField + ',';
    end;
    sField:=Copy(sField,0,Length(sField) -1)+')VALUES(';

  //untuk nama value
    for iValue:=0 to slValue.Count - 1 do
    begin
      sValue := sValue + '''' + slValue[iValue] + '''';
      sValue := sValue + ',';
    end;
    sValue:=Copy(sValue,0,Length(sValue) - 1) + ')';
    _SQL:=_SQL + sField + sValue;
//    MessageBox(0,PChar(_SQL),'Retno',MB_OK);
  //  konfPeringatan(_SQL);
    result:=EksekusiSQL(machine,_SQL,False);
  end;

  function dbUpdate(machine: TADOQuery ; fPrimary,sPrimary,nmTabel: string ; slField,slValue: TStringList): boolean;
  var
    _SQL,s: string;
    i     : integer;
  begin
  //UPDATE nama_tabel set nmfield1 = 'isivalue1', nmfield2 = 'isivalue2'  WHERE primarykey = 'isi'
    _SQL:='UPDATE ' + nmTabel + ' SET ';
    for i:=0 to slField.Count - 1 do
    begin
      try
        s := s + slField[i] + '="' + slValue[i] + '",';
      except
      end;
    end;
    s     :=Copy(s,0,Length(s) - 1);
    _SQL  :=_SQL + s + ' WHERE ' + fPrimary + ' = "' + sPrimary + '"';
  //  konfError('Wakakakaak...ye..ye...yeee.yeeeee...gak bisa diubah!!!');
  //  abort;
    result:=EksekusiSQL(machine,_SQL,false);

  end;

  function dbHapus(machine: TADOQuery ; nmTabel,fPrimary1,fPrimary2,sPrimary1,sPrimary2: string): boolean;
  var
    _SQL: string;
  begin
    if Trim(fPrimary2) = '' then
      _SQL:='DELETE FROM ' + nmTabel + ' WHERE ' + fPrimary1 + '=''' + sPrimary1 + ''''
    else
      _SQL:='DELETE FROM ' + nmTabel + ' WHERE ' + fPrimary1 + '=''' + sPrimary1 + ''' AND ' + fPrimary2 + '=''' + sPrimary2 + '''';

    result:=EksekusiSQL(machine,_SQL,False);
  end;

  function DBConnectMasterMSSQLHIS : string;
  Const
  sSYS = 'RevisoftHIS.SYS';
  var
    conStr, constrencrypt : string;
    ServerName, DBName, myUser, myPasword : string;
    port : Integer;
    F: TextFile;
    DatabasePromptForm :  TDatabasePromptForm;
  begin
    if FileExists(ExtractFilePath(ParamStr(0))+sSYS) then
    begin
      AssignFile(F,ExtractFilePath(ParamStr(0))+sSYS);
      Reset(F);
      Readln(F,conStr);
      CloseFile(F);
      conStr := DecryptString(conStr,'');
    end else
    begin
       DatabasePromptForm := TDatabasePromptForm.Create(nil);
       DatabasePromptForm.Caption := 'KONEKSI DATABASE SYSTEM';
       DatabasePromptForm.ShowModal;

       ServerName := DatabasePromptForm.ledservername.Text;
       myUser     := DatabasePromptForm.ledUserId.Text;
       myPasword  := DatabasePromptForm.ledPass.text;
       DBName     := DatabasePromptForm.leddbname.Text;
//       port       := StrToInt(DatabasePromptForm.ledPass.Text);


         conStr       := 'Provider=sqloledb.1;'+
                         'Persist Security Info=True;'+
                         'Data Source=' + ServerName + ';' +
                         'User Id=' + myUser + ';' +
                         'Password=' + myPasword + ';' +
                         'Initial Catalog=' +DBName + ';"';


       conStr :=EncryptString(conStr,'');
       AssignFile(F,ExtractFilePath(ParamStr(0))+sSYS);
       Rewrite(F);
       Writeln(F,conStr);
       CloseFile(F);
       DatabasePromptForm.Free;
       constr := DecryptString(constr,'');
    end;
    Result        := constr;
  end; //DBConnect

  function DBConnectMasterMSSQLfarmasi : string;
  var
    conStr, constrencrypt : string;
    ServerName, DBName, myUser, myPasword : string;
    port : Integer;
    F: TextFile;
    DatabasePromptForm :  TDatabasePromptForm;
  begin
    if FileExists(ExtractFilePath(ParamStr(0))+sSYS) then
    begin
      AssignFile(F,ExtractFilePath(ParamStr(0))+sSYS);
      Reset(F);
      Readln(F,conStr);
      CloseFile(F);
      conStr := DecryptString(conStr,'');
    end else
    begin
       DatabasePromptForm := TDatabasePromptForm.Create(nil);
       DatabasePromptForm.Caption := 'KONEKSI DATABASE SYSTEM';
       DatabasePromptForm.ShowModal;

       ServerName := DatabasePromptForm.ledservername.Text;
       myUser     := DatabasePromptForm.ledUserId.Text;
       myPasword  := DatabasePromptForm.ledPass.text;
       DBName     := DatabasePromptForm.leddbname.Text;
//       port       := StrToInt(DatabasePromptForm.ledPass.Text);


         conStr       := 'Provider=sqloledb.1;'+
                         'Persist Security Info=True;'+
                         'Data Source=' + ServerName + ';' +
                         'User Id=' + myUser + ';' +
                         'Password=' + myPasword + ';' +
                         'Initial Catalog=' +DBName + ';"';


       conStr :=EncryptString(conStr,'');
       AssignFile(F,ExtractFilePath(ParamStr(0))+sSYS);
       Rewrite(F);
       Writeln(F,conStr);
       CloseFile(F);
       DatabasePromptForm.Free;
       constr := DecryptString(constr,'');
    end;
    Result        := constr;
  end; //DBConnect

  function  buatNotransaksi(xtgl:TDatetime;KdGudang, kdInst: string): string;
  var
    con      : TADOConnection;
    queri    : TADOQuery;
    su,hs    : string;
    x        : integer;
    hr,bl,th : integer;
    tglsem   : string;
  begin
    hr    := strtoint(copy(DateToStr(xtgl),1,2));
    bl    := strtoint(copy(DateToStr(xtgl),4,2));
    th    := strtoint(copy(DateToStr(xtgl),9,2));

    tglsem:= IntToStr(th) + nolkiri(IntToStr(bl),2);

    con := TADOConnection.Create(nil);
    con.Close;
    con.ConnectionString := DBConnectMasterMSSQLFarmasi;
    con.LoginPrompt := False;
    con.Open;

    queri := TADOQuery.Create(nil);
    Queri.Connection := con;

    _Sql := ' Select ISNull(max(right(no_tran,6)),''0000000000'') as Notran'+
                      ' from '+
                      ' rs_bedahfarmasi.dbo.penytran where no_tran like '''+tglsem+'%'' and kd_gud = '''+KdGudang+''' and kd_Inst = '''+kdInst+''' order by notran Asc';
//        MessageBox(0,PChar(_sql),'Retno',MB_OK);
    EksekusiSQL(Queri,_Sql, true);
    if not Queri.IsEmpty then
    begin
       if queri.RecordCount = 0 then
       begin
          su      := tglsem +'000001';
          Result  := su;
       end else
       begin
          Queri.Last;
          x   := StrToInt(copy(queri.Fields[0].AsString,6,10));
          Inc(x);
          hs  := nolkiri(inttostr(x),6);
          su  := tglsem + hs;
          Result  := su;
       end;
    end;
  end;
  
  procedure FixDBGridColumnsWidth(const DBGrid: TDBGrid);
  var
    i : integer;
    TotWidth : integer;
    VarWidth : integer;
    ResizableColumnCount : integer;
    AColumn : TColumn;
  begin
    //total width of all columns before resize
    TotWidth := 0;
    //how to divide any extra space in the grid
    VarWidth := 0;
    //how many columns need to be auto-resized
    ResizableColumnCount := 0;

    for i := 0 to -1 + DBGrid.Columns.Count do
    begin
      TotWidth := TotWidth + DBGrid.Columns[i].Width;
      if DBGrid.Columns[i].Field.Tag <> 0 then
        Inc(ResizableColumnCount);
    end;

    //add 1px for the column separator line
    if dgColLines in DBGrid.Options then
      TotWidth := TotWidth + DBGrid.Columns.Count;

    //add indicator column width
    if dgIndicator in DBGrid.Options then
      TotWidth := TotWidth + IndicatorWidth;

    //width vale "left"
    VarWidth :=  DBGrid.ClientWidth - TotWidth;

    //Equally distribute VarWidth
    //to all auto-resizable columns
    if ResizableColumnCount > 0 then
      VarWidth := varWidth div ResizableColumnCount;

    for i := 0 to -1 + DBGrid.Columns.Count do
    begin
      AColumn := DBGrid.Columns[i];
      if AColumn.Field.Tag <> 0 then
      begin
        AColumn.Width := AColumn.Width + VarWidth;
        if AColumn.Width < AColumn.Field.Tag then
          AColumn.Width := AColumn.Field.Tag;
      end;
    end;
  end; (*FixDBGridColumnsWidth*)

  function ConvertToNumber(s: string): double;
  var
    lNumber: string;
  begin
    lNumber := s;
    lNumber := AnsiReplaceStr(lNumber, CurrencyString, '');
    lNumber := AnsiReplaceStr(lNumber, ThousandSeparator, '');
    try
      Result := StrToFloat(Trim(lNumber));
    except
      Result := 0;
    end;
  end;

  function SetComputerName(AComputerName: string): Boolean;
  var
    ComputerName: array[0..MAX_COMPUTERNAME_LENGTH + 1] of Char;
    Size: Cardinal;
  begin
    StrPCopy(ComputerName, AComputerName);
    Result := Windows.SetComputerName(ComputerName);
  end;

  function GetComputerNetName: string;
  var
    buffer: array[0..MAX_COMPUTERNAME_LENGTH + 1] of Char;
    Size: Cardinal;
  begin
    Size := MAX_COMPUTERNAME_LENGTH + 1;
    Windows.GetComputerName(@buffer, Size);
    Result := StrPas(buffer);
  end;

  Function GetUserFromWindows: string;
  Var
     UserName : string;
     UserNameLen : Dword;
  Begin
     UserNameLen := 255;
     SetLength(userName, UserNameLen) ;
     If GetUserName(PChar(UserName), UserNameLen) Then
       Result := Copy(UserName,1,UserNameLen - 1)
     Else
       Result := 'Unknown';
  End;

  function cekstatusTrial : Boolean;
  const
    sSYS ='System.SYS';
  var
    conTrial   : TADOConnection;
    conQueryTrial : TADOQuery;
  begin
    Result := False;
    conTrial  := TADOConnection.Create(nil);

    conTrial.LoginPrompt := false;
    conTrial.Close;
    conTrial.ConnectionString := CekMysqlSetting;
    conTrial.Connected := true;

    conQueryTrial := TADOQuery.Create(nil);
    _SQL := 'Select timetrial, TimeTrialRunning from Mst_System';
    conQueryTrial.Connection := conTrial;
    eksekusiSQL(conQueryTrial,_SQL, True);
    if not conQueryTrial.IsEmpty then
    begin
      If FileExists(sSys) then
      Begin
//        Application.MessageBox('Terima Kasih Telah Mengaktifkan Program BP-SPAM V.12.01','Peringatan',MB_OK);
        Result := True;
      end else
      begin
        if conQueryTrial.Fields[0].Value <> conQueryTrial.Fields[1].Value then
        begin
            Result := True;
        end else
        begin
            Application.MessageBox('Masa Trial Telah Habis'#13'Silahkan Hubungi Developer','Peringatan',MB_OK);
            Result := False;
        end;
      end;
    end;
    conTrial.Free;
  end;

  function cekHardwareId : string;
  const
    sSYS ='System.SYS';
  var
  constr        : string;
  F             : TextFile;
  bdate         :string;
  begin
    if FileExists(ExtractFilePath(ParamStr(0))+sSYS) then
    begin
      AssignFile(F,ExtractFilePath(ParamStr(0))+sSYS);
      Reset(F);
      Readln(F,conStr);
      CloseFile(F);
      conStr := enkripsi(dekripsi(conStr));
      Result        := dekripsi(constr);
    end else
    begin
      FMInfoAplikasi         := TFMInfoAplikasi.Create(nil);
      FMInfoAplikasi.Caption := 'REVISOFT PRODUCT ID';
      FMInfoAplikasi.ShowModal;

      if FMInfoAplikasi.statusINformasi = 'Registrasi' then
      begin
        hdId         := FMInfoAplikasi.edt1.Text;
        hdSerial     := FMInfoAplikasi.edt2.Text;
        hdVolume     := FMInfoAplikasi.edt3.text;


        conStr       := hdId + '-' + hdSerial + '-' + hdVolume;

        conStr :=EncryptString(conStr,'');
        AssignFile(F,ExtractFilePath(ParamStr(0))+sSYS);
        Rewrite(F);
        Writeln(F,conStr);
        CloseFile(F);
        DatabasePromptForm.Free;
        tulisinformasiHardware(hdId, hdSerial, hdVolume);
        Result        := dekripsi(constr);
      end else
      if FMInfoAplikasi.statusINformasi = 'Trial' then
      begin
        constr        := enkripsi('Trial');
        Result        := dekripsi(constr);
      end;
    end;


  end;

  procedure tulisinformasiHardware(hardid,hardserial,hardvolume: String);
  begin
        Reg:= TRegistry.Create;
        Reg.RootKey:= HKEY_CURRENT_USER;
        hdSerial := HilangSpasiKanan(hardserial);
        hdId := HilangSpasiKanan(hardid);
        hdVolume := hilangSpasikanan(hardvolume);
        try
          Reg.OpenKey('\Software\Revisoft\Pamsimas\HardwareID', True);
          Reg.WriteString('hardId', hdId);
          Reg.WriteString('hardserial', hdSerial);
          Reg.WriteString('hardvolume', hdvolume);
        finally
          Reg.CloseKey;
          Reg.Free;
        end;
  end;

  function cekTanggal(dp: TDateTime): String;
  begin
    result:=FormatDateTime('yyyy-mm-dd',dp);
  end;

  function cekTanggaltime(dp: TDateTime): String;
  begin
    result:=FormatDateTime('yyyy-mm-dd hh : n : s',dp);
  end;

  function ambiltitik(s : string) : string;
  var
      sp  :string;
      i,l :integer;
  begin
      sp := s;
      for i:=1 to length(sp) do
      begin
          if sp[i]='.' then
          begin
              delete(sp,i,1);
          end;
      end;
      l:=length(sp);
      if (length(sp)>3) then
      begin
          for i:=1 to (length(sp) div 3) do
          begin
              l:=l-2;
              if l<>1 then insert('.',sp,l);
              l:=l-1;
          end;
      end;
      ambiltitik := sp;
  end;

  function buangTitik(s : string) : string;
  var
      sp:string;
      i:integer;
  begin
      sp:=ambiltitik(s);
      for i:=1 to length(s) do
      begin
          if sp[i]='.' then
          begin
              delete(sp,i,1);
          end;
      end;
      buangTitik:=sp;
  end;

  function HilangTitikKanan(s:string) : string;
  var s1 : string;
      i : Integer;
  begin
     s1 := s;
     i := Length(s);
     while i > 0 do
     begin
       if s[i] <> '.' then Break;
       i := i - 1;
     end;
     s1 := LeftStr(s,i);
     Result := s1;
  end;

  procedure eliminatetitik(var s:string);
  var i,i1 : integer;
  begin
    i:= 1;
    while i <> 0 do
    begin
      i := Pos('.',s);
      i1 := i+1;
      while s[i1] ='.' do
      begin
        i1 := i1 + 1;
      end;
      if i1 - i > 1 then delete(s,i+1,i1 - i -1);
      //if s[i+1] = '.' then delete(s,i+1,1);
      s[i] := ' ';
    end;
    s := string(PChar(s));
   //changetanda(s,' ');
  end;

  function isStrANumber(const s: string): Boolean;
  var p: PChar;
  begin
    p := pchar(s);
    Result := False;
    while p^ <> #0 do
    begin
      if not (p^ in ['0'..'9']) then Exit;
      Inc(p);
    end;
    Result := True;
  end;

  function DeleteSpaces(Str: string): string;
  var
    i: Integer;
  begin
    i:=0;
    while i<=Length(Str) do
      if Str[i]=' ' then Delete(Str, i, 1)
      else Inc(i);
    Result:=Str;
  end;

  function DatetimeForSql(const date : TDateTime): string;
  var
    y, m, d : word;
    hour, min, sec, msec : word;
  begin
    DecodeDate(date, y, m, d) ;
    DecodeTime(date, hour, min, sec, msec) ;
    result := Format('%.*d/%.*d/%.*d %.*d:%.*d:%.*d',[2, m, 2, d, 4, y, 2, hour, 2, min, 2, sec])
  end;

  function DateForSQL(const date : TDateTime;statyear:Boolean) : string;
  var
    y, m, d : word;
  begin
    DecodeDate(date, y, m, d);
    if statyear then
      result := Format('%.*d-%.*d-%.*d',[2, m, 2, d, 2, y])
    else
      result := Format('-%.*d-%.*d',[ 2, m, 2, d]);
  end;

  function hilangnol(s:string): string;
  var i : integer;
  begin
    i := Length(s);
    while s[i] = #0 do
    begin
      s := LeftStr(s,i-1);
      i := i-1;
    end;
    Result := s;
  end;

  function HilangSpasiKanan(s:string) : string;
  var s1 : string;
      i : Integer;
  begin
     s1 := s;
     i := Length(s);
     while i > 0 do
     begin
       if s[i] <> ' ' then Break;
       i := i - 1;
     end;
     s1 := LeftStr(s,i);
     Result := s1;
  end;

  function nolkiri(s:string;i:integer):string;
  var a : integer;
      s1 : string;
  begin
     a := i - length(s);
     s1 := s;
     if a > 0 then
     begin
        while a > 0 do
        begin
          a := a - 1;
          s1 := '0' + s1;
        end;
     end;
     Result := s1;
  end;

  function spasikanan(s:string;i:integer):string;
  var a : integer;
      s1 : string;
  begin
     a := i - length(s);
     s1 := s;
     if a > 0 then
     begin
        while a > 0 do
        begin
          a := a - 1;
          s1 := s1+ ' ';
        end;
     end;
     Result := s1;
  end;

  function buangkoma(s : string) : string;
  var
       spk:string;
       ik:integer;
  begin
     spk:=ambiltitik(s);
     for ik:=1 to length(s) do
     begin
        if spk[ik]='.' then
        begin
           delete(spk,ik,1);
        end;
     end;
     buangkoma:=spk;
  end;

  function ambilkoma(s : string) : string;
  var
    spk:string;
    i:integer;
  begin
     spk := s;
     for i:=1 to length(spk) do
     begin
        if spk[i]='.' then
        begin
           delete(spk,i,1);
        end;
     end;
     case length(spk) of
        2 : begin
//            insert('.',spk,2);
            end;
        3 : begin
//              insert('.',spk,2);
            end;
        4 : insert('.',spk,2);
        5 : insert('.',spk,3);
        6 : begin
              insert('.',spk,4);
            end;
        7 : begin
              insert('.',spk,5);
              insert('.',spk,2);
            end;
        8 : begin
              insert('.',spk,6);
              insert('.',spk,3);
            end;
        9 : begin
              insert('.',spk,7);
              insert('.',spk,4);
            end;
        10 : begin
              insert('.',spk,8);
              insert('.',spk,5);
              insert('.',spk,2);
             end;
        11 : begin
              insert('.',spk,9);
              insert('.',spk,6);
              insert('.',spk,3);
             end;
        12 : begin
              insert('.',spk,10);
              insert('.',spk,7);
              insert('.',spk,4);
             end;
        13 : begin
              insert('.',spk,11);
              insert('.',spk,8);
              insert('.',spk,5);
              insert('.',spk,2);
             end;
        14 : begin
              insert('.',spk,12);
              insert('.',spk,9);
              insert('.',spk,6);
              insert('.',spk,3);
             end;
        15 : begin
              insert('.',spk,13);
              insert('.',spk,10);
              insert('.',spk,7);
              insert('.',spk,4);
             end;
     end;
       ambilkoma := spk;
  end;

  function prevtgl(xtgl: TDateTime) : TDateTime;
  var
        hr,bl,th : integer;
        tglsem   : string;
  begin
     hr    := strtoint(copy(DateToStr(xtgl),1,2));
     bl    := strtoint(copy(DateToStr(xtgl),4,2));
     th    := strtoint(copy(DateToStr(xtgl),7,4));
     if hr = 1 then
     begin
        if bl = 3 then
        begin
           bl := bl - 1;
           if (th mod 4 ) <> 0 then
              hr := 28
           else hr := 29;
        end else
        if bl = 1 then
        begin
           bl := 12;
           hr := 31;
           th := th - 1;
        end else
        begin
           bl := bl - 1;
           hr := tglakhirbln[bl];
        end;
     end else
     hr := hr - 1;
     tglsem   := nolkiri(inttostr(hr),2) + '/' +nolkiri(inttostr(bl),2) + '/' + inttostr(th);
     prevtgl  := Strtodate(tglsem);
  end;

  function nexttgl(xtgl: TDateTime) : TDateTime;
  var
    hr,bl,th : integer;
    tglsem   : string;
  begin
     hr    := strtoint(copy(DateToStr(xtgl),1,2));
     bl    := strtoint(copy(DateToStr(xtgl),4,2));
     th    := strtoint(copy(DateToStr(xtgl),7,4));
     if bl = 2 then
     begin
        if (th mod 4 ) <> 0 then
        begin
           if hr = 28 then
           begin
              hr := 1;
              bl := 3;
           end else
              hr := hr + 1;
        end else
        begin
           if hr = 29 then
           begin
              hr := 1;
              bl := 3;
           end else
              hr := hr + 1;
        end;
     end else
     begin
        if hr = tglakhirbln[bl] then
        begin
           hr := 1;
           bl := bl + 1;
        end else
           hr := hr + 1;
        if bl > 12 then
        begin
           bl := 1;
           th := th + 1;
        end;
     end;
     tglsem   := nolkiri(inttostr(hr),2) + '/' +nolkiri(inttostr(bl),2) + '/' + inttostr(th);
     nexttgl  := StrToDateTime (tglsem);
  end;

  function awal:String;
  begin
     result := '';
  end;

  function awalInput : String;
  begin
     result := '00.00';
  end;

  Procedure DeleteUserProfile;
  begin
    Reg:= TRegistry.Create;
    Reg.RootKey:= HKEY_CURRENT_USER;
    Reg.DeleteKey('\Software\Revisoft\Pamsimas\UserAktive\Pemakaian');
    Reg.Free;
  end;
  
  procedure tulisFileLogin(login,pass: String);
  begin
    Reg:= TRegistry.Create;
    Reg.RootKey:= HKEY_CURRENT_USER;
    su := HilangSpasiKanan(login);
    pa := HilangSpasiKanan(pass);
    try
      Reg.OpenKey('\Software\Revisoft\Pamsimas\UserAktive\Pemakaian', True);
      Reg.WriteString('User', su);
      Reg.WriteString('Password', Pa);
    finally
      Reg.CloseKey;
      Reg.Free;
    end;
  end;

  Procedure DeleteUserProfileoperasional;
  begin
    Reg:= TRegistry.Create;
    Reg.RootKey:= HKEY_CURRENT_USER;
    Reg.DeleteKey('\Software\Revisoft\Pamsimas\UserAktive\Operasional');
    Reg.Free;
  end;

  procedure tulisFileLoginoperasional(login,pass: String);
  begin
    Reg:= TRegistry.Create;
    Reg.RootKey:= HKEY_CURRENT_USER;
    su := HilangSpasiKanan(login);
    pa := HilangSpasiKanan(pass);
    try
      Reg.OpenKey('\Software\Revisoft\Pamsimas\UserAktive\Operasional', True);
      Reg.WriteString('User', su);
      Reg.WriteString('Password', Pa);
    finally
      Reg.CloseKey;
      Reg.Free;
    end;
  end;

  Procedure DeleteUserProfilePembayaran;
  begin
    Reg:= TRegistry.Create;
    Reg.RootKey:= HKEY_CURRENT_USER;
    Reg.DeleteKey('\Software\Revisoft\Pamsimas\UserAktive\Pembayaran');
    Reg.Free;
  end;

  Procedure DeleteUserProfilePasangbaru;
  begin
    Reg:= TRegistry.Create;
    Reg.RootKey:= HKEY_CURRENT_USER;
    Reg.DeleteKey('\Software\Revisoft\Pamsimas\UserAktive\Pasangbaru');
    Reg.Free;
  end;

  Procedure DeleteUserProfileUser;
  begin
    Reg:= TRegistry.Create;
    Reg.RootKey:= HKEY_CURRENT_USER;
    Reg.DeleteKey('\Software\Revisoft\Pamsimas\UserAktive\User');
    Reg.Free;
  end;

  procedure tulisFileLoginUSer(login,pass: String);
  begin
     Reg:= TRegistry.Create;
     Reg.RootKey:= HKEY_CURRENT_USER;
     su := HilangSpasiKanan(login);
     pa := HilangSpasiKanan(pass);
     try
       Reg.OpenKey('\Software\Revisoft\Pamsimas\UserAktive\User', True);
       Reg.WriteString('User', su);
       Reg.WriteString('Password', Pa);
     finally
       Reg.CloseKey;
       Reg.Free;
     end;
  end;

  procedure tulisFileLoginpembayaran(login,pass: String);
  begin
     Reg:= TRegistry.Create;
     Reg.RootKey:= HKEY_CURRENT_USER;
     su := HilangSpasiKanan(login);
     pa := HilangSpasiKanan(pass);
     try
       Reg.OpenKey('\Software\Revisoft\Pamsimas\UserAktive\Pembayaran', True);
       Reg.WriteString('User', su);
       Reg.WriteString('Password', Pa);
     finally
       Reg.CloseKey;
       Reg.Free;
     end;
  end;

  procedure tulisFileLoginpasangbaru(login,pass: String);
  begin
     Reg:= TRegistry.Create;
     Reg.RootKey:= HKEY_CURRENT_USER;
     su := HilangSpasiKanan(login);
     pa := HilangSpasiKanan(pass);
     try
       Reg.OpenKey('\Software\Revisoft\Pamsimas\UserAktive\Pasangbaru', True);
       Reg.WriteString('User', su);
       Reg.WriteString('Password', Pa);
     finally
       Reg.CloseKey;
       Reg.Free;
     end;
  end;


  Procedure DeleteUserProfilePiutang;
  begin
    Reg:= TRegistry.Create;
    Reg.RootKey:= HKEY_CURRENT_USER;
    Reg.DeleteKey('\Software\Revisoft\Pamsimas\UserAktive\Piutang');
    Reg.Free;
  end;

  procedure tulisFileLoginPiutang(login,pass: String);
  begin
    Reg:= TRegistry.Create;
    Reg.RootKey:= HKEY_CURRENT_USER;
    su := HilangSpasiKanan(login);
    pa := HilangSpasiKanan(pass);
    try
      Reg.OpenKey('\Software\Revisoft\Pamsimas\UserAktive\Piutang', True);
      Reg.WriteString('User', su);
      Reg.WriteString('Password', Pa);
    finally
      Reg.CloseKey;
      Reg.Free;
    end;
  end;

  function GetHardDiskSerial(const DriveLetter: char): string;
  var
  NotUsed : dWord;
  VolumeFlags : dWord;
  VolumeInfo : array[0..MAX_PATH] of char;
  VolumeSerialNumber: dWord;
  begin
  GetVolumeInformation(PChar(DriveLetter + ':\'),
  VolumeInfo, SizeOf(VolumeInfo),
  @VolumeSerialNumber, NotUsed,
  VolumeFlags, nil, 0);
  result := Format('%14s | %X |',
  [VolumeInfo, VolumeSerialNumber])
  // result := IntToStr(VolumeSerialNumber);
  end;

  function CekMysqlSetting :string;
  var
    conpamsimas   : TADOConnection;
    constr        : string;
    F             : TextFile;

    DatabasePromptForm :  TDatabasePromptForm;
  begin
    if FileExists(ExtractFilePath(ParamStr(0))+sSYS) then
    begin
      AssignFile(F,ExtractFilePath(ParamStr(0))+sSYS);
      Reset(F);
      Readln(F,conStr);
      CloseFile(F);
      conStr := DecryptString(conStr,'');
    end else
    begin
       DatabasePromptForm := TDatabasePromptForm.Create(nil);
       DatabasePromptForm.FormStyle:= fsNormal;
       DatabasePromptForm.Hide;
       DatabasePromptForm.Caption := 'Koneksi Database System';
       if DatabasePromptForm.ShowModal = mrOk then
       begin
         ServerName := DatabasePromptForm.ledservername.Text;
         myUser     := DatabasePromptForm.ledUserId.Text;
         myPasword  := DatabasePromptForm.ledPass.text;
         DBName     := DatabasePromptForm.leddbname.Text;
//         port       := StrToInt(DatabasePromptForm.ledPort.Text);

         conStr     := 'Provider=MSDASQL.1;'+
                       'Persist Security Info=False;'+
                       'Extended Properties="Driver={MySQL ODBC 5.1 Driver};' +
                       'SERVER=' + ServerName + ';' +
                       'UID=' + myUser + ';' +
                       'PWD=' + myPasword + ';' +
                       'DATABASE=' +DBName + ';' +
                       'Port=' +'3306' +';"';

         conStr :=EncryptString(conStr,'');
         AssignFile(F,ExtractFilePath(ParamStr(0))+sSYS);
         Rewrite(F);
         Writeln(F,conStr);
         CloseFile(F);
         DatabasePromptForm.Free;
         constr := DecryptString(constr,'');
       end;
    end;
    Result        := constr;
  end;

  function CekMysql:Boolean;
  var
    conpamsimas   : TADOConnection;
  begin
    Result := False;
    conpamsimas := TADOConnection.Create(nil);

    conpamsimas.LoginPrompt := false;
    conpamsimas.Close;
    conpamsimas.ConnectionString := CekMysqlSetting;

    try
      conpamsimas.Connected := true;
      Result := True;
    except
      Application.MessageBox('Server MySql Belum dijalankan'#13'Silahkan jalankan file MySQLd.exe didalam Folder Server\bin','Peringatan',MB_OK);
      Result := False;
    end;

    conpamsimas.Free;
  end;

  function DBConnectMasterMysql : string;
  var
    conStr, constrencrypt : string;
    ServerName, DBName, myUser, myPasword : string;
    port : Integer;
    F: TextFile;
    DatabasePromptForm :  TDatabasePromptForm;
  begin
    if FileExists(ExtractFilePath(ParamStr(0))+sSYS) then
    begin
      AssignFile(F,ExtractFilePath(ParamStr(0))+sSYS);
      Reset(F);
      Readln(F,conStr);
      CloseFile(F);
      conStr := DecryptString(conStr,'');
    end else
    begin
       DatabasePromptForm := TDatabasePromptForm.Create(nil);
       DatabasePromptForm.FormStyle:= fsNormal;
       DatabasePromptForm.Hide;
       DatabasePromptForm.Caption := 'KONEKSI DATABASE SYSTEM';
       if DatabasePromptForm.ShowModal = mrOk then
       begin
       ServerName := DatabasePromptForm.ledservername.Text;
       myUser     := DatabasePromptForm.ledUserId.Text;
       myPasword  := DatabasePromptForm.ledPass.text;
       DBName     := DatabasePromptForm.leddbname.Text;
//       port       := StrToInt(DatabasePromptForm.ledPort.Text);


       conStr     := 'Provider=MSDASQL.1;'+
                     'Persist Security Info=False;'+
                     'Extended Properties="Driver={MySQL ODBC 5.1 Driver};' +
                     'SERVER=' + ServerName + ';' +
                     'UID=' + myUser + ';' +
                     'PWD=' + myPasword + ';' +
                     'DATABASE=' +DBName + ';' +
                     'Port=' +'3306' +';"';

       conStr :=EncryptString(conStr,'');
       AssignFile(F,ExtractFilePath(ParamStr(0))+sSYS);
       Rewrite(F);
       Writeln(F,conStr);
       CloseFile(F);
       DatabasePromptForm.Free;
       constr := DecryptString(constr,'');
       end;
    end;
    Result        := constr;
  end;

  function parser(s: string): string;
  var a : string;
      i : Integer;
  begin
    if UpperCase(RightStr(s,3)) = UpperCase('exe')then
    begin
      a := s;
      i := Length(a);
      while (a[i] <> '\') and (i <> 0)  do
      begin
        i := i -1;
      end;
    end;
    if i > 0 then Result := LeftStr(s,i);
  end;

  function ROL(X: LongWord; Count: Integer): LongWord;
  {$IFDEF PUREPASCAL}
  begin
    Result := (X shl Count) or (X shr (32 - Count));
  end;
  {$ELSE}
  asm
          MOV     ECX,EDX
          ROL     EAX,CL
  end;
  {$ENDIF}

  type
    MD5Iters = 0..63;

  var
    k: array[MD5Iters] of Integer;
    T: array[MD5Iters] of LongWord;
    s: array[MD5Iters] of Integer;

  procedure InitLUTs;
  const
    A: array[0..15] of Integer =
      (
        7, 12, 17, 22,
        5,  9, 14, 20,
        4, 11, 16, 23,
        6, 10, 15, 21
      );
  var
    I: Integer;
  begin
    for I := 0 to 63 do
    begin
      case I of
        0..15: k[I] := I;
        16..31: k[I] := (5 * I + 1) and $f;
        32..47: k[I] := (3 * I + 5) and $f;
        48..63: k[I] := (7 * I) and $f;
      end;
      T[I] := Trunc(Abs(Sin(I + 1)) * $100000000);
      s[I] := A[I shr 2 and $c or I and $3];
    end;
  end;

  // MD5 basic transformation. Transforms state based on block.

  procedure Transform(var State: MD5State; const Block);
  var
    X: array[0..15] of LongWord absolute Block;
    a, b, c, d, i, f, temp: LongWord;
  begin
    f := 0;
    a := State[0];
    b := State[1];
    c := State[2];
    d := State[3];
    for i := 0 to 63 do
    begin
      case i of
        0..15: f  := d xor (b and (c xor d));
        16..31: f := c xor (d and (b xor c));
        32..47: f := b xor c xor d;
        48..63: f := c xor (b or (not d));
      end;
      temp := d;
      d := c;
      c := b;
      Inc(b, ROL(a + f + X[k[i]] + T[i], s[i]));
      a := temp;
    end;
    Inc(State[0], a);
    Inc(State[1], b);
    Inc(State[2], c);
    Inc(State[3], d);
  end;

  { TMD5 }

  constructor TMD5.Create;
  begin
    FState[0] := $67452301;
    FState[1] := $efcdab89;
    FState[2] := $98badcfe;
    FState[3] := $10325476;
  end;

  type
    Bytes = array[0..0] of Byte;

  procedure TMD5.Update(const Input; Length: Cardinal);
  var
    I, Index, PartLen: Cardinal;
  begin
    Index := FCount and $3f;
    Inc(FCount, Length);
    PartLen := 64 - Index;
    if Length >= PartLen then
    begin
      Move(Input, FBuffer[Index], PartLen);
      Transform(FState, FBuffer);
      I := PartLen;
      while I + 63 < Length do
      begin
        Transform(FState, Bytes(Input)[I]);
        Inc(I, 64);
      end;
      Index := 0;
    end
    else
      I := 0;
    Move(Bytes(Input)[I], FBuffer[Index], Length - I);
  end;

  function TMD5.Final: MD5Digest;
  var
    BitLength : Int64;
    Padding   : MD5Buffer;
    PadLen    : Integer;
  begin
    BitLength := FCount shl 3;
    PadLen := (119 - FCount and $3f) and $3f + 1;
    FillChar(Padding, PadLen, 0);
    Padding[0] := $80;
    Update(Padding, PadLen);
    Update(BitLength, SizeOf(Int64));
    Result := MD5Digest(FState);
    Free;
  end;

  // ----------------------------------------------------------------------------

  function MD5Message(const Message; Length: Cardinal): MD5Digest;
  begin
    with TMD5.Create do
      try
        Update(Message, Length);
        Result := Final;
      except
        Free;
        raise;
      end;
  end;

  function MD5String(const S: string): MD5Digest;
  begin
    Result := MD5Message(Pointer(S)^, Length(S));
  end;

  function MD5File(const FileName: string): MD5Digest;
  {$IFDEF MSWINDOWS}
  var
    FileHandle : THandle;
    MapHandle  : THandle;
    ViewPointer: Pointer;
  {$ENDIF}
  begin
    FillChar(Result, SizeOf(MD5Digest), 0);
  {$IFDEF MSWINDOWS}
    FileHandle := CreateFile(PChar(FileName), GENERIC_READ, FILE_SHARE_READ or
      FILE_SHARE_WRITE, nil, OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL or
      FILE_FLAG_SEQUENTIAL_SCAN, 0);
    if FileHandle <> INVALID_HANDLE_VALUE then
      try
        MapHandle := CreateFileMapping(FileHandle, nil, PAGE_READONLY, 0, 0, nil);
        if MapHandle <> 0 then
          try
            ViewPointer := MapViewOfFile(MapHandle, FILE_MAP_READ, 0, 0, 0);
            if ViewPointer <> nil then
              try
                Result := MD5Message(ViewPointer^, GetFileSize(FileHandle, nil));
              finally
                UnmapViewOfFile(ViewPointer);
              end;
          finally
            CloseHandle(MapHandle);
          end;
      finally
        CloseHandle(FileHandle);
      end;
  {$ENDIF}
  end;


  function MD5Print(const D: MD5Digest): string;
  const
    Digits: array[0..15] of Char =
      ('0','1','2','3','4','5','6','7','8','9','a','b','c','d','e','f');
  var
    I       : Integer;
    TempStr : string[32];
  begin
    TempStr := '';
    for I := 0 to 15 do
      TempStr := TempStr + Digits[D[I] shr 4] + Digits[D[I] and $f];
    Result := TempStr;
  end;

  function StrToMd5(const strSrc: string): string;
  begin
  Result:=MD5Print(MD5String(strSrc));
  end;

  //========================================================================================================================================
  function Encrypt(const s: String; CryptInt: Integer): String;
  var
    i: integer;
    s2: string;
  begin
    if not (Length(s) = 0) then
      for i := 1 to Length(s) do
        s2 := s2 + Chr(Ord(s[i]) + CrypTint);
    Result := s2;
  end;

  //========================================================================================================================================
  function Decrypt(const s: String; CryptInt: Integer): String;
  var
    i: integer;
    s2: string;
  begin
    if not (Length(s) = 0) then
      for i := 1 to Length(s) do
        s2 := s2 + Chr(Ord(s[i]) - cryptint);
    Result := s2;
  end;

  //==============================================================================================================================

  function enkripsi(src: string): string;
  begin
    result:=Encrypt(src,711754);
  end;

  function dekripsi(src: string): string;
  begin
    result:=Decrypt(src,711754);
  end;

  function konfTanya(src: string): boolean;
  var i: integer;
  begin
    i     :=Application.MessageBox(PChar('Apakah data ini akan ' + src + '?'),'Konfirmasi',MB_YESNO or MB_ICONQUESTION);
    Result:=not Boolean(i mod 2);
  end;

  procedure konfPeringatan(src: string);
  begin
    Application.MessageBox(PChar(src),'Peringatan',MB_OK or MB_ICONEXCLAMATION);
  end;

  procedure konfError(src: string);
  begin
    Application.MessageBox(PChar(src),'Kesalahan',MB_OK or MB_ICONERROR);
  end;

  procedure konfBerhasil(src: string);
  begin
    Application.MessageBox(PChar(src),'Informasi',MB_OK or MB_ICONINFORMATION);
  end;


  function EksekusiSQL(machine: TADOQuery ; _SQL: string ; cari: Boolean): boolean;
  begin

    try
      //konfPeringatan(_SQL);
      result:=True;
      with machine do
      begin
         Close;
         SQL.Clear;
         SQL.Add(_SQL);
         if cari then

            Open

         else

//         MessageBox(0,PChar(_SQL),'Retno',MB_OK);
            ExecSQL;
      end;
    except
      result:=False;
      konfError('Tidak dapat melanjutkan operasi selanjutnya karena terjadi ' + #13 +
                'kerusakan, silahkan cek konektivitas Database anda atau hubungi' + #13 +
                'developer sistem ini untuk penanganan lebih lanjut.');
    end;
  end;

//  function EksekusiSQLmysql(machine: TMyQuery ; _SQL: string ; cari: Boolean): boolean;
//  begin
//    try
//      //konfPeringatan(_SQL);
//      result:=True;
//      with machine do
//      begin
//         Close;
//         SQL.Clear;
//         SQL.Add(_SQL);
//         if cari then
//         
//            Open
//
//
//         else
//
////         MessageBox(0,PChar(_SQL),'Retno',MB_OK);
//            Execute;
//      end;
//    except
//      result:=False;
//      konfError('Tidak dapat melanjutkan operasi selanjutnya karena terjadi ' + #13 +
//                'kerusakan, silahkan cek konektivitas Database anda atau hubungi' + #13 +
//                'developer sistem ini untuk penanganan lebih lanjut.');
//    end;
//  end;

end.
