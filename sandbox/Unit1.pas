unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    TextInput: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation



{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  name : string;
  age : Int32;
  money : Float32;
  answer : Boolean;
  initial : Char;
begin
  // Input
  name := InputBox('Enter your name', 'Please enter  your name', '');
  age := StrToInt(InputBox('Enter age', 'asdf', ''));
  money := StrToFloat(InputBox('', 'ener money', '0.0'));
  initial := name[1];

  ShowMessage(Format('Name: {}, Age: {}, Money: {}, Initial: {}', name, age, FloatToStrF(money, ffCurrency,8,2), initial));
end;

end.
