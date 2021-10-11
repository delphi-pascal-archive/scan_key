unit DMessage;

interface

uses Messages;

const
{пользовательские сообщения}

{Кнопка BackSpace}
  WM_DANILBACK = WM_USER + 126;
{Кнопка Tab}
  WM_DANILTAB = WM_USER + 127;
{Кнопка Enter}
  WM_DANILRETURN = WM_USER + 128;
{Кнопка Shift}
  WM_DANILSHIFT = WM_USER + 129;
{Кнопка Ctrl}
  WM_DANILCONTROL = WM_USER + 130;
{Кнопка Alt}
  WM_DANILMENU = WM_USER + 131;
{Кнопка Esc}
  WM_DANILESC = WM_USER + 132;
{Кнопка Space}
  WM_DANILSPACE = WM_USER + 133;
{Кнопка Left}
  WM_DANILLEFT = WM_USER + 134;
{Кнопка Up}
  WM_DANILUP = WM_USER + 135;
{Кнопка Right}
  WM_DANILRIGHT = WM_USER + 136;
{Кнопка Down}
  WM_DANILDOWN = WM_USER + 137;
{Кнопка Del}
  WM_DANILDELETE = WM_USER + 138;
{Символ 0}
  WM_DANIL0 = WM_USER + 139;
{Символ 1}
  WM_DANIL1 = WM_USER + 140;
{Символ 2}
  WM_DANIL2 = WM_USER + 141;
{Символ 3}
  WM_DANIL3 = WM_USER + 142;
{Символ 4}
  WM_DANIL4 = WM_USER + 143;
{Символ 5}
  WM_DANIL5 = WM_USER + 144;
{Символ 6}
  WM_DANIL6 = WM_USER + 145;
{Символ 7}
  WM_DANIL7 = WM_USER + 146;
{Символ 8}
  WM_DANIL8 = WM_USER + 147;
{Символ 9}
  WM_DANIL9 = WM_USER + 148;
{Символ a}
  WM_DANILA = WM_USER + 149;
{Символ b}
  WM_DANILB = WM_USER + 150;
{Символ c}
  WM_DANILC = WM_USER + 151;
{Символ d}
  WM_DANILD = WM_USER + 152;
{Символ e}
  WM_DANILE = WM_USER + 153;
{Символ f}
  WM_DANILF = WM_USER + 154;
{Символ g}
  WM_DANILG = WM_USER + 155;
{Символ h}
  WM_DANILH = WM_USER + 156;
{Символ i}
  WM_DANILI = WM_USER + 157;
{Символ j}
  WM_DANILJ = WM_USER + 158;
{Символ k}
  WM_DANILK = WM_USER + 159;
{Символ l}
  WM_DANILL = WM_USER + 160;
{Символ m}
  WM_DANILM = WM_USER + 161;
{Символ n}
  WM_DANILN = WM_USER + 162;
{Символ o}
  WM_DANILO = WM_USER + 163;
{Символ p}
  WM_DANILP = WM_USER + 164;
{Символ q}
  WM_DANILQ = WM_USER + 165;
{Символ r}
  WM_DANILR = WM_USER + 166;
{Символ s}
  WM_DANILS = WM_USER + 167;
{Символ t}
  WM_DANILT = WM_USER + 168;
{Символ u}
  WM_DANILU = WM_USER + 169;
{Символ v}
  WM_DANILV = WM_USER + 170;
{Символ w}
  WM_DANILW = WM_USER + 171;
{Символ x}
  WM_DANILX = WM_USER + 172;
{Символ y}
  WM_DANILY = WM_USER + 173;
{Символ z}
  WM_DANILZ = WM_USER + 174;
{Символ 0 из NumLock}
  WM_DANILNP0 = WM_USER + 175;
{Символ 1 из NumLock}
  WM_DANILNP1 = WM_USER + 176;
{Символ 2 из NumLock}
  WM_DANILNP2 = WM_USER + 177;
{Символ 3 из NumLock}
  WM_DANILNP3 = WM_USER + 178;
{Символ 4 из NumLock}
  WM_DANILNP4 = WM_USER + 179;
{Символ 5 из NumLock}
  WM_DANILNP5 = WM_USER + 180;
{Символ 6 из NumLock}
  WM_DANILNP6 = WM_USER + 181;
{Символ 7 из NumLock}
  WM_DANILNP7 = WM_USER + 182;
{Символ 8 из NumLock}
  WM_DANILNP8 = WM_USER + 183;
{Символ 9 из NumLock}
  WM_DANILNP9 = WM_USER + 184;
{Символ * из NumLock}
  WM_DANILMUL = WM_USER + 185;
{Символ + из NumLock}
  WM_DANILADD = WM_USER + 186;
{Символ - из NumLock}
  WM_DANILSUB = WM_USER + 187;
{Символ . из NumLock}
  WM_DANILDEC = WM_USER + 188;
{Символ / из NumLock}
  WM_DANILDIV = WM_USER + 189;
{Символ ; или : OEM}
  WM_DANILOE1 = WM_USER + 190;
{Символ + OEM}
  WM_DANILOEPLUS = WM_USER + 191;
{Символ , OEM}
  WM_DANILOECOMMA = WM_USER + 192;
{Символ - OEM}
  WM_DANILOEMINUS = WM_USER + 193;
{Символ . OEM}
  WM_DANILOEPERIOD = WM_USER + 194;
{Символ / или ? OEM}
  WM_DANILOE2 = WM_USER + 195;
{Символ ~ OEM}
  WM_DANILOE3 = WM_USER + 196;
{Символ [ или { OEM}
  WM_DANILOE4 = WM_USER + 197;
{Символ \ или | OEM}
  WM_DANILOE5 = WM_USER + 198;
(*   Символ ] или } OEM   *)
  WM_DANILOE6 = WM_USER + 199;
{Символ ' или " OEM}
  WM_DANILOE7 = WM_USER + 200;

implementation

end.