object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 254
  ClientWidth = 492
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=C:\Us' +
      'ers\elify\OneDrive\Masa'#252'st'#252'\2019707054_Elif_YALVA'#199'\fatura_takip.' +
      'mdb;Mode=Share Deny None;Extended Properties="";Persist Security' +
      ' Info=False;Jet OLEDB:System database="";Jet OLEDB:Registry Path' +
      '="";Jet OLEDB:Database Password="";Jet OLEDB:Engine Type=5;Jet O' +
      'LEDB:Database Locking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2' +
      ';Jet OLEDB:Global Bulk Transactions=1;Jet OLEDB:New Database Pas' +
      'sword="";Jet OLEDB:Create System Database=False;Jet OLEDB:Encryp' +
      't Database=False;Jet OLEDB:Don'#39't Copy Locale on Compact=False;Je' +
      't OLEDB:Compact Without Replica Repair=False;Jet OLEDB:SFP=False'
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 112
    Top = 16
  end
  object MainMenu1: TMainMenu
    Left = 32
    Top = 16
    object Dosya1: TMenuItem
      Caption = 'Fatura '#304#351'lemleri'
      object AbonelikSorgulama1: TMenuItem
        Caption = 'Fatura Bilgi'
        OnClick = AbonelikSorgulama1Click
      end
      object FaturaKayt1: TMenuItem
        Caption = 'Fatura Kay'#305't'
        OnClick = FaturaKayt1Click
      end
      object AbonelikSorgulama2: TMenuItem
        Caption = 'Fatura '#214'deme'
        OnClick = AbonelikSorgulama2Click
      end
      object Y1: TMenuItem
        Caption = 'Yedek Al'
        OnClick = Y1Click
      end
    end
    object k1: TMenuItem
      Caption = #199#305'k'#305#351
      OnClick = k1Click
    end
  end
  object query_tabloları_sil: TADOQuery
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\elify\OneD' +
      'rive\Masa'#252'st'#252'\2019707054_Elif_YALVA'#199'\Win32\Debug\yedek.mdb;Persi' +
      'st Security Info=False'
    Parameters = <>
    SQL.Strings = (
      'DROP TABLE fatura,borc')
    Left = 280
    Top = 32
  end
  object DataSource1: TDataSource
    DataSet = query_tabloları_sil
    Left = 376
    Top = 32
  end
  object query_fatura_tablo_yedek: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'INTO fatura IN '#39'yedek.mdb'#39
      'FROM fatura;')
    Left = 280
    Top = 152
  end
  object DataSource2: TDataSource
    DataSet = query_fatura_tablo_yedek
    Left = 384
    Top = 152
  end
  object query_borc_tablo_yedek: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'INTO borc IN '#39'yedek.mdb'#39
      'FROM borc;')
    Left = 280
    Top = 88
  end
  object DataSource3: TDataSource
    DataSet = query_borc_tablo_yedek
    Left = 376
    Top = 88
  end
end
