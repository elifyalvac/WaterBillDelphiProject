program su_fatura_takip;

uses
  Vcl.Forms,
  Unit3 in 'Unit3.pas' {Form3},
  fatura_kayit in 'fatura_kayit.pas' {F_fatura_kayit},
  fatura_bilgi in 'fatura_bilgi.pas' {f_fatura_bilgi},
  fatura_odeme in 'fatura_odeme.pas' {f_fatura_odeme};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
