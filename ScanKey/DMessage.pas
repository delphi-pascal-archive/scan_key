unit DMessage;

interface

uses Messages;

const
{���������������� ���������}

{������ BackSpace}
  WM_DANILBACK = WM_USER + 126;
{������ Tab}
  WM_DANILTAB = WM_USER + 127;
{������ Enter}
  WM_DANILRETURN = WM_USER + 128;
{������ Shift}
  WM_DANILSHIFT = WM_USER + 129;
{������ Ctrl}
  WM_DANILCONTROL = WM_USER + 130;
{������ Alt}
  WM_DANILMENU = WM_USER + 131;
{������ Esc}
  WM_DANILESC = WM_USER + 132;
{������ Space}
  WM_DANILSPACE = WM_USER + 133;
{������ Left}
  WM_DANILLEFT = WM_USER + 134;
{������ Up}
  WM_DANILUP = WM_USER + 135;
{������ Right}
  WM_DANILRIGHT = WM_USER + 136;
{������ Down}
  WM_DANILDOWN = WM_USER + 137;
{������ Del}
  WM_DANILDELETE = WM_USER + 138;
{������ 0}
  WM_DANIL0 = WM_USER + 139;
{������ 1}
  WM_DANIL1 = WM_USER + 140;
{������ 2}
  WM_DANIL2 = WM_USER + 141;
{������ 3}
  WM_DANIL3 = WM_USER + 142;
{������ 4}
  WM_DANIL4 = WM_USER + 143;
{������ 5}
  WM_DANIL5 = WM_USER + 144;
{������ 6}
  WM_DANIL6 = WM_USER + 145;
{������ 7}
  WM_DANIL7 = WM_USER + 146;
{������ 8}
  WM_DANIL8 = WM_USER + 147;
{������ 9}
  WM_DANIL9 = WM_USER + 148;
{������ a}
  WM_DANILA = WM_USER + 149;
{������ b}
  WM_DANILB = WM_USER + 150;
{������ c}
  WM_DANILC = WM_USER + 151;
{������ d}
  WM_DANILD = WM_USER + 152;
{������ e}
  WM_DANILE = WM_USER + 153;
{������ f}
  WM_DANILF = WM_USER + 154;
{������ g}
  WM_DANILG = WM_USER + 155;
{������ h}
  WM_DANILH = WM_USER + 156;
{������ i}
  WM_DANILI = WM_USER + 157;
{������ j}
  WM_DANILJ = WM_USER + 158;
{������ k}
  WM_DANILK = WM_USER + 159;
{������ l}
  WM_DANILL = WM_USER + 160;
{������ m}
  WM_DANILM = WM_USER + 161;
{������ n}
  WM_DANILN = WM_USER + 162;
{������ o}
  WM_DANILO = WM_USER + 163;
{������ p}
  WM_DANILP = WM_USER + 164;
{������ q}
  WM_DANILQ = WM_USER + 165;
{������ r}
  WM_DANILR = WM_USER + 166;
{������ s}
  WM_DANILS = WM_USER + 167;
{������ t}
  WM_DANILT = WM_USER + 168;
{������ u}
  WM_DANILU = WM_USER + 169;
{������ v}
  WM_DANILV = WM_USER + 170;
{������ w}
  WM_DANILW = WM_USER + 171;
{������ x}
  WM_DANILX = WM_USER + 172;
{������ y}
  WM_DANILY = WM_USER + 173;
{������ z}
  WM_DANILZ = WM_USER + 174;
{������ 0 �� NumLock}
  WM_DANILNP0 = WM_USER + 175;
{������ 1 �� NumLock}
  WM_DANILNP1 = WM_USER + 176;
{������ 2 �� NumLock}
  WM_DANILNP2 = WM_USER + 177;
{������ 3 �� NumLock}
  WM_DANILNP3 = WM_USER + 178;
{������ 4 �� NumLock}
  WM_DANILNP4 = WM_USER + 179;
{������ 5 �� NumLock}
  WM_DANILNP5 = WM_USER + 180;
{������ 6 �� NumLock}
  WM_DANILNP6 = WM_USER + 181;
{������ 7 �� NumLock}
  WM_DANILNP7 = WM_USER + 182;
{������ 8 �� NumLock}
  WM_DANILNP8 = WM_USER + 183;
{������ 9 �� NumLock}
  WM_DANILNP9 = WM_USER + 184;
{������ * �� NumLock}
  WM_DANILMUL = WM_USER + 185;
{������ + �� NumLock}
  WM_DANILADD = WM_USER + 186;
{������ - �� NumLock}
  WM_DANILSUB = WM_USER + 187;
{������ . �� NumLock}
  WM_DANILDEC = WM_USER + 188;
{������ / �� NumLock}
  WM_DANILDIV = WM_USER + 189;
{������ ; ��� : OEM}
  WM_DANILOE1 = WM_USER + 190;
{������ + OEM}
  WM_DANILOEPLUS = WM_USER + 191;
{������ , OEM}
  WM_DANILOECOMMA = WM_USER + 192;
{������ - OEM}
  WM_DANILOEMINUS = WM_USER + 193;
{������ . OEM}
  WM_DANILOEPERIOD = WM_USER + 194;
{������ / ��� ? OEM}
  WM_DANILOE2 = WM_USER + 195;
{������ ~ OEM}
  WM_DANILOE3 = WM_USER + 196;
{������ [ ��� { OEM}
  WM_DANILOE4 = WM_USER + 197;
{������ \ ��� | OEM}
  WM_DANILOE5 = WM_USER + 198;
(*   ������ ] ��� } OEM   *)
  WM_DANILOE6 = WM_USER + 199;
{������ ' ��� " OEM}
  WM_DANILOE7 = WM_USER + 200;

implementation

end.