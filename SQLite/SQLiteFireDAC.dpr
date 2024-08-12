program SQLiteFireDAC;

uses
  Vcl.Forms,
  SQLiteMain in 'SQLiteMain.pas' {Form26},
  SQLiteDM in 'SQLiteDM.pas' {sqlite: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm26, Form26);
  Application.CreateForm(Tsqlite, sqlite);
  Application.Run;
end.
