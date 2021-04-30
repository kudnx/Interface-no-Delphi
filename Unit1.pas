unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls, acPNG, pngimage,
  Vcl.StdCtrls, Gerenciador.form, Form.Explorer;

type
  TForm1 = class(TForm)
    Panel2: TPanel;
    Image1: TImage;
    Panel1: TPanel;
    PanelIndex: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Image2: TImage;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel11: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    Shape1: TShape;
    Panel4: TPanel;
    Panel14: TPanel;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Panel15: TPanel;
    Panel16: TPanel;
    Panel17: TPanel;
    Image6: TImage;
    Panel18: TPanel;
    Shape2: TShape;
    Label1: TLabel;
    Image7: TImage;
    Label2: TLabel;
    procedure Panel9Click(Sender: TObject);
    procedure Panel13Click(Sender: TObject);
    procedure Panel12Click(Sender: TObject);
    procedure Panel10Click(Sender: TObject);
    procedure Panel11Click(Sender: TObject);
  private
    { Private declarations }
    procedure MoveShapeItem(Value : TPaNEL);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.MoveShapeItem(Value: TPaNEL);
begin
  TThread.CreateAnonymousThread(
    procedure
    begin
      while Shape1.Left <> Value.Left do
      begin
        if Shape1.Left > Value.Left then
          Shape1.Left := Shape1.Left - 1
        else
          Shape1.Left := Shape1.Left + 1
      end;
    end
  ).Start
end;

procedure TForm1.Panel10Click(Sender: TObject);
begin
  MoveShapeItem(TPanel(Sender));
end;

procedure TForm1.Panel11Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.Panel12Click(Sender: TObject);
begin
  MoveShapeItem(TPanel(Sender));
end;

procedure TForm1.Panel13Click(Sender: TObject);
begin
  MoveShapeItem(TPanel(Sender));
  _Gerenciador.AddForm('Explorer', TFormExplorer, PanelIndex, True);
end;

procedure TForm1.Panel9Click(Sender: TObject);
begin
  MoveShapeItem(TPanel(Sender));
  _Gerenciador.RemoveForm(_Gerenciador.GetFormIndex.Caption);
end;

end.
