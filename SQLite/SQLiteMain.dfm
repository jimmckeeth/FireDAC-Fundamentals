object Form26: TForm26
  Left = 0
  Top = 0
  Margins.Left = 5
  Margins.Top = 5
  Margins.Right = 5
  Margins.Bottom = 5
  Caption = 'FireDAC SQLite'
  ClientHeight = 662
  ClientWidth = 945
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -18
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnShow = FormShow
  PixelsPerInch = 144
  TextHeight = 25
  object DBGrid1: TDBGrid
    Left = 12
    Top = 72
    Width = 912
    Height = 323
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    DataSource = sqlite.dsEmployees
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -18
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    OnColEnter = DBGrid1ColEnter
    Columns = <
      item
        Expanded = False
        FieldName = 'employee_id'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'first_name'
        Title.Caption = 'First Name'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'last_name'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'JobTitle'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DepartmantName'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'email'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'phone_number'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'hire_date'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'salary'
        Width = 96
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Manager_Name'
        Width = 150
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 12
    Top = 432
    Width = 912
    Height = 218
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    DataSource = sqlite.dsDependents
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -18
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    OnCellClick = DBGrid2CellClick
  end
  object Button2: TButton
    Left = 12
    Top = 12
    Width = 113
    Height = 38
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 're-create'
    TabOrder = 2
    OnClick = Button2Click
  end
end
