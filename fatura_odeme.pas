unit fatura_odeme;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls;

type
  Tf_fatura_odeme = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    ADOQuery2: TADOQuery;
    Label3: TLabel;
    Button2: TButton;
    ADOQuery1toplamtutar: TBCDField;
    ADOQuery1borctutari: TBCDField;
    DataSource3: TDataSource;
    ADOQuery3: TADOQuery;
    ADOQuery3adet: TIntegerField;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_fatura_odeme: Tf_fatura_odeme;

implementation
      uses Unit3;
{$R *.dfm}

procedure Tf_fatura_odeme.Button1Click(Sender: TObject);
var paraustu:single;
begin
ADOQuery1.Close;
ADOQuery1.Open;

if strtofloat(Edit2.Text)>=ADOQuery1borctutari.Value then
  begin
    ADOQuery2.Close;
    ADOQuery2.Parameters[0].Value:=strtofloat(Edit2.Text);
    ADOQuery2.Parameters[1].Value:=0;
    ADOQuery2.Parameters[2].Value:=strtoint(Edit1.Text);
    ADOQuery2.ExecSQL;
    ShowMessage('Borcunuz ödenmiþtir.');
    paraustu:=strtofloat(Edit2.Text)-ADOQuery1borctutari.Value;
    if paraustu>0 then
      ShowMessage('Para üstünüz= '+floattostr(Round(paraustu)));
  end
else
  Label3.Caption:='Yetersiz TL. Lütfen en az '+ floattostr(ADOQuery1borctutari.Value) +' TL ödeme yapýnýz.';

end;

procedure Tf_fatura_odeme.Button2Click(Sender: TObject);
begin
ADOQuery1.Close;
ADOQuery1.Parameters[0].Value:=strtoint(Edit1.Text);
ADOQuery1.Open;

ADOQuery3.Close;
ADOQuery3.Parameters[0].Value:=StrToInt(Edit1.Text);
ADOQuery3.Open;

if ADOQuery3adet.Value<>0 then
  begin
    if ADOQuery1borctutari.Value=0 then
       Label3.Caption:='Abone numarasýna ait borç bulunmamaktadýr.'
    else
    begin
       Label3.Caption:= FloatToStr(ADOQuery1borctutari.Value)+' TL borcunuz bulunmaktadýr.';
       Edit2.Visible:=true;
       Label2.Visible:=true;
       Button1.Visible:=true;
       Button2.Visible:=false;
    end;
  end
  else
    ShowMessage('Bu abone numarasýna ait kayýt bulunamadý.');
end;

procedure EditeSadeceSayiGir(Sender: TObject; var Key: Char; Ondalikli: Boolean = True);
begin
if Ondalikli then
begin
if not (key in ['0'..'9', #8, '.', ',']) then
Key := #0
end
else
begin
if not (key in ['0'..'9', #8]) then
Key := #0
end;
end;

procedure Tf_fatura_odeme.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
EditeSadeceSayiGir(Sender, Key, False);
end;

procedure Tf_fatura_odeme.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
EditeSadeceSayiGir(Sender, Key);
end;

end.
