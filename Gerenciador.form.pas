unit Gerenciador.form;

interface

uses
  System.Classes, Vcl.ExtCtrls, Vcl.Forms, System.Generics.Collections;

Type
  IGerenciadorForm = interface
  ['{79805920-579A-45E8-9FB1-5B14FB69B694}']
   function AddForm(key : String; Value : TComponentClass; const Parent : TPanel; Index : Boolean = false) : IGerenciadorForm;
   function GetForm(Value : String) : TForm;
   function GetFormIndex : TForm;
   function RemoveForm(Value : String) : IGerenciadorForm;
  end;


TGerenciadorForm = class(TComponent, IGerenciadorForm)
private
  { private declarations }
    FormIndex : TForm;
    ListaForm : TObjectDictionary<String, TForm>;
protected
  { protected declarations }
public
  { public declarations }
  constructor Create;
  destructor  Destroy; override;
  function AddForm(key : String; Value : TComponentClass; const Parent : TPanel; Index : Boolean = false) : IGerenciadorForm;
  function GetForm(Value : String) : TForm;
  function GetFormIndex : TForm;
  function RemoveForm(Value : String) : IGerenciadorForm;
  class function New : IGerenciadorForm;


published
  { published declarations }
end;

var
  _Gerenciador : iGerenciadorForm;

implementation

uses
  System.SysUtils;

{ TGerenciadorForm }

function TGerenciadorForm.AddForm(key: String; Value: TComponentClass;
  const Parent: TPanel; Index: Boolean): IGerenciadorForm;
var
  aForm :TForm;
begin
  Result := Self;
  if not ListaForm.TryGetValue(key, aForm) then
  begin
    Application.CreateForm(Value, aForm);
    aForm.Caption := key;
    ListaForm.Add(key, aForm);
  end;

  aForm.Parent := Parent;
  aForm.Show;

  if Index then
    FormIndex := aForm;
end;

constructor TGerenciadorForm.Create;
begin
  ListaForm := TObjectDictionary<String, TForm>.Create;
end;

destructor TGerenciadorForm.Destroy;
begin
  FreeAndNil(ListaForm);
  inherited;
end;

function TGerenciadorForm.GetForm(Value: String): TForm;
begin
  ListaForm.TryGetValue(Value, Result);
end;

function TGerenciadorForm.GetFormIndex: TForm;
begin
  Result := FormIndex;
end;

class function TGerenciadorForm.New: IGerenciadorForm;
begin
  Result := Self.Create;
end;

function TGerenciadorForm.RemoveForm(Value: String): IGerenciadorForm;
var
  aForm :TForm;
begin
  if ListaForm.TryGetValue(Value, aForm) then
  begin
    aForm.Destroy;
    ListaForm.Remove(Value);
  end;

end;

initialization
  _Gerenciador := TGerenciadorForm.New;

end.

