program BloccoNote;

uses
  Vcl.Forms,
  uForm.Principale in 'uForm.Principale.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
