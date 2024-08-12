program MariaDBFireDAC;

uses
  Vcl.Forms,
  MariaDBMain in 'MariaDBMain.pas' {Form26},
  MariaDBDM in 'MariaDBDM.pas' {MariaDB: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm26, Form26);
  Application.CreateForm(TMariaDB, MariaDB);
  Application.Run;
end.
