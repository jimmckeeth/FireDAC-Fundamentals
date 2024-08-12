unit MariaDBDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.VCLUI.Login, FireDAC.VCLUI.Wait, FireDAC.Comp.ScriptCommands,
  FireDAC.Stan.Util, FireDAC.VCLUI.Async, FireDAC.VCLUI.Script,
  FireDAC.Comp.UI, FireDAC.Comp.Script, FireDAC.Comp.Client, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Phys.PG, FireDAC.Phys.PGDef,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.VCLUI.Error, FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef;

type
  TMariaDB = class(TDataModule)
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
    FDQueryEmployeesManager_Name: TWideStringField;
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
    dsEmployee: TDataSource;
    dsDepartments: TDataSource;
    dsDependents: TDataSource;
    dsLocations: TDataSource;
    dsCountries: TDataSource;
    dsRegions: TDataSource;
    FDScriptDrop: TFDScript;
    FDConnection: TFDConnection;
    FDQueryEmployeessalary: TFMTBCDField;
    FDQueryEmployeeshire_date: TDateField;
    FDGUIxLoginDialog1: TFDGUIxLoginDialog;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Recreate;
    procedure OpenTables;
  end;

var
  MariaDB: TMariaDB;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TMariaDB }

procedure TMariaDB.Recreate;
begin
  FDScriptDrop.ExecuteAll;
  FDScriptCreate.ExecuteAll;
end;

procedure TMariaDB.OpenTables;
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
