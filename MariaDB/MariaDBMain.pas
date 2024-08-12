unit MariaDBMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls;

type
  TForm26 = class(TForm)
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1ColEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure SetDetailsGrid;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form26: TForm26;

implementation

{$R *.dfm}

uses MariaDBDM;

procedure TForm26.Button2Click(Sender: TObject);
begin
  MariaDB.Recreate;
  MariaDB.OpenTables;
  BringToFront;
end;


procedure TForm26.DBGrid1CellClick(Column: TColumn);
begin
  SetDetailsGrid;

end;

procedure TForm26.DBGrid1ColEnter(Sender: TObject);
begin
  SetDetailsGrid;
end;

procedure TForm26.FormShow(Sender: TObject);
begin
  MariaDB.OpenTables;
end;

procedure TForm26.SetDetailsGrid;
begin
  if DBGrid1.SelectedField = MariaDB.FDQueryEmployeesDepartmantName then
  begin
    DBGrid2.DataSource := MariaDB.dsDepartments;
    MariaDB.FDQueryDepartments.Locate('department_id',
    MariaDB.FDQueryEmployeesdepartment_id.Value,[]);
  end
  else
    DBGrid2.DataSource := MariaDB.dsDependents;
end;

end.
