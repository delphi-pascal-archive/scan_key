library win_keys;

uses
  Wintypes, Winprocs, Messages, Windows, DMessage;

{handle для ловушки}

var
  SaveExitProc : Pointer;
  HookHandle: HHOOK = 0;    

function Key_Hook(Code: integer; wParam: word; lParam: longint): longint; export; far;
var
  h: hwnd;
begin
  {если code>=0, то ловушка может обработать событие}
  if Code >= 0 then
  begin              {это те клавиши?}
  if (lparam and $40000000 = 0) then
    begin  {ищем окно по имени класса и по заголовку}
    h := FindWindow('TFMain', 'ScanKey');

    if (wParam >= $08)AND(wParam <= $2E) then
      case wParam of
        $08 : SendMessage(h, WM_DANILBACK,    0, 0);
        $09 : SendMessage(h, WM_DANILTAB,     0, 0);
        $0D : SendMessage(h, WM_DANILRETURN,  0, 0);
        $10 : SendMessage(h, WM_DANILSHIFT,   0, 0);
        $11 : SendMessage(h, WM_DANILCONTROL, 0, 0);
        $12 : SendMessage(h, WM_DANILMENU,    0, 0);
        $1B : SendMessage(h, WM_DANILESC,     0, 0);
        $20 : SendMessage(h, WM_DANILSPACE,   0, 0);
        $25 : SendMessage(h, WM_DANILLEFT,    0, 0);
        $26 : SendMessage(h, WM_DANILUP,      0, 0);
        $27 : SendMessage(h, WM_DANILRIGHT,   0, 0);
        $28 : SendMessage(h, WM_DANILDOWN,    0, 0);
        $2E : SendMessage(h, WM_DANILDELETE,  0, 0);
      end
    else if (wParam >= $30)AND(wParam <= $39)
      then SendMessage(h, WM_DANIL0 + wParam - $30, 0, 0)
    else if (wParam >= $41)AND(wParam <= $5A)
      then SendMessage(h, WM_DANILA + wParam - $41, 0, 0)
    else if (wParam >= $60)AND(wParam <= $69)
      then SendMessage(h, WM_DANILNP0 + wParam - VK_NUMPAD0, 0, 0)
     else if (wParam >= $6A)AND(wParam <= $6F) then
       case wParam of
         $6A : SendMessage(h, WM_DANILMUL, 0, 0);
         $6B : SendMessage(h, WM_DANILADD, 0, 0);
         $6D : SendMessage(h, WM_DANILSUB, 0, 0);
         $6E : SendMessage(h, WM_DANILDEC, 0, 0);
         $6F : SendMessage(h, WM_DANILDIV, 0, 0);
       end
     else if (wParam >= $BA)AND(wParam <= $C0)
       then SendMessage(h, WM_DANILOE1 + wParam - $BA, 0, 0)
     else if (wParam >= $DB)AND(wParam <= $DE)
       then SendMessage(h, WM_DANILOE4 + wParam - $DB, 0, 0)
       
    end;
  {если 0, то система должна дальше обработать это событие}
  {если 1 - нет}
  
  Result:=0
  end
  else
  {если code<0, то нужно вызвать следующую ловушку}
  Result := CallNextHookEx(HookHandle, Code, wParam, lParam);
  
end;

exports
 Key_Hook name 'Key_Hook';

{при выгрузке dll надо снять ловушку}

procedure LocalExitProc; far;
begin
  if HookHandle <> 0 then
  begin
    UnHookWindowsHookEx(HookHandle);
    ExitProc := SaveExitProc;
  end;

end;
{инициализация dll при загрузке ее в память}
begin
{устанавливаем ловушку}
  HookHandle := SetWindowsHookEx(WH_KEYBOARD, @Key_Hook, hInstance, 0);
  if HookHandle = 0 then
    MessageBox(0, 'Unable to set hook!', 'Error', MB_OK)
  else
  begin
    SaveExitProc := ExitProc;
    ExitProc := @LocalExitProc;
  end;

end.