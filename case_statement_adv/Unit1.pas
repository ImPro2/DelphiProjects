unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Samples.Spin;

type
	TForm1 = class(TForm)
		ColorRadioGroup: TRadioGroup;
		PercentageSpinEdit: TSpinEdit;
		PercentageInfoButton: TButton;
		procedure ColorRadioGroupClick(Sender: TObject);
		procedure PercentageInfoButtonClick(Sender: TObject);
	private
		procedure ChangeColor(color: TColor; str: string);
	public
		{ Public declarations }
	end;

var
	Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.ChangeColor(color: TColor; str: string);
begin
	Form1.Color   := color;
	Form1.Caption := str;
end;

procedure TForm1.ColorRadioGroupClick(Sender: TObject);
var
	i: Integer;
begin
	case ColorRadioGroup.ItemIndex of
	0: ChangeColor(TColor($0000FF), ColorRadioGroup.Items[ColorRadioGroup.ItemIndex]); // red
	1: ChangeColor(TColor($00A5FF), ColorRadioGroup.Items[ColorRadioGroup.ItemIndex]); // orange
	2: ChangeColor(TColor($00FFFF), ColorRadioGroup.Items[ColorRadioGroup.ItemIndex]); // yellow
	3: ChangeColor(TColor($00FF00), ColorRadioGroup.Items[ColorRadioGroup.ItemIndex]); // green
	4: ChangeColor(TColor($FF0000), ColorRadioGroup.Items[ColorRadioGroup.ItemIndex]); // blue
	5: ChangeColor(TColor($82004B), ColorRadioGroup.Items[ColorRadioGroup.ItemIndex]); // indigo
	6: ChangeColor(TColor($FF008F), ColorRadioGroup.Items[ColorRadioGroup.ItemIndex]); // violet
	end;

end;

procedure TForm1.PercentageInfoButtonClick(Sender: TObject);
begin
	case PercentageSpinEdit.Value of
	80..100: ShowMessage('A');
	70..79:  ShowMessage('B');
	60..69:  ShowMessage('C');
	50..59:  ShowMessage('D');
	40..49:  ShowMessage('E');
	else     ShowMessage('F');
	end;
end;

end.
