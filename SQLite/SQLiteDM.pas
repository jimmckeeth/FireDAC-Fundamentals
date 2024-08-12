unit SQLiteDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteWrapper.Stat, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.VCLUI.Error,
  FireDAC.VCLUI.Login, FireDAC.VCLUI.Wait, FireDAC.Comp.ScriptCommands,
  FireDAC.Stan.Util, FireDAC.VCLUI.Async, FireDAC.VCLUI.Script,
  FireDAC.Comp.UI, FireDAC.Comp.Script, FireDAC.Comp.Client, Data.DB,
  FireDAC.Comp.DataSet;

type
  Tsqlite = class(TDataModule)
    FDConnection: TFDConnection;
    FDScriptCreate: TFDScript;
    FDQueryEmployees: TFDQuery;
    FDQueryEmployeesemployee_id: TFDAutoIncField;
    FDQueryEmployeesfirst_name: TWideStringField;
    FDQueryEmployeeslast_name: TWideStringField;
    FDQueryEmployeesemail: TWideStringField;
    FDQueryEmployeesphone_number: TWideStringField;
    FDQueryEmployeesjob_id: TIntegerField;
    FDQueryEmployeesmanager_id: TIntegerField;
    FDQueryEmployeesdepartment_id: TIntegerField;
    FDQueryEmployeesDepartmantName: TWideStringField;
    FDQueryEmployeesJobTitle: TWideStringField;
    FDQueryEmployeeshire_date: TDateTimeField;
    FDQueryEmployeessalary: TCurrencyField;
    FDGUIxErrorDialog1: TFDGUIxErrorDialog;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDGUIxAsyncExecuteDialog1: TFDGUIxAsyncExecuteDialog;
    FDGUIxScriptDialog1: TFDGUIxScriptDialog;
    FDQueryJobs: TFDQuery;
    FDQueryDepartments: TFDQuery;
    FDQueryDepartmentsdepartment_id: TFDAutoIncField;
    FDQueryDepartmentsdepartment_name: TWideStringField;
    FDQueryDepartmentslocation_id: TIntegerField;
    FDQueryDepartmentscity: TWideStringField;
    FDQueryDependents: TFDQuery;
    FDQueryDependentsdependent_id: TFDAutoIncField;
    FDQueryDependentsfirst_name: TWideStringField;
    FDQueryDependentslast_name: TWideStringField;
    FDQueryDependentsrelationship: TWideStringField;
    FDQueryDependentsemployee_id: TIntegerField;
    FDQueryDependentsgardian_first: TWideStringField;
    FDQueryDependentsguardian_last: TWideStringField;
    FDQueryLocations: TFDQuery;
    FDQueryLocationslocation_id: TFDAutoIncField;
    FDQueryLocationsstreet_address: TWideStringField;
    FDQueryLocationspostal_code: TWideStringField;
    FDQueryLocationscity: TWideStringField;
    FDQueryLocationsstate_province: TWideStringField;
    FDQueryLocationscountry_name: TWideStringField;
    FDQueryLocationscountry_id: TWideStringField;
    FDQueryCountries: TFDQuery;
    FDQueryCountriescountry_id: TWideStringField;
    FDQueryCountriescountry_name: TWideStringField;
    FDQueryCountriesregion_id: TIntegerField;
    FDQueryCountriesregion_name: TWideStringField;
    FDQueryRegions: TFDQuery;
    FDQueryRegionsregion_id: TFDAutoIncField;
    FDQueryRegionsregion_name: TWideStringField;
    dsJobs: TDataSource;
    dsEmployees: TDataSource;
    dsDepartments: TDataSource;
    dsDependents: TDataSource;
    dsLocations: TDataSource;
    dsCountries: TDataSource;
    dsRegions: TDataSource;
    FDScriptDrop: TFDScript;
    FDQueryJobsjob_id: TFDAutoIncField;
    FDQueryJobsjob_title: TWideStringField;
    FDQueryJobsmin_salary: TCurrencyField;
    FDQueryJobsmax_salary: TCurrencyField;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Recreate;
    procedure OpenTables;
  end;

var
  sqlite: Tsqlite;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ Tsqlite }

procedure Tsqlite.Recreate;
begin
  FDScriptDrop.ExecuteAll;
  FDScriptCreate.ExecuteAll;
end;

procedure Tsqlite.OpenTables;
begin
  FDQueryEmployees.Open;
  FDQueryJobs.Open;
  FDQueryDependents.Open;
  FDQueryLocations.Open;
  FDQueryCountries.Open;
  FDQueryRegions.Open;
  FDQueryDepartments.Open;
end;

end.
