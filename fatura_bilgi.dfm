object f_fatura_bilgi: Tf_fatura_bilgi
  Left = 0
  Top = 0
  Caption = 'Fatura Bilgi'
  ClientHeight = 190
  ClientWidth = 509
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 199
    Top = 86
    Width = 51
    Height = 18
    Caption = 'Label1'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label10: TLabel
    Left = 31
    Top = 62
    Width = 51
    Height = 13
    Caption = 'Abone No:'
  end
  object Label11: TLabel
    Left = 11
    Top = 86
    Width = 71
    Height = 13
    Caption = 'G'#252'venlik Kodu:'
  end
  object Edit1: TEdit
    Left = 88
    Top = 59
    Width = 169
    Height = 21
    Hint = 'Abone No'
    TabOrder = 0
    OnKeyPress = Edit1KeyPress
  end
  object Edit2: TEdit
    Left = 88
    Top = 83
    Width = 105
    Height = 21
    TabOrder = 1
    OnKeyPress = Edit2KeyPress
  end
  object Button1: TButton
    Left = 88
    Top = 110
    Width = 169
    Height = 25
    Caption = 'SORGULA'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Panel1: TPanel
    Left = 272
    Top = 12
    Width = 241
    Height = 161
    TabOrder = 3
    Visible = False
    object Label2: TLabel
      Left = 16
      Top = 24
      Width = 47
      Height = 18
      Caption = 'Say'#305'n;'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 69
      Top = 26
      Width = 37
      Height = 16
      Caption = 'Label3'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 15
      Top = 64
      Width = 76
      Height = 18
      Caption = 'Abone No:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 95
      Top = 66
      Width = 37
      Height = 16
      Caption = 'Label5'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 15
      Top = 88
      Width = 47
      Height = 18
      Caption = 'B'#246'lge:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 68
      Top = 90
      Width = 37
      Height = 16
      Caption = 'Label7'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 15
      Top = 112
      Width = 112
      Height = 18
      Caption = 'Saya'#231' Durumu:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 133
      Top = 114
      Width = 37
      Height = 16
      Caption = 'Label9'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 32
    Top = 8
  end
  object ADOQuery1: TADOQuery
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
      'select count(*) as adet '
      'from fatura '
      'where aboneno=:x')
    Top = 8
    object ADOQuery1adet: TIntegerField
      FieldName = 'adet'
    end
  end
  object ADOQuery2: TADOQuery
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
      'select aboneno,adsoyad as adsoy,adres as bolge '
      'from fatura'
      'where aboneno=:x')
    Left = 120
    Top = 8
    object ADOQuery2aboneno: TIntegerField
      FieldName = 'aboneno'
    end
    object ADOQuery2adsoy: TWideStringField
      FieldName = 'adsoy'
      Size = 255
    end
    object ADOQuery2bolge: TWideStringField
      FieldName = 'bolge'
      Size = 255
    end
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery2
    Left = 88
    Top = 8
  end
  object DataSource3: TDataSource
    DataSet = ADOQuery3
    Left = 208
    Top = 8
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
      'select borctutari'
      'from borc'
      'where aboneno=:x')
    Left = 184
    Top = 8
    object ADOQuery3borctutari: TBCDField
      FieldName = 'borctutari'
      Precision = 18
      Size = 2
    end
  end
end
