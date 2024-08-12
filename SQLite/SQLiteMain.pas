unit SQLiteMain;

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
    procedure DBGrid2CellClick(Column: TColumn);
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

uses SQLiteDM;

procedure TForm26.Button2Click(Sender: TObject);
begin
  SQLite.Recreate;
  SQLite.OpenTables;
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

procedure TForm26.DBGrid2CellClick(Column: TColumn);
begin
  if DBGrid2.DataSource = sqlite.dsDepartments then
  begin
    sqlite.FDQueryEmployees.Edit;
    sqlite.FDQueryEmployeesdepartment_id.Value :=
      sqlite.FDQueryDepartmentsdepartment_id.Value;
    sqlite.FDQueryEmployees.Post;
  end;

end;

procedure TForm26.FormShow(Sender: TObject);
begin
  sqlite.OpenTables;
end;

procedure TForm26.SetDetailsGrid;
begin
  if DBGrid1.SelectedField = Sqlite.FDQueryEmployeesDepartmantName then
  begin
    DBGrid2.DataSource := Sqlite.dsDepartments;
    Sqlite.FDQueryDepartments.Locate('department_id',
     Sqlite.FDQueryEmployeesdepartment_id.Value,[]);
  end
  else if DBGrid1.SelectedField = Sqlite.FDQueryEmployeesJobTitle then
  begin
    DBGrid2.DataSource := Sqlite.dsJobs;
    Sqlite.FDQueryJobs.Locate('job_id',
    Sqlite.FDQueryEmployeesjob_id.Value,[]);
  end
  else
    DBGrid2.DataSource := Sqlite.dsDependents;
end;

end.
