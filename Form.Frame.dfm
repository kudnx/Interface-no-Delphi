object FrameItem: TFrameItem
  Left = 0
  Top = 0
  Width = 384
  Height = 167
  TabOrder = 0
  OnClick = FrameClick
  OnMouseEnter = FrameMouseEnter
  OnMouseLeave = FrameMouseLeave
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 384
    Height = 167
    Align = alClient
    BevelOuter = bvNone
    Color = clInfoBk
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = 199
    ExplicitTop = 120
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Label1: TLabel
      Left = 48
      Top = 16
      Width = 79
      Height = 25
      Caption = 'Categoria'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 48
      Top = 47
      Width = 211
      Height = 33
      Caption = 'Descri'#231#227'o do item'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 48
      Top = 96
      Width = 238
      Height = 16
      Caption = 'Caption que nao tem nenhuma relevancia'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Shape1: TShape
      Left = 8
      Top = 48
      Width = 25
      Height = 25
      Brush.Color = clBlue
      Pen.Style = psClear
    end
    object Shape2: TShape
      Left = 192
      Top = 16
      Width = 169
      Height = 9
      Brush.Color = clBackground
    end
    object Shape3: TShape
      Left = 192
      Top = 16
      Width = 94
      Height = 9
      Brush.Color = clLime
    end
  end
end
