unit Form.Explorer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, System.Generics.Collections, Form.Frame;

type
  TFormExplorer = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    ScrollBox1: TScrollBox;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
      ItemLista : TObjectList<TFrameItem>;
  public
    { Public declarations }
  end;

var
  FormExplorer: TFormExplorer;

implementation

uses
  Form.Produto;

{$R *.dfm}

procedure TFormExplorer.FormCreate(Sender: TObject);
begin
  ItemLista := TObjectList<TFrameItem>.Create;
end;

procedure TFormExplorer.FormDestroy(Sender: TObject);
begin
  FreeAndNil(ItemLista);
end;

procedure TFormExplorer.FormShow(Sender: TObject);
var
  Item1, Item2, Item3 : TFrameItem;
  I : Integer;
begin
  Item1 := TFrameItem.Create(nil);
  Item1.Align := alTop;
  Item1.PanelInjection('Usuários', TFormProduto, Panel4);
  Item1.Label1.Caption := 'Usuários';
  ItemLista.Add(Item1);

  Item2 := TFrameItem.Create(nil);
  Item2.Align := alTop;
  Item2.PanelInjection('Produtos', TFormProduto, Panel4);
  Item2.Label1.Caption := 'Produtos';
  ItemLista.Add(Item2);

  Item3 := TFrameItem.Create(nil);
  Item3.Align := alTop;
  Item3.PanelInjection('Clientes', TFormProduto, Panel4);
  Item3.Label1.Caption := 'Clientes';
  ItemLista.Add(Item3);

  for I := 0 to Pred(ItemLista.Count) do
    ItemLista[I].Parent := ScrollBox1;
end;

end.
