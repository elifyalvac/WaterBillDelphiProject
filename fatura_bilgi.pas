unit fatura_bilgi;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.Math, Vcl.Buttons,
  Data.DB, Data.Win.ADODB, Vcl.ExtCtrls;

type
  Tf_fatura_bilgi = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Label1: TLabel;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    ADOQuery1adet: TIntegerField;
    ADOQuery2: TADOQuery;
    DataSource2: TDataSource;
    ADOQuery2aboneno: TIntegerField;
    ADOQuery2adsoy: TWideStringField;
    ADOQuery2bolge: TWideStringField;
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DataSource3: TDataSource;
    ADOQuery3: TADOQuery;
    ADOQuery3borctutari: TBCDField;
    Label10: TLabel;
    Label11: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_fatura_bilgi: Tf_fatura_bilgi;

implementation
    uses Unit3;
{$R *.dfm}

var rndsayi:integer;
procedure Tf_fatura_bilgi.Button1Click(Sender: TObject);
begin
ADOQuery1.Close;
ADOQuery1.Parameters[0].Value:=StrToInt(Edit1.Text);
ADOQuery1.Open;

ADOQuery2.Close;
ADOQuery2.Parameters[0].Value:=StrToInt(Edit1.Text);
ADOQuery2.Open;

ADOQuery3.Close;
ADOQuery3.Parameters[0].Value:=StrToInt(Edit1.Text);
ADOQuery3.Open;

if Edit2.Text=inttostr(rndsayi) then
  if ADOQuery1adet.Value<>0 then
  begin
     label3.Caption:=ADOQuery2adsoy.Value;
     label5.Caption:=inttostr(ADOQuery2aboneno.Value);
     label7.Caption:=ADOQuery2bolge.Value;
     if ADOQuery3borctutari.Value=0 then
        label9.Caption:='Baðlý'
     else
        label9.Caption:='Baðlý Deðil';
     Panel1.Visible:=true;
  end
  else
     ShowMessage('Geçersiz bir abone numarasý girdiniz.Lütfen tekrar deneyiniz.')
else
  begin
    ShowMessage('Geçersiz güvenlik kodu');
    rndsayi:=RandomRange(999,10000);
    Label1.Caption:=IntToStr(rndsayi);
  end;
end;

procedure EditeSadeceSayiGir(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9', #8]) then
Key := #0
end;

procedure Tf_fatura_bilgi.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
EditeSadeceSayiGir(Sender, Key);
end;

procedure Tf_fatura_bilgi.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
EditeSadeceSayiGir(Sender, Key);
end;

procedure Tf_fatura_bilgi.FormCreate(Sender: TObject);
begin
rndsayi:=RandomRange(999,10000);
Label1.Caption:=IntToStr(rndsayi);
end;

end.
