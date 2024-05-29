unit uForm.Principale;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Abrir1: TMenuItem;
    SalvarComo1: TMenuItem;
    SalvarComo2: TMenuItem;
    Fechar: TMenuItem;
    Sobre1: TMenuItem;
    Memo1: TMemo;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    procedure FecharClick(Sender: TObject);
    procedure Abrir1Click(Sender: TObject);
    procedure SalvarComo1Click(Sender: TObject);
    procedure SalvarComo2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Abrir1Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
    Memo1.Lines.LoadFromFile(OpenDialog1.FileName);
end;

procedure TForm1.FecharClick(Sender: TObject);
begin
  Close;
end;

procedure TForm1.SalvarComo1Click(Sender: TObject);
begin
  if SaveDialog1.Execute then
    Memo1.Lines.SaveToFile(OpenDialog1.FileName);
end;

procedure TForm1.SalvarComo2Click(Sender: TObject);
begin
  Memo1.Lines.SaveToFile(SaveDialog1.FileName);
end;

end.
