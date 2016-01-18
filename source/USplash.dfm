object SplashForm: TSplashForm
  Left = 302
  Top = 195
  ActiveControl = Panel1
  BorderIcons = []
  BorderStyle = bsNone
  ClientHeight = 160
  ClientWidth = 172
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 172
    Height = 160
    Align = alClient
    AutoSize = True
    BevelInner = bvLowered
    Color = clWhite
    TabOrder = 0
    object Label1: TLabel
      Left = 9
      Top = 40
      Width = 151
      Height = 20
      Caption = 'BENYAMMI Bachir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 39
      Top = 56
      Width = 98
      Height = 20
      Caption = 'Phone Book'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Bevel1: TBevel
      Left = 29
      Top = 120
      Width = 120
      Height = 2
      Style = bsRaised
    end
    object LabLoad: TLabel
      Left = 63
      Top = 136
      Width = 49
      Height = 13
      Caption = 'Loading...'
    end
    object Image1: TImage
      Left = 71
      Top = 8
      Width = 33
      Height = 33
      Picture.Data = {
        07544269746D617076020000424D760200000000000076000000280000002000
        0000200000000100040000000000000200000000000000000000100000000000
        0000000000000000800000800000008080008000000080008000808000008080
        8000C0C0C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
        FF00000000000000000000000000000000000000000000000000000000000000
        0000000000000777777777777777700000000077788991911111111111117700
        0000070000999999999999999911170000007000009999FF89FF89FF89911700
        00007000009999FF89FF89FF8991170000000000009999FF89FF89FF89911700
        0000007880999999999999999911170000000700089999999999999999111700
        00007000700999FF89FF89FF8911770000007000000999FF89FF89FF89117000
        00000000000999FF89FF89FF8111700000000078800999999999999991117000
        0000070008099999999999999111700000007000700099FF89FF89FF81177000
        00000700000099FF89FF89FF8117000000000000000099FF89FF89FF81170000
        0000000777709999999999999117000077779999117099999999999911170119
        9997999911700999999999911170011999979999117701111111111111700119
        9997999991177111111111111170111999979999991111177777777711111199
        999799F9999111111111111111111999999709F8999999999999999999999999
        9977099FF89999999999999999999999997000999FF999999999999999999999
        9700000099999999999999999999999000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000}
      Transparent = True
    end
    object Label3: TLabel
      Left = 10
      Top = 96
      Width = 155
      Height = 16
      Cursor = crHandPoint
      Caption = 'benbac20@gmail.com'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      OnClick = Label3Click
    end
    object Label4: TLabel
      Left = 47
      Top = 72
      Width = 73
      Height = 16
      Caption = 'Juilly 2006'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BtnClose: TBitBtn
      Left = 51
      Top = 128
      Width = 75
      Height = 25
      TabOrder = 0
      Visible = False
      Kind = bkOK
    end
  end
end
