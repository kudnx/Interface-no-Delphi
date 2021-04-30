unit Form.Produto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Datasnap.DBClient;

type
  TFormProduto = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Shape1: TShape;
    Edit1: TEdit;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1CITY: TStringField;
    ClientDataSet1STATE: TStringField;
    ClientDataSet1TELEPHONE: TStringField;
    ClientDataSet1LAST_NAME: TStringField;
    ClientDataSet1FIRST_NAME: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormProduto: TFormProduto;

implementation

{$R *.dfm}

end.
