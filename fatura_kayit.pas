unit fatura_kayit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB,
  Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids, Unit3, Vcl.ExtCtrls;

type
  TF_fatura_kayit = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBGrid1: TDBGrid;
    Button1: TButton;
    ComboBox1: TComboBox;
    DateTimePicker1: TDateTimePicker;
    Edit1: TEdit;
    Edit3: TEdit;
    Edit2: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    ADOQuery1: TADOQuery;
    ADOTable1: TADOTable;
    ADOTable1aboneno: TIntegerField;
    ADOTable1adsoyad: TWideStringField;
    ADOTable1adres: TWideStringField;
    ADOTable1turu: TWideStringField;
    ADOTable1okumatarihi: TDateTimeField;
    ADOTable1ilkendeks: TIntegerField;
    ADOTable1sonendeks: TIntegerField;
    ADOTable1tuketilen: TIntegerField;
    ADOTable1birimfiyat: TBCDField;
    ADOTable1subedeli: TBCDField;
    ADOTable1kdv: TBCDField;
    ADOTable1toplamtutar: TBCDField;
    ADOTable1sonodemetarihi: TDateTimeField;
    ADOQuery2: TADOQuery;
    DataSource3: TDataSource;
    ADOQuery2adet: TIntegerField;
    ADOQuery3: TADOQuery;
    DataSource4: TDataSource;
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_fatura_kayit: TF_fatura_kayit;

implementation

{$R *.dfm}

procedure TF_fatura_kayit.Button1Click(Sender: TObject);
var birimfiyat,subedeli,kdv:single;
    tuketilen,adet:integer;
begin
ADOQuery2.Close;
ADOQuery2.Parameters[0].Value:=StrToInt(Edit1.Text);
ADOQuery2.Open;

if StrToInt(Edit4.Text)<StrToInt(Edit5.Text) then
  begin
    if (Edit1.Text<>'') and (Edit2.Text<>'') and (Edit3.Text<>'') and (ComboBox1.ItemIndex<>-1) and (Edit4.Text<>'') and (Edit5.Text<>'') then
      begin
        if ADOQuery2adet.Value=0 then
          begin
            ADOQuery1.Close;
            ADOQuery1.Parameters[0].Value:=StrToInt(Edit1.Text);
            ADOQuery1.Parameters[1].Value:=Edit2.Text;
            ADOQuery1.Parameters[2].Value:=Edit3.Text;
            ADOQuery1.Parameters[3].Value:=ComboBox1.Items[ComboBox1.ItemIndex];
            ADOQuery1.Parameters[4].Value:=DateTimePicker1.DateTime;
            ADOQuery1.Parameters[5].Value:=StrToInt(Edit4.Text);
            ADOQuery1.Parameters[6].Value:=StrToInt(Edit5.Text);
            tuketilen:=StrToInt(Edit5.Text)-StrToInt(Edit4.Text);
            ADOQuery1.Parameters[7].Value:=tuketilen;
            if ComboBox1.ItemIndex=0 then
              birimfiyat:=4.98
            else
              birimfiyat:=12.72;
            ADOQuery1.Parameters[8].Value:=birimfiyat;
            subedeli:=birimfiyat*tuketilen;
            ADOQuery1.Parameters[9].Value:=subedeli;
            kdv:=subedeli*0.8;
            ADOQuery1.Parameters[10].Value:=kdv;
            ADOQuery1.Parameters[11].Value:=kdv+subedeli;
            ADOQuery1.Parameters[12].Value:=StrToDateTime(DateTimeToStr(DateTimePicker1.DateTime+15));
            ADOQuery1.ExecSQL;

            ADOQuery3.Close;
            ADOQuery3.Parameters[0].Value:=StrToInt(Edit1.Text);
            ADOQuery3.Parameters[1].Value:=kdv+subedeli;
            ADOQuery3.Parameters[2].Value:=0;
            ADOQuery3.Parameters[3].Value:=kdv+subedeli;
            ADOQuery3.ExecSQL;

            ShowMessage('Kayýt Edildi.');
            Edit1.Clear;
            Edit2.Clear;
            Edit3.Clear;
            Edit4.Clear;
            Edit5.Clear;
            ComboBox1.Text:='Seçiniz...';
          end
        else
          ShowMessage('Bu abone no ile daha önce kayýt yapýlmýþ.');
      end
    else
      ShowMessage('Lütfen hiçbir alaný boþ geçmeyiniz.');
  end
else
  ShowMessage('Ýlk endex son endexden küçük olmalý.');
ADOTable1.Close;
ADOTable1.Open;
end;

procedure TF_fatura_kayit.FormActivate(Sender: TObject);
begin
ADOTable1.Open;
end;

procedure TF_fatura_kayit.FormClose(Sender: TObject; var Action: TCloseAction);
begin
ADOTable1.Close;
end;

procedure EditeSadeceSayiGir(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9', #8]) then
Key := #0
end;

procedure EditeSadeceHarfGir(Sender: TObject; var Key: Char);
begin
const
  CHAR_LIST = '1234567890ABC...';
if Pos(Key, CHAR_LIST) > 0 then
  Key := #0;
end;

procedure TF_fatura_kayit.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
EditeSadeceSayiGir(Sender, Key);
end;

procedure TF_fatura_kayit.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
EditeSadeceHarfGir(Sender, Key);
end;

procedure TF_fatura_kayit.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
EditeSadeceSayiGir(Sender, Key);
end;

procedure TF_fatura_kayit.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
EditeSadeceSayiGir(Sender, Key);
end;

end.
