object Form26: TForm26
  Left = 0
  Top = 0
  Caption = 'FireDAC MariaDB'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnShow = FormShow
  TextHeight = 15
  object DBGrid1: TDBGrid
    Left = 8
    Top = 48
    Width = 608
    Height = 215
    DataSource = MariaDB.dsEmployee
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
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
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'last_name'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'JobTitle'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DepartmantName'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'email'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'phone_number'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'hire_date'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'salary'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Manager_Name'
        Width = 100
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 8
    Top = 288
    Width = 608
    Height = 145
    DataSource = MariaDB.dsDependents
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object Button2: TButton
    Left = 8
    Top = 8
    Width = 75
    Height = 25
    Caption = 're-create'
    TabOrder = 2
    OnClick = Button2Click
  end
end
