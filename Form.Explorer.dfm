object FormExplorer: TFormExplorer
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'FormExplorer'
  ClientHeight = 686
  ClientWidth = 1271
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1271
    Height = 686
    Align = alClient
    BevelOuter = bvNone
    Color = clInfoBk
    ParentBackground = False
    TabOrder = 0
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 81
      Height = 686
      Align = alLeft
      BevelOuter = bvNone
      Color = clDefault
      ParentBackground = False
      TabOrder = 0
    end
    object Panel3: TPanel
      Left = 81
      Top = 0
      Width = 384
      Height = 686
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 1
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 384
        Height = 97
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Label1: TLabel
          Left = 6
          Top = 8
          Width = 299
          Height = 40
          Caption = 'S'#225'bado, 16 de Outobro'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -29
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label2: TLabel
          Left = 12
          Top = 54
          Width = 347
          Height = 16
          Caption = 'Veja abaixo todas as  categorias disp'#243'niveis para navega'#231#227'o'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
      end
      object Panel6: TPanel
        Left = 0
        Top = 97
        Width = 384
        Height = 589
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        object ScrollBox1: TScrollBox
          Left = 0
          Top = 0
          Width = 384
          Height = 589
          Align = alClient
          BevelInner = bvNone
          BorderStyle = bsNone
          Color = clInfoBk
          ParentColor = False
          TabOrder = 0
        end
      end
    end
    object Panel4: TPanel
      Left = 465
      Top = 0
      Width = 806
      Height = 686
      Align = alClient
      BevelOuter = bvNone
      Color = clActiveBorder
      ParentBackground = False
      TabOrder = 2
      ExplicitLeft = 471
    end
  end
end
