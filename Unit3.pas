unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.Mask, Vcl.DBCtrls, Data.Win.ADODB, Vcl.Grids, Vcl.DBGrids, Vcl.Menus;

type
  TForm3 = class(TForm)
    ADOConnection1: TADOConnection;
    MainMenu1: TMainMenu;
    Dosya1: TMenuItem;
    k1: TMenuItem;
    AbonelikSorgulama1: TMenuItem;
    AbonelikSorgulama2: TMenuItem;
    FaturaKayt1: TMenuItem;
    Y1: TMenuItem;
    query_tablolarý_sil: TADOQuery;
    DataSource1: TDataSource;
    query_fatura_tablo_yedek: TADOQuery;
    DataSource2: TDataSource;
    query_borc_tablo_yedek: TADOQuery;
    DataSource3: TDataSource;
    procedure k1Click(Sender: TObject);
    procedure FaturaKayt1Click(Sender: TObject);
    procedure AbonelikSorgulama1Click(Sender: TObject);
    procedure AbonelikSorgulama2Click(Sender: TObject);
    procedure Y1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation
    uses fatura_kayit, fatura_bilgi, fatura_odeme;
{$R *.dfm}

procedure TForm3.AbonelikSorgulama1Click(Sender: TObject);
begin
Application.CreateForm(Tf_fatura_bilgi, f_fatura_bilgi);
f_fatura_bilgi.ShowModal;
f_fatura_bilgi.Free;
end;

procedure TForm3.AbonelikSorgulama2Click(Sender: TObject);
begin
Application.CreateForm(Tf_fatura_odeme, f_fatura_odeme);
f_fatura_odeme.ShowModal;
f_fatura_odeme.Free;
end;

procedure TForm3.FaturaKayt1Click(Sender: TObject);
begin
Application.CreateForm(Tf_fatura_kayit, f_fatura_kayit);
f_fatura_kayit.ShowModal;
f_fatura_kayit.Free;
end;

procedure TForm3.k1Click(Sender: TObject);
begin
if(Application.MessageBox('Program Kapatýlsýn Mý?','UYARI',MB_YESNO+MB_ICONSTOP) = mrYes) Then
  Close;
end;

procedure TForm3.Y1Click(Sender: TObject);
begin
query_tablolarý_sil.Close;
query_tablolarý_sil.ExecSQL;
query_fatura_tablo_yedek.Close;
query_fatura_tablo_yedek.ExecSQL;
query_borc_tablo_yedek.Close;
query_borc_tablo_yedek.ExecSQL;
ShowMessage('Yedek alýndý.');   // Yedek tablosu Win32/Debug içinde
end;

end.
