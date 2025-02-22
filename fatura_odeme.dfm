object f_fatura_odeme: Tf_fatura_odeme
  Left = 0
  Top = 0
  Caption = 'Fatura '#214'deme'
  ClientHeight = 228
  ClientWidth = 369
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 54
    Top = 37
    Width = 51
    Height = 13
    Caption = 'Abone No:'
  end
  object Label2: TLabel
    Left = 24
    Top = 64
    Width = 81
    Height = 13
    Caption = #214'denecek Tutar:'
    Visible = False
  end
  object Label3: TLabel
    Left = 111
    Top = 119
    Width = 3
    Height = 13
  end
  object Edit1: TEdit
    Left = 111
    Top = 34
    Width = 121
    Height = 21
    Hint = 'Sayac No:'
    TabOrder = 0
    OnKeyPress = Edit1KeyPress
  end
  object Button1: TButton
    Left = 111
    Top = 88
    Width = 121
    Height = 25
    Caption = #214'DEME YAP'
    TabOrder = 1
    Visible = False
    OnClick = Button1Click
  end
  object Edit2: TEdit
    Left = 111
    Top = 61
    Width = 121
    Height = 21
    Hint = #214'denecek Tutar:'
    TabOrder = 2
    Visible = False
    OnKeyPress = Edit2KeyPress
  end
  object Button2: TButton
    Left = 111
    Top = 88
    Width = 121
    Height = 25
    Caption = 'BOR'#199' SORGULA'
    TabOrder = 3
    OnClick = Button2Click
  end
  object ADOQuery1: TADOQuery
    Connection = Form3.ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'a'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'select toplamtutar,borctutari'
      'from borc'
      'where aboneno=:a')
    Left = 248
    Top = 38
    object ADOQuery1toplamtutar: TBCDField
      FieldName = 'toplamtutar'
      Precision = 18
      Size = 2
    end
    object ADOQuery1borctutari: TBCDField
      FieldName = 'borctutari'
      Precision = 18
      Size = 2
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 304
    Top = 38
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery2
    Left = 304
    Top = 94
  end
  object ADOQuery2: TADOQuery
    Connection = Form3.ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'a'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'b'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'c'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'update borc set odenen=:a, borctutari=:b '
      'where aboneno=:c')
    Left = 248
    Top = 102
  end
  object DataSource3: TDataSource
    DataSet = ADOQuery3
    Left = 304
    Top = 160
  end
  object ADOQuery3: TADOQuery
    Connection = Form3.ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'x'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'select count(*) as adet from fatura where aboneno=:x')
    Left = 248
    Top = 160
    object ADOQuery3adet: TIntegerField
      FieldName = 'adet'
    end
  end
end
