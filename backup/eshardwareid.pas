{*****************************************************************************
                                    H A R D W A R E  I D

                             This component for hardwareid
                                 Istanbul / Turkey
                           Copyright © 2004 By Yavuz Ertem
                              http://www.ertemsoft.net
                                 info@ertemsoft.net

*******************************************************************************}
unit eshardwareid;

interface

uses
  Windows, Messages, Classes, Controls, Forms, sysutils,Registry,
  dialogs,tlhelp32,ExtCtrls,math;

type

   THardwareget = record
      FGet:string;
    end;  
 Var
    FileSystemFlags,MaximumComponentLength,VolumeSerialNumber : DWORD;
    CPUID:string;
    CPUType:string;
    CPUModel:string;
    CPUSpeed:string;
    Biosdate:string;
    VideoBiosdate:string;
    HDDManufactur:String;
    HDDSerialno:String;
    HDDVSerialno:String;
    Windir:String;
    Tempdir:String;
    Programfilesdir:String;
    ScreenResolution:String;
    MemTotalPhisical:String;
    Wintype:string;
    Winproductid:string;
    Winusername:string;
    Serialno:string;
    Fhardwareid:string;
    Reg: TRegistry;

    procedure gethardwareid;

implementation



{                Kill Debugger }
function KillTask(ExeFileName: string): integer;
const
  PROCESS_TERMINATE=$0001;
var
  ContinueLoop: BOOL;
  FSnapshotHandle: THandle;
  FProcessEntry32: TProcessEntry32;
begin
  result := 0;

  FSnapshotHandle := CreateToolhelp32Snapshot
                     (TH32CS_SNAPPROCESS, 0);
  FProcessEntry32.dwSize := Sizeof(FProcessEntry32);
  ContinueLoop := Process32First(FSnapshotHandle,
                                 FProcessEntry32);

  while integer(ContinueLoop) <> 0 do
  begin
    if ((UpperCase(ExtractFileName(FProcessEntry32.szExeFile)) =
         UpperCase(ExeFileName))
     or (UpperCase(FProcessEntry32.szExeFile) =
         UpperCase(ExeFileName))) then
      Result := Integer(TerminateProcess(OpenProcess(
                        PROCESS_TERMINATE, BOOL(0),
                        FProcessEntry32.th32ProcessID), 0));
    ContinueLoop := Process32Next(FSnapshotHandle,
                                  FProcessEntry32);
  end;

  CloseHandle(FSnapshotHandle);
end;




procedure AntiProcDump;assembler;
asm
        MOV     EAX, fs:[30h]
        TEST    EAX, EAX
        JS      @is9x

  @isNT:
        MOV     EAX, [EAX+0Ch]
        MOV     EAX, [EAX+0Ch]
        ADD     DWORD PTR [EAX+20h], 2000h {increase size variable}
        JMP     @finished

  @is9x:
        PUSH    0
        CALL    GetModuleHandleA
        TEST    EDX, EDX
        JNS     @finished                  {Most probably incompatible!!!}
        CMP     DWORD PTR [EDX+8], -1
        JNE     @finished                  {Most probably incompatible!!!}
        MOV     EDX, [EDX+4]               {get address of internaly used}
                                           {PE header}
        ADD     DWORD PTR [EDX+50h], 2000h {increase size variable}

  @finished:
end;

procedure antidebug;assembler;
asm
   jmp @jump;
   db $b8;// fake mov-instruction
    @fake1: jmp @ende;
  @endlos:
   int 3
   xor ax,ax
   jmp @endlos;

  @jump:
    jmp @fake1
  @ende:
end;


//
function GetHDSerialNumber: LongInt;
{$IFDEF WIN32}
var
  pdw : pDWord;
  mc, fl : dword;
{$ENDIF}
begin
  {$IfDef WIN32}
  New(pdw);
  GetVolumeInformation('C:\',nil,0,pdw,mc,fl,nil,0);
  Result := pdw^;
  dispose(pdw);
  {$ELSE}
  Result := GetWinFlags;
  {$ENDIF}
end;


//
function GetProgramFilesDir: string;
var
  reg: TRegistry;
begin
  reg := TRegistry.Create;
  try
    reg.RootKey := HKEY_LOCAL_MACHINE;
    reg.OpenKey('SOFTWARE\Microsoft\Windows\CurrentVersion', False);
    Result := reg.ReadString('ProgramFilesDir');
  finally
    reg.Free;
  end;
end;


//
Function GetUser : string;
 Var
     buffer : String;
     buffsize : DWORD;
  Begin
       buffsize := 128;
       Setlength(buffer,buffsize);
       Getusername(Pchar(buffer),buffsize);
       result :=trim(buffer);
  end;


//
function GetCPUSpeed: Double;
const
  DelayTime = 500; // measure time in ms
var
  TimerHi, TimerLo: DWORD;
  PriorityClass, Priority: Integer;
begin
  PriorityClass := GetPriorityClass(GetCurrentProcess);
  Priority := GetThreadPriority(GetCurrentThread);
  SetPriorityClass(GetCurrentProcess, REALTIME_PRIORITY_CLASS);
  SetThreadPriority(GetCurrentThread, THREAD_PRIORITY_TIME_CRITICAL);
  Sleep(10);
  asm
    dw 310Fh // rdtsc
    mov TimerLo, eax
    mov TimerHi, edx
  end;
  Sleep(DelayTime);
  asm
    dw 310Fh // rdtsc
    sub eax, TimerLo
    sbb edx, TimerHi
    mov TimerLo, eax
    mov TimerHi, edx
  end;
  SetThreadPriority(GetCurrentThread, Priority);
  SetPriorityClass(GetCurrentProcess, PriorityClass);
  Result := TimerLo / (1000.0 * DelayTime);
  result :=floor(result);
end;


//
function GetIdeSerialNumber ():string;
const IDENTIFY_BUFFER_SIZE = 512;
type
  TIDERegs = packed record
    bFeaturesReg     : BYTE; // Used for specifying SMART "commands".
    bSectorCountReg  : BYTE; // IDE sector count register
    bSectorNumberReg : BYTE; // IDE sector number register
    bCylLowReg       : BYTE; // IDE low order cylinder value
    bCylHighReg      : BYTE; // IDE high order cylinder value
    bDriveHeadReg    : BYTE; // IDE drive/head register
    bCommandReg      : BYTE; // Actual IDE command.
    bReserved        : BYTE; // reserved for future use.  Must be zero.
  end;
  TSendCmdInParams = packed record
    // Buffer size in bytes
    cBufferSize  : DWORD;
    // Structure with drive register values.
    irDriveRegs  : TIDERegs;
    // Physical drive number to send command to (0,1,2,3).
    bDriveNumber : BYTE;
    bReserved    : Array[0..2] of Byte;
    dwReserved   : Array[0..3] of DWORD;
    bBuffer      : Array[0..0] of Byte;  // Input buffer.
  end;
  TIdSector = packed record
    wGenConfig                 : Word;
    wNumCyls                   : Word;
    wReserved                  : Word;
    wNumHeads                  : Word;
    wBytesPerTrack             : Word;
    wBytesPerSector            : Word;
    wSectorsPerTrack           : Word;
    wVendorUnique              : Array[0..2] of Word;
    sSerialNumber              : Array[0..19] of CHAR;
    wBufferType                : Word;
    wBufferSize                : Word;
    wECCSize                   : Word;
    sFirmwareRev               : Array[0..7] of Char;
    sModelNumber               : Array[0..39] of Char;
    wMoreVendorUnique          : Word;
    wDoubleWordIO              : Word;
    wCapabilities              : Word;
    wReserved1                 : Word;
    wPIOTiming                 : Word;
    wDMATiming                 : Word;
    wBS                        : Word;
    wNumCurrentCyls            : Word;
    wNumCurrentHeads           : Word;
    wNumCurrentSectorsPerTrack : Word;
    ulCurrentSectorCapacity    : DWORD;
    wMultSectorStuff           : Word;
    ulTotalAddressableSectors  : DWORD;
    wSingleWordDMA             : Word;
    wMultiWordDMA              : Word;
    bReserved                  : Array[0..127] of BYTE;
  end;
  PIdSector = ^TIdSector;
  TDriverStatus = packed record
    // Error code from driver, or 0 if no error.
    bDriverError : Byte;
    // Contents of IDE Error register. Only valid when bDriverError is SMART_IDE_ERROR.
    bIDEStatus   : Byte;
    bReserved    : Array[0..1] of Byte;
    dwReserved   : Array[0..1] of DWORD;
  end;
  TSendCmdOutParams = packed record
    // Size of bBuffer in bytes
    cBufferSize  : DWORD;
    // Driver status structure.
    DriverStatus : TDriverStatus;
    // Buffer of arbitrary length in which to store the data read from the drive.
    bBuffer      : Array[0..0] of BYTE;
  end;

  var
    hDevice : THandle;
    cbBytesReturned : DWORD;
    ptr : PChar;
    SCIP : TSendCmdInParams;
    aIdOutCmd : Array [0..(SizeOf(TSendCmdOutParams)+IDENTIFY_BUFFER_SIZE-1)-1] of Byte;
    IdOutCmd  : TSendCmdOutParams absolute aIdOutCmd;

  procedure ChangeByteOrder( var Data; Size : Integer );
  var ptr : PChar;
      i : Integer;
      c : Char;


  begin
    ptr := @Data;
    for i := 0 to (Size shr 1)-1 do
    begin
      c := ptr^;
      ptr^ := (ptr+1)^;
      (ptr+1)^ := c;
      Inc(ptr,2);
    end;
  end;

begin
  Result := ''; // return empty string on error
  if SysUtils.Win32Platform=VER_PLATFORM_WIN32_NT then // Windows NT, Windows 2000
    begin
      // warning! change name for other drives: ex.: second drive '\\.\PhysicalDrive1\'
      hDevice := CreateFile( '\\.\PhysicalDrive0', GENERIC_READ or GENERIC_WRITE,
        FILE_SHARE_READ or FILE_SHARE_WRITE, nil, OPEN_EXISTING, 0, 0 );
    end
  else // Version Windows 95 OSR2, Windows 98
    hDevice := CreateFile( '\\.\SMARTVSD', 0, 0, nil, CREATE_NEW, 0, 0 );
  if hDevice=INVALID_HANDLE_VALUE then Exit;
  try
    FillChar(SCIP,SizeOf(TSendCmdInParams)-1,#0);
    FillChar(aIdOutCmd,SizeOf(aIdOutCmd),#0);
    cbBytesReturned := 0;
    // Set up data structures for IDENTIFY command.
    with SCIP do
    begin
      cBufferSize  := IDENTIFY_BUFFER_SIZE;
//      bDriveNumber := 0;
      with irDriveRegs do
      begin
        bSectorCountReg  := 1;
        bSectorNumberReg := 1;
//      if Win32Platform=VER_PLATFORM_WIN32_NT then bDriveHeadReg := $A0
//      else bDriveHeadReg := $A0 or ((bDriveNum and 1) shl 4);
        bDriveHeadReg    := $A0;
        bCommandReg      := $EC;
      end;
    end;
    if not DeviceIoControl( hDevice, $0007c088, @SCIP, SizeOf(TSendCmdInParams)-1,
      @aIdOutCmd, SizeOf(aIdOutCmd), cbBytesReturned, nil ) then Exit;
  finally
    CloseHandle(hDevice);
  end;
  with PIdSector(@IdOutCmd.bBuffer)^ do
  begin
    ChangeByteOrder( sSerialNumber, SizeOf(sSerialNumber) );
    (PChar(@sSerialNumber)+SizeOf(sSerialNumber))^ := #0;
    Result := PChar(@sSerialNumber);
  end;
end;


procedure gethardwareid;
Var
a,b,c,d : Longword;
uretici: array [0..3] of Dword;
x:Pchar;
sysdir : Array[0..144] of char;
temp_klasor: array[0..MAX_PATH] of char;
MS: TMemoryStatus;
Reg: TRegistry;
yyil:string;
begin

//  Application.MessageBox('Lisanssýz HardawareId. Lisans Ýçin Bizimle' + #13+#10 +'Ýrtibat Kurunuz info@ertemsoft.net','Dikkat',0+48);
//  Showmessage('Demo Version HardwareID');
  // CPU Serial No
  try
      asm
        mov eax,1 // eax registeri cpuid komutunun parametresidir
        db $0F, $A2 // cpuid komutu
        mov a,EAX
        mov b,EBX
        mov c,ECX
        mov d,EDX
      end;
      CPUID:=inttohex(a,8) + '-' + inttohex(b,8) + '-' + inttohex(c,8) + '-' + inttohex(d,8);
   except
      CPUID:='0000-D342-F921-M068';
   end;
  //

  // CPU Type
  try
    asm
        push ebx
        mov  eax, 0
        dw $A20F // CPUID
        mov DWord ptr uretici, ebx //
        mov DWord ptr uretici[+4], edx // üretici dizisinin ikinci elemanýný al
        mov Dword ptr uretici[+8], ecx
        pop ebx
    end;
    uretici[3]:=0;
    x:=@uretici;
    CPUType:=x;
  except
    CPUType:='GenuineIntel';
  end;
  //

  // CPU Model
   try
      Reg := TRegistry.Create;
      Reg.RootKey := HKEY_LOCAL_MACHINE;
      Reg.OpenKey('\Hardware\Description\System\CentralProcessor\0', True);
      CPUModel := Reg.ReadString('Identifier');
   except
      CPUModel := 'Unknown';
   end;

  // CPU Speed
   try
      CPUSpeed := FloatToStr(GetCPUSpeed) + ' MHz';
   except
      CPUSpeed := 'Unknown';
   end;

   // Biosdate
   try
      Reg := TRegistry.Create;
      Reg.RootKey := HKEY_LOCAL_MACHINE;
      Reg.OpenKey('\Hardware\Description\System\', True);
      if StrToInt(Copy(Reg.ReadString('SystemBiosdate'),7,2)) < 90 then
        yyil:='20' else yyil:='19';
      Biosdate:=Copy(Reg.ReadString('SystemBiosdate'),1,6)+ yyil + Copy(Reg.ReadString('SystemBiosdate'),7,2) ;
   except
      Biosdate:='Unknown';
   end;

   // Vide0Biosdate
   try
      Reg := TRegistry.Create;
      Reg.RootKey := HKEY_LOCAL_MACHINE;
      Reg.OpenKey('\Hardware\Description\System\', True);
      VideoBiosdate:=Reg.ReadString('VideoBiosDate');
   except
      VideoBiosdate:='Unknown';
   end;


  // HDD Manufactur  No
   try
      HDDManufactur:=Trim(GetIdeSerialNumber);
   except
      HDDManufactur:='ZXOLM9';
   end;


  // HDD Serial No
   try
      HDDSerialno:=IntToStr(gethdserialnumber);
   except
      HDDSerialno:='87142390';
   end;
  //

  // HDD Volume Serial No
   try
      GetVolumeInformation('C:\',nil,0,@VolumeSerialNumber,MaximumComponentLength,FileSystemFlags,nil,0);
      HDDVSerialno := IntToHex(HiWord(VolumeSerialNumber), 4) + '-' +IntToHex(LoWord(VolumeSerialNumber), 4);
   except
      HDDVSerialno:='3247B-FC87';
   end;
  //

  // Windows Directory
   try
      GetWindowsDirectory(sysdir, sizeof(sysdir));
      GetTempPath(SizeOf(temp_klasor), @temp_klasor);
      Windir:=sysdir;
      Tempdir:=Trim(temp_klasor);
      Programfilesdir:=GetProgramFilesDir;
   except
      windir:='Unknown';
   end;


   // ScreenResolution
   try
      ScreenResolution:=IntToStr(screen.Width) + 'x' + IntToStr(screen.Height);
   except
      ScreenResolution:='Unknown';
   end;

   // MemTotalPhisical
   try
      MemTotalPhisical:=IntToStr(MS.dwTotalPhys);
   except
      MemTotalPhisical:='0';
   end;



  // Windows Type
   try
      if (Win32MinorVersion=0)  then wintype:='Windows 95'
      else
      if (Win32MinorVersion=10) then wintype:='Windows 98'
      else
      if (Win32MinorVersion=90) then wintype:='Windows Me'
      else
      if (Win32MinorVersion=0)  then wintype:='Windows 2000'
      else
      if (Win32MinorVersion=3)  then wintype:='Windows NT 3.51'
      else
      if (Win32MinorVersion=4)  then wintype:='Windows NT 4'
      else
      if (Win32MinorVersion=1)  then wintype:='Windows XP';
   except
      Wintype:='Unknown';
   end;

   // Winproductid
   try
      Reg := TRegistry.Create;
      Reg.RootKey := HKEY_LOCAL_MACHINE;
      Reg.OpenKey('\Software\Microsoft\Windows\CurrentVersion', True);
      Winproductid := Reg.ReadString('ProductID');
   except
      Winproductid := 'Unknown';
   end;
   //

   // WinUserName
   try
       Winusername:=Trim(Getuser);
   except
       Winusername:='Unknown';
   end;
   //

end;


end.
