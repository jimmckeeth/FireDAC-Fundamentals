program MySQLFireDAC;

uses
  Vcl.Forms,
  MySQLMain in 'MySQLMain.pas' {Form26},
  MySQLDM in 'MySQLDM.pas' {MySQL: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm26, Form26);
  Application.CreateForm(TMySQL, MySQL);
  Application.Run;
end.
