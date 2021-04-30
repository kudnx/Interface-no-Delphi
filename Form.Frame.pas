unit Form.Frame;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Gerenciador.form;

type
  TFrameItem = class(TFrame)
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    procedure FrameClick(Sender: TObject);
    procedure FrameMouseEnter(Sender: TObject);
    procedure FrameMouseLeave(Sender: TObject);
  private
    { Private declarations }
    FInjectPanel : TPanel;
    FInjectKey : String;
    FInjectComponent : TComponentClass;
  public
    { Public declarations }
    procedure PanelInjection(key : String; Value : TComponentClass; const Parent : TPanel);
  end;

implementation

{$R *.dfm}

{ TFrameItem }

procedure TFrameItem.FrameClick(Sender: TObject);
begin
  _Gerenciador.AddForm(FInjectKey, FInjectComponent, FInjectPanel);
end;

function HexToTColor(sColor : String) : TColor;
begin
  Result := RGB (
    StrToInt('$'+Copy(sColor, 1, 2)),
    StrToInt('$'+Copy(sColor, 3, 2)),
    StrToInt('$'+Copy(sColor, 5, 2))
  );
end;

procedure TFrameItem.FrameMouseEnter(Sender: TObject);
begin
  Panel2.Color := HexToTColor('2e3439');
end;

procedure TFrameItem.FrameMouseLeave(Sender: TObject);
begin
  Panel2.Color := HexToTColor('23272b');
end;

procedure TFrameItem.PanelInjection(key: String; Value: TComponentClass;
  const Parent: TPanel);
begin
  FInjectPanel := Parent;
  FInjectKey   := Key;
  FInjectComponent := Value;
end;

end.
