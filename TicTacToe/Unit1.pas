unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    btA1: TButton;
		btA2: TButton;
		btA3: TButton;
		btB1: TButton;
		btB2: TButton;
		btB3: TButton;
		btC1: TButton;
		btC2: TButton;
		btC3: TButton;
		procedure btA1Click(Sender: TObject);
		procedure btA2Click(Sender: TObject);
		procedure btA3Click(Sender: TObject);
		procedure btB1Click(Sender: TObject);
		procedure btB2Click(Sender: TObject);
		procedure btB3Click(Sender: TObject);
		procedure btC1Click(Sender: TObject);
		procedure btC2Click(Sender: TObject);
		procedure btC3Click(Sender: TObject);
		procedure FormCreate(Sender: TObject);
	private
		{ Private declarations }
		cPlayer1Token, cPlayer2Token: string;
		bPlayer1Turn: boolean;

		procedure PlayerClick(pos: int32; var button: TButton);
		function ThreeInARow: boolean;


	public
		{ Public declarations }
	end;

var
	Form1: TForm1;

implementation

{$R *.dfm}

function TForm1.ThreeInARow: boolean;
begin
  result := true;
end;

procedure TForm1.PlayerClick(pos: int32; var button: TButton);
begin
	// If the button has not yet beeen clicked, set it
	if button.Caption = '' then
	begin
		if bPlayer1Turn then
		begin
			button.Caption := cPlayer1Token;
		end
		else
		begin
			button.Caption := cPlayer2Token;
    end;
	end;

	// Determine whether a player has three in a row



	// Switch the players' turn.
	bPlayer1Turn := not bPlayer1Turn;
end;

procedure TForm1.btA1Click(Sender: TObject);
begin
	PlayerClick(0, btA1);
end;

procedure TForm1.btA2Click(Sender: TObject);
begin
	PlayerClick(1, btA2);
end;

procedure TForm1.btA3Click(Sender: TObject);
begin
	PlayerClick(2, btA3);
end;

procedure TForm1.btB1Click(Sender: TObject);
begin
	PlayerClick(3, btB1);
end;

procedure TForm1.btB2Click(Sender: TObject);
begin
	PlayerClick(4, btB2);
end;

procedure TForm1.btB3Click(Sender: TObject);
begin
	PlayerClick(5, btB3);
end;

procedure TForm1.btC1Click(Sender: TObject);
begin
	PlayerClick(6, btC1);
end;

procedure TForm1.btC2Click(Sender: TObject);
begin
	PlayerClick(7, btC2);
end;

procedure TForm1.btC3Click(Sender: TObject);
begin
	PlayerClick(8, btC3);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
	cPlayer1Token := 'X';
	cPlayer2Token := 'O';
	bPlayer1Turn := true;
end;

end.
