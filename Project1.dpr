program Project1;

{$R *.dres}

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Form.Explorer in 'Form.Explorer.pas' {FormExplorer},
  Gerenciador.form in 'Gerenciador.form.pas',
  Form.Frame in 'Form.Frame.pas' {FrameItem: TFrame},
  Form.Produto in 'Form.Produto.pas' {FormProduto};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TFormExplorer, FormExplorer);
  Application.CreateForm(TFormProduto, FormProduto);
  Application.Run;
end.
