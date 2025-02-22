object F_fatura_kayit: TF_fatura_kayit
  Left = 0
  Top = 0
  Caption = 'Fatura Kay'#305't'
  ClientHeight = 297
  ClientWidth = 784
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 542
    Top = 32
    Width = 51
    Height = 13
    Caption = 'Abone No:'
  end
  object Label2: TLabel
    Left = 543
    Top = 59
    Width = 50
    Height = 13
    Caption = 'Ad Soyad:'
  end
  object Label3: TLabel
    Left = 561
    Top = 86
    Width = 32
    Height = 13
    Caption = 'Adres:'
  end
  object Label4: TLabel
    Left = 526
    Top = 113
    Width = 67
    Height = 13
    Caption = 'Kullan'#305'm T'#252'r'#252':'
  end
  object Label5: TLabel
    Left = 527
    Top = 140
    Width = 66
    Height = 13
    Caption = 'Okuma Tarihi:'
  end
  object Label6: TLabel
    Left = 541
    Top = 167
    Width = 52
    Height = 13
    Caption = #304'lk Endeks:'
  end
  object Label7: TLabel
    Left = 534
    Top = 194
    Width = 59
    Height = 13
    Caption = 'Son Endeks:'
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 29
    Width = 497
    Height = 208
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'aboneno'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'adsoyad'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'adres'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'turu'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'okumatarihi'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ilkendeks'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sonendeks'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tuketilen'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'birimfiyat'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'subedeli'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'kdv'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'toplamtutar'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sonodemetarihi'
        Width = 80
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 599
    Top = 218
    Width = 150
    Height = 25
    Caption = 'KAYDET'
    TabOrder = 1
    OnClick = Button1Click
  end
  object ComboBox1: TComboBox
    Left = 599
    Top = 110
    Width = 150
    Height = 21
    TabOrder = 2
    Text = 'Se'#231'iniz...'
    Items.Strings = (
      'Ev'
      #304#351' yeri')
  end
  object DateTimePicker1: TDateTimePicker
    Left = 599
    Top = 137
    Width = 150
    Height = 21
    Date = 44186.000000000000000000
    Time = 0.803298344908398600
    TabOrder = 3
  end
  object Edit1: TEdit
    Left = 599
    Top = 29
    Width = 150
    Height = 21
    TabOrder = 4
    OnKeyPress = Edit1KeyPress
  end
  object Edit3: TEdit
    Left = 599
    Top = 83
    Width = 150
    Height = 21
    TabOrder = 5
  end
  object Edit2: TEdit
    Left = 599
    Top = 56
    Width = 150
    Height = 21
    TabOrder = 6
    OnKeyPress = Edit2KeyPress
  end
  object Edit4: TEdit
    Left = 599
    Top = 164
    Width = 150
    Height = 21
    TabOrder = 7
    OnKeyPress = Edit4KeyPress
  end
  object Edit5: TEdit
    Left = 599
    Top = 191
    Width = 150
    Height = 21
    TabOrder = 8
    OnKeyPress = Edit5KeyPress
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 64
    Top = 88
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery1
    Left = 432
    Top = 80
  end
  object ADOQuery1: TADOQuery
    Tag = 70
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
      end
      item
        Name = 'd'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'e'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'f'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'g'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'h'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'j'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'k'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'l'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'm'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'n'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      
        'insert into fatura (aboneno,adsoyad,adres,turu,okumatarihi,ilken' +
        'deks,sonendeks,tuketilen,birimfiyat,subedeli,kdv,toplamtutar,son' +
        'odemetarihi) values (:a,:b,:c,:d,:e,:f,:g,:h,:j,:k,:l,:m,:n)')
    Left = 376
    Top = 80
  end
  object ADOTable1: TADOTable
    Connection = Form3.ADOConnection1
    CursorType = ctStatic
    TableName = 'fatura'
    Left = 128
    Top = 88
    object ADOTable1aboneno: TIntegerField
      FieldName = 'aboneno'
    end
    object ADOTable1adsoyad: TWideStringField
      FieldName = 'adsoyad'
      Size = 255
    end
    object ADOTable1adres: TWideStringField
      FieldName = 'adres'
      Size = 255
    end
    object ADOTable1turu: TWideStringField
      FieldName = 'turu'
      Size = 255
    end
    object ADOTable1okumatarihi: TDateTimeField
      FieldName = 'okumatarihi'
    end
    object ADOTable1ilkendeks: TIntegerField
      FieldName = 'ilkendeks'
    end
    object ADOTable1sonendeks: TIntegerField
      FieldName = 'sonendeks'
    end
    object ADOTable1tuketilen: TIntegerField
      FieldName = 'tuketilen'
    end
    object ADOTable1birimfiyat: TBCDField
      FieldName = 'birimfiyat'
      Precision = 18
      Size = 2
    end
    object ADOTable1subedeli: TBCDField
      FieldName = 'subedeli'
      Precision = 18
      Size = 2
    end
    object ADOTable1kdv: TBCDField
      FieldName = 'kdv'
      Precision = 18
      Size = 2
    end
    object ADOTable1toplamtutar: TBCDField
      FieldName = 'toplamtutar'
      Precision = 18
      Size = 2
    end
    object ADOTable1sonodemetarihi: TDateTimeField
      FieldName = 'sonodemetarihi'
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
      'select count(*) as adet from fatura where aboneno=:x')
    Left = 144
    Top = 152
    object ADOQuery2adet: TIntegerField
      FieldName = 'adet'
    end
  end
  object DataSource3: TDataSource
    Left = 208
    Top = 152
  end
  object ADOQuery3: TADOQuery
    Connection = Form3.ADOConnection1
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
      end
      item
        Name = 'd'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      
        'insert into borc (aboneno,toplamtutar,odenen,borctutari) values ' +
        '(:a,:b,:c,:d)')
    Left = 320
    Top = 152
  end
  object DataSource4: TDataSource
    DataSet = ADOQuery3
    Left = 376
    Top = 152
  end
end
