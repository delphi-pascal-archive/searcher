unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,ShellAPI, Menus;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    GroupBox1: TGroupBox;
    Button1: TButton;
    PopupMenu1: TPopupMenu;
    Label1: TLabel;
    Button2: TButton;
    Yandexru1: TMenuItem;
    N1: TMenuItem;
    MSN1: TMenuItem;
    Yahoo1: TMenuItem;
    Rambler1: TMenuItem;
    ru1: TMenuItem;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure Yandexru1Click(Sender: TObject);
    procedure MSN1Click(Sender: TObject);
    procedure Yahoo1Click(Sender: TObject);
    procedure Rambler1Click(Sender: TObject);
    procedure ru1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  procedure CreateParams(var Params: TCreateParams); override;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  estyle:integer;
  //переменная поисковика
  poisk:string;
implementation

{$R *.dfm}
//Функция запуска
function ExecuteFile(const FileName,Params,DefaultDir:string;
ShowCmd:Integer):THandle;
var
zFileName,zParams,zDir:array [0..79 ] of Char;
begin
Result :=ShellExecute(Application.MainForm.Handle,nil,
StrPCopy(zFileName,FileName),StrpCopy(zParams,Params),
StrPCopy(zDir,DefaultDir),ShowCmd);
end;

procedure TForm1.CreateParams(var Params: TCreateParams);
begin
//Удаляем форму
inherited CreateParams(Params);
Params.Style := Params.Style or ws_popup xor ws_dlgframe;
end;

procedure TForm1.FormCreate(Sender: TObject);
var FormRgn: hRgn;
begin
//Создаём форму
estyle:=getwindowlong(application.Handle,gwl_exstyle);
setwindowlong(application.Handle,gwl_exstyle,estyle or ws_ex_toolwindow);
ScreenSnap:=TRUE;
SnapBuffer:=60;
Form1.Brush.Style := bsSolid;
GetWindowRgn(Form1.Handle, FormRgn);
DeleteObject(FormRgn);
//Form1.Height := 50;
//Form1.Width := 346;
SetWindowRgn(Form1.Handle, FormRgn, TRUE);
poisk:='http://yandex.ru/yandsearch?stype=www&nl=0&text=';
end;

procedure TForm1.Button1Click(Sender: TObject);
var s,sear:string;c,i:integer;mass:array[1..30] of string;
begin
//Присваем фразу которую будем искать
s:=edit1.Text;
//Находим сколько символов в строке
c:=Length(s);
//Чикл который ищет пробелы в фразе и мето пробела ставит +
for i:=1 to c do
begin
mass[i]:=copy(s,i,1);
if mass[i]=' ' then
mass[i]:='+';
sear:=sear+mass[i];
end;
//Открываем и ищем
ExecuteFile(poisk+sear,'','',SW_SHOW);
end;


procedure TForm1.N1Click(Sender: TObject);
begin
poisk:='http://www.google.ru/search?hl=ru&q=';
label1.Caption:='Поиск на Google.ru'
end;

procedure TForm1.Yandexru1Click(Sender: TObject);
begin
poisk:='http://yandex.ru/yandsearch?stype=www&nl=0&text=';
label1.Caption:='Поиск на Yandex.ru'
end;

procedure TForm1.MSN1Click(Sender: TObject);
begin
poisk:='http://search.msn.com/results.aspx?q=';
label1.Caption:='Поиск на MSN.com'
end;

procedure TForm1.Yahoo1Click(Sender: TObject);
begin
poisk:='http://search.yahoo.com/bin/query?p=';
label1.Caption:='Поиск на Yahoo.com'
end;

procedure TForm1.Rambler1Click(Sender: TObject);
begin
poisk:='http://search.rambler.ru/cgi-bin/rambler_search?english=0&and=1&words=';
label1.Caption:='Поиск на Rambler.ru'
end;

procedure TForm1.ru1Click(Sender: TObject);
begin
poisk:='http://sm.aport.ru/scripts/template.dll?r=';
label1.Caption:='Поиск на Апорт.ru'
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
 PopupMenu1.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
 Close;
end;

end.
