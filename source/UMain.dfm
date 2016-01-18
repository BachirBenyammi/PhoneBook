object mainForm: TmainForm
  Left = 357
  Top = 189
  BiDiMode = bdLeftToRight
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  ClientHeight = 333
  ClientWidth = 442
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poDesktopCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Stb: TStatusBar
    Left = 0
    Top = 315
    Width = 442
    Height = 18
    Panels = <
      item
        Width = 100
      end
      item
        Width = 100
      end
      item
        Width = 100
      end
      item
        Alignment = taRightJustify
        Width = 100
      end>
  end
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 442
    Height = 57
    AutoSize = True
    Bands = <
      item
        Break = False
        Control = ToolBar3
        ImageIndex = -1
        Width = 438
      end
      item
        Control = ToolBar2
        ImageIndex = -1
        MinHeight = 22
        Width = 174
      end
      item
        BorderStyle = bsSingle
        Break = False
        Control = ToolBar1
        ImageIndex = -1
        MinHeight = 22
        Width = 262
      end>
    object ToolBar1: TToolBar
      Left = 185
      Top = 29
      Width = 249
      Height = 22
      Align = alNone
      ButtonWidth = 35
      Caption = 'Browse'
      EdgeBorders = []
      EdgeInner = esNone
      EdgeOuter = esNone
      Flat = True
      Images = ImgList
      TabOrder = 0
      Transparent = True
      object ToolButton1: TToolButton
        Left = 0
        Top = 0
        Action = ActionFirst
      end
      object ToolButton3: TToolButton
        Left = 35
        Top = 0
        Action = ActionPrior
      end
      object ToolButton4: TToolButton
        Left = 70
        Top = 0
        Action = ActionNext
      end
      object ToolButton5: TToolButton
        Left = 105
        Top = 0
        Action = ActionLast
      end
    end
    object ToolBar2: TToolBar
      Left = 9
      Top = 29
      Width = 161
      Height = 22
      Align = alNone
      ButtonWidth = 32
      Caption = 'Record'
      EdgeBorders = []
      EdgeInner = esNone
      EdgeOuter = esNone
      Flat = True
      Images = ImgList
      TabOrder = 1
      object ToolButton6: TToolButton
        Left = 0
        Top = 0
        Action = ActionInsert
      end
      object ToolButton12: TToolButton
        Left = 32
        Top = 0
        Action = ActionDelete
      end
      object ToolButton13: TToolButton
        Left = 64
        Top = 0
        Action = ActionEdit
      end
      object ToolButton14: TToolButton
        Left = 96
        Top = 0
        Action = ActionPost
      end
      object ToolButton15: TToolButton
        Left = 128
        Top = 0
        Action = ActionCancel
      end
    end
    object ToolBar3: TToolBar
      Left = 9
      Top = 0
      Width = 425
      Height = 25
      Align = alNone
      ButtonWidth = 40
      Caption = 'Record'
      EdgeBorders = []
      EdgeInner = esNone
      EdgeOuter = esNone
      Flat = True
      Images = ImgList
      TabOrder = 2
      object ToolButton9: TToolButton
        Left = 0
        Top = 0
        Action = ActionCopyAll
      end
      object ToolButton8: TToolButton
        Left = 40
        Top = 0
        Caption = 'Preview'
        DropdownMenu = PMPreview
        ImageIndex = 21
      end
      object ToolButton17: TToolButton
        Left = 80
        Top = 0
        Caption = 'Print'
        DropdownMenu = PMPrint
        ImageIndex = 13
      end
      object ToolButton16: TToolButton
        Left = 120
        Top = 0
        Width = 15
        Caption = 'ToolButton16'
        ImageIndex = 15
        Style = tbsSeparator
      end
      object ToolButton7: TToolButton
        Left = 135
        Top = 0
        Action = ActionHide
      end
      object ToolButton10: TToolButton
        Left = 175
        Top = 0
        Action = ActionTop
      end
      object ToolButton18: TToolButton
        Left = 215
        Top = 0
        Width = 20
        Caption = 'ToolButton18'
        ImageIndex = 18
        Style = tbsSeparator
      end
      object ToolButton11: TToolButton
        Left = 235
        Top = 0
        Action = ActionAbout
      end
      object ToolButton2: TToolButton
        Left = 275
        Top = 0
        Action = ActionExit
      end
    end
  end
  object PanelInfos: TPanel
    Left = 0
    Top = 84
    Width = 329
    Height = 231
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 2
    object PageControl: TPageControl
      Left = 0
      Top = 0
      Width = 329
      Height = 225
      ActivePage = TabInfos
      Align = alTop
      MultiLine = True
      TabOrder = 0
      object TabInfos: TTabSheet
        Caption = 'Informations'
        object LabName: TLabel
          Left = 2
          Top = 0
          Width = 31
          Height = 13
          Caption = '&Name:'
          FocusControl = DBEdit1
        end
        object LabAdr: TLabel
          Left = 0
          Top = 80
          Width = 43
          Height = 13
          Caption = '&Adresse:'
          FocusControl = DBMemo1
        end
        object LabHome: TLabel
          Left = 189
          Top = 24
          Width = 31
          Height = 13
          Caption = '&Home:'
          FocusControl = DBEdit3
        end
        object LabMobile: TLabel
          Left = 186
          Top = 58
          Width = 34
          Height = 13
          Caption = '&Mobile:'
          FocusControl = DBEdit4
        end
        object LabWork: TLabel
          Left = 190
          Top = 92
          Width = 29
          Height = 13
          Caption = '&Work:'
          FocusControl = DBEdit4
        end
        object LabFax: TLabel
          Left = 190
          Top = 126
          Width = 22
          Height = 13
          Caption = '&Fax:'
          FocusControl = DBEdit6
        end
        object LabClass: TLabel
          Left = 191
          Top = 152
          Width = 29
          Height = 13
          Caption = '&Class:'
        end
        object Bevel1: TBevel
          Left = 179
          Top = 16
          Width = 2
          Height = 169
        end
        object LabFunction: TLabel
          Left = 1
          Top = 40
          Width = 45
          Height = 13
          Caption = '&Function:'
          FocusControl = DBEdit1
        end
        object LabEmail: TLabel
          Left = 1
          Top = 152
          Width = 28
          Height = 13
          Caption = '&Email:'
          FocusControl = DBEdit7
        end
        object DBEdit1: TDBEdit
          Left = 16
          Top = 16
          Width = 150
          Height = 21
          Color = clSilver
          DataField = 'Name'
          DataSource = dsContacts
          ReadOnly = True
          TabOrder = 0
          OnEnter = DBEdit1Enter
          OnExit = DBEdit1Exit
        end
        object DBEdit2: TDBEdit
          Left = 16
          Top = 56
          Width = 150
          Height = 21
          Color = clSilver
          DataField = 'Function'
          DataSource = dsContacts
          ReadOnly = True
          TabOrder = 1
          OnEnter = DBEdit1Enter
          OnExit = DBEdit1Exit
        end
        object DBMemo1: TDBMemo
          Left = 16
          Top = 96
          Width = 150
          Height = 49
          Color = clSilver
          DataField = 'Adresse'
          DataSource = dsContacts
          ReadOnly = True
          ScrollBars = ssVertical
          TabOrder = 2
          OnEnter = DBMemo1Enter
          OnExit = DBMemo1Exit
        end
        object DBEdit3: TDBEdit
          Left = 227
          Top = 16
          Width = 86
          Height = 21
          BiDiMode = bdLeftToRight
          Color = clSilver
          DataField = 'Home'
          DataSource = dsContacts
          MaxLength = 12
          ParentBiDiMode = False
          ReadOnly = True
          TabOrder = 4
          OnChange = DBEdit3Change
          OnEnter = DBEdit1Enter
          OnExit = DBEdit1Exit
          OnKeyPress = DBEdit3KeyPress
        end
        object DBEdit4: TDBEdit
          Left = 227
          Top = 50
          Width = 86
          Height = 21
          BiDiMode = bdLeftToRight
          Color = clSilver
          DataField = 'Mobile'
          DataSource = dsContacts
          MaxLength = 12
          ParentBiDiMode = False
          ReadOnly = True
          TabOrder = 5
          OnEnter = DBEdit1Enter
          OnExit = DBEdit1Exit
          OnKeyPress = DBEdit3KeyPress
        end
        object DBEdit5: TDBEdit
          Left = 227
          Top = 84
          Width = 86
          Height = 21
          BiDiMode = bdLeftToRight
          Color = clSilver
          DataField = 'Work'
          DataSource = dsContacts
          MaxLength = 12
          ParentBiDiMode = False
          ReadOnly = True
          TabOrder = 6
          OnEnter = DBEdit1Enter
          OnExit = DBEdit1Exit
          OnKeyPress = DBEdit3KeyPress
        end
        object DBEdit6: TDBEdit
          Left = 227
          Top = 118
          Width = 86
          Height = 21
          BiDiMode = bdLeftToRight
          Color = clSilver
          DataField = 'Fax'
          DataSource = dsContacts
          MaxLength = 12
          ParentBiDiMode = False
          ReadOnly = True
          TabOrder = 7
          OnEnter = DBEdit1Enter
          OnExit = DBEdit1Exit
          OnKeyPress = DBEdit3KeyPress
        end
        object cbClass: TDBLookupComboBox
          Left = 195
          Top = 168
          Width = 118
          Height = 21
          Color = clSilver
          DataField = 'Class'
          DataSource = dsContacts
          KeyField = 'idClass'
          ListField = 'Title'
          ListSource = dSClass
          ReadOnly = True
          TabOrder = 8
          OnEnter = cbClassEnter
          OnExit = cbClassExit
        end
        object DBEdit7: TDBEdit
          Left = 16
          Top = 168
          Width = 150
          Height = 21
          Color = clSilver
          DataField = 'Email'
          DataSource = dsContacts
          ReadOnly = True
          TabOrder = 3
          OnEnter = DBEdit1Enter
          OnExit = DBEdit1Exit
        end
      end
      object TabNotes: TTabSheet
        Caption = 'Notes'
        ImageIndex = 1
        object LabNotes: TLabel
          Left = 8
          Top = 8
          Width = 32
          Height = 13
          Caption = '&Notes:'
        end
        object DBMemo2: TDBMemo
          Left = 11
          Top = 24
          Width = 278
          Height = 145
          Color = clSilver
          DataField = 'Notes'
          DataSource = dsContacts
          ReadOnly = True
          ScrollBars = ssBoth
          TabOrder = 0
          OnEnter = DBMemo1Enter
          OnExit = DBMemo1Exit
        end
      end
      object TabClasses: TTabSheet
        Caption = 'Classes'
        ImageIndex = 2
        object LabClasses: TLabel
          Left = 8
          Top = 32
          Width = 29
          Height = 13
          Caption = '&Class:'
        end
        object Bevel2: TBevel
          Left = 155
          Top = 16
          Width = 2
          Height = 161
        end
        object Label1: TLabel
          Left = 184
          Top = 16
          Width = 36
          Height = 13
          Caption = 'Classes'
        end
        object DBEdit8: TDBEdit
          Left = 8
          Top = 48
          Width = 121
          Height = 21
          DataField = 'Title'
          DataSource = dSClass
          TabOrder = 0
          OnEnter = DBEdit1Enter
          OnExit = DBEdit1Exit
        end
        object cbClasses: TDBLookupListBox
          Left = 184
          Top = 32
          Width = 121
          Height = 147
          ImeMode = imHanguel
          KeyField = 'idClass'
          ListField = 'Title'
          ListSource = dSClass
          TabOrder = 1
          OnClick = cbClassesClick
          OnEnter = cbClassesEnter
          OnExit = cbClassesExit
        end
        object BitBtn1: TBitBtn
          Left = 8
          Top = 80
          Width = 25
          Height = 25
          Action = ActionInsertClass
          TabOrder = 2
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF000000000000000000000000000000000000000000000000000000
            00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF000000000000000000000000000000000000000000000000000000
            00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF000000000000000000000000000000000000000000000000000000
            00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        end
        object BitBtn2: TBitBtn
          Left = 32
          Top = 80
          Width = 25
          Height = 25
          Action = ActionDeleteClass
          TabOrder = 3
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        end
        object BitBtn3: TBitBtn
          Left = 56
          Top = 80
          Width = 25
          Height = 25
          Action = ActionEditClass
          TabOrder = 4
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF0000000000000000000000000000000000000000000000
            00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00000000000000000000000000000000000000
            000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
            0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        end
        object BitBtn4: TBitBtn
          Left = 104
          Top = 80
          Width = 25
          Height = 25
          Action = ActionPostClass
          TabOrder = 5
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF000000000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00000000000000000000000000FF00FF00000000000000000000000000FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF000000000000000000FF00FF00FF00FF00FF00FF0000000000000000000000
            0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
            000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
            00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        end
        object BitBtn5: TBitBtn
          Left = 80
          Top = 80
          Width = 25
          Height = 25
          Action = ActionCancelClass
          TabOrder = 6
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00
            FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF000000
            00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
            000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000000000000000
            0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
            000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF000000
            00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00
            FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        end
      end
    end
  end
  object PanelLetters: TPanel
    Left = 0
    Top = 57
    Width = 442
    Height = 27
    Align = alTop
    TabOrder = 1
    object SP25: TSpeedButton
      Left = 356
      Top = 0
      Width = 14
      Height = 22
      GroupIndex = 1
      Flat = True
      OnClick = SP28Click
    end
    object SP24: TSpeedButton
      Left = 342
      Top = 0
      Width = 14
      Height = 22
      GroupIndex = 1
      Flat = True
      OnClick = SP28Click
    end
    object SP23: TSpeedButton
      Left = 328
      Top = 0
      Width = 14
      Height = 22
      GroupIndex = 1
      Flat = True
      OnClick = SP28Click
    end
    object SP22: TSpeedButton
      Left = 314
      Top = 0
      Width = 14
      Height = 22
      GroupIndex = 1
      Flat = True
      OnClick = SP28Click
    end
    object SP21: TSpeedButton
      Left = 300
      Top = 0
      Width = 14
      Height = 22
      GroupIndex = 1
      Flat = True
      OnClick = SP28Click
    end
    object SP20: TSpeedButton
      Left = 286
      Top = 0
      Width = 14
      Height = 22
      GroupIndex = 1
      Flat = True
      OnClick = SP28Click
    end
    object SP19: TSpeedButton
      Left = 272
      Top = 0
      Width = 14
      Height = 22
      GroupIndex = 1
      Flat = True
      OnClick = SP28Click
    end
    object SP18: TSpeedButton
      Left = 258
      Top = 0
      Width = 14
      Height = 22
      GroupIndex = 1
      Flat = True
      OnClick = SP28Click
    end
    object SP17: TSpeedButton
      Left = 244
      Top = 0
      Width = 14
      Height = 22
      GroupIndex = 1
      Flat = True
      OnClick = SP28Click
    end
    object SP16: TSpeedButton
      Left = 230
      Top = 0
      Width = 14
      Height = 22
      GroupIndex = 1
      Flat = True
      OnClick = SP28Click
    end
    object SP15: TSpeedButton
      Left = 216
      Top = 0
      Width = 14
      Height = 22
      GroupIndex = 1
      Flat = True
      OnClick = SP28Click
    end
    object SP14: TSpeedButton
      Left = 202
      Top = 0
      Width = 14
      Height = 22
      GroupIndex = 1
      Flat = True
      OnClick = SP28Click
    end
    object SP13: TSpeedButton
      Left = 188
      Top = 0
      Width = 14
      Height = 22
      GroupIndex = 1
      Flat = True
      OnClick = SP28Click
    end
    object SP12: TSpeedButton
      Left = 174
      Top = 0
      Width = 14
      Height = 22
      GroupIndex = 1
      Flat = True
      OnClick = SP28Click
    end
    object SP26: TSpeedButton
      Left = 370
      Top = 0
      Width = 14
      Height = 22
      GroupIndex = 1
      Flat = True
      OnClick = SP28Click
    end
    object SP11: TSpeedButton
      Left = 160
      Top = 0
      Width = 14
      Height = 22
      GroupIndex = 1
      Flat = True
      OnClick = SP28Click
    end
    object SP10: TSpeedButton
      Left = 146
      Top = 0
      Width = 14
      Height = 22
      GroupIndex = 1
      Flat = True
      OnClick = SP28Click
    end
    object SP7: TSpeedButton
      Left = 104
      Top = 0
      Width = 14
      Height = 22
      GroupIndex = 1
      Flat = True
      OnClick = SP28Click
    end
    object SP6: TSpeedButton
      Left = 90
      Top = 0
      Width = 14
      Height = 22
      GroupIndex = 1
      Flat = True
      OnClick = SP28Click
    end
    object SP5: TSpeedButton
      Left = 76
      Top = 0
      Width = 14
      Height = 22
      GroupIndex = 1
      Flat = True
      OnClick = SP28Click
    end
    object SP4: TSpeedButton
      Left = 62
      Top = 0
      Width = 14
      Height = 22
      GroupIndex = 1
      Flat = True
      OnClick = SP28Click
    end
    object SP3: TSpeedButton
      Left = 48
      Top = 0
      Width = 14
      Height = 22
      GroupIndex = 1
      Flat = True
      OnClick = SP28Click
    end
    object SP2: TSpeedButton
      Left = 34
      Top = 0
      Width = 14
      Height = 22
      GroupIndex = 1
      Flat = True
      OnClick = SP28Click
    end
    object SP1: TSpeedButton
      Left = 20
      Top = 0
      Width = 14
      Height = 22
      GroupIndex = 1
      Flat = True
      OnClick = SP28Click
    end
    object sbAll: TSpeedButton
      Left = 6
      Top = 0
      Width = 14
      Height = 22
      GroupIndex = 1
      Down = True
      Caption = '*'
      Flat = True
      OnClick = sbAllClick
    end
    object SP9: TSpeedButton
      Left = 132
      Top = 0
      Width = 14
      Height = 22
      GroupIndex = 1
      Flat = True
      OnClick = SP28Click
    end
    object SP8: TSpeedButton
      Left = 118
      Top = 0
      Width = 14
      Height = 22
      GroupIndex = 1
      Flat = True
      OnClick = SP28Click
    end
  end
  object PanelFind: TPanel
    Left = 329
    Top = 84
    Width = 113
    Height = 231
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 4
    object gbFind: TGroupBox
      Left = 8
      Top = 24
      Width = 105
      Height = 161
      Caption = '&Find:'
      TabOrder = 0
      object EditFind: TEdit
        Left = 8
        Top = 92
        Width = 88
        Height = 21
        TabOrder = 2
        Text = 'Search...'
        OnEnter = EditFindEnter
        OnExit = EditFindExit
        OnKeyPress = EditFindKeyPress
      end
      object BtnFind: TBitBtn
        Left = 8
        Top = 124
        Width = 89
        Height = 21
        Action = ActionFind
        Caption = 'Find'
        TabOrder = 3
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
          0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF000000000000000000000000000000000000000000FF00FF0000000000FFFF
          FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF0000000000FFFFFF00000000000000000000000000FF00FF0000000000FFFF
          FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF0000000000FFFFFF00000000000000000000000000FF00FF00000000000000
          00000000000000000000000000000000000000000000FF00FF00000000000000
          00000000000000000000000000000000000000000000FF00FF00000000000000
          0000FFFFFF00000000000000000000000000000000000000000000000000FFFF
          FF000000000000000000000000000000000000000000FF00FF00000000000000
          0000FFFFFF00000000000000000000000000FF00FF000000000000000000FFFF
          FF000000000000000000000000000000000000000000FF00FF00000000000000
          0000FFFFFF00000000000000000000000000FF00FF000000000000000000FFFF
          FF000000000000000000000000000000000000000000FF00FF00FF00FF000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
          FF0000000000FFFFFF00000000000000000000000000FF00FF0000000000FFFF
          FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF000000000000000000000000000000000000000000FF00FF00000000000000
          0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00FF000000
          00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00FF000000
          0000FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00FF000000
          00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      end
      object cbFields: TComboBox
        Left = 8
        Top = 28
        Width = 88
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 0
        OnEnter = cbFieldsEnter
        OnExit = cbFieldsExit
        Items.Strings = (
          'Name'
          'Function'
          'Email'
          'Adresse'
          'Notes'
          'Home'
          'Mobile'
          'Work'
          'Fax')
      end
      object cbChois: TComboBox
        Left = 8
        Top = 60
        Width = 88
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 1
        OnEnter = cbFieldsEnter
        OnExit = cbFieldsExit
        Items.Strings = (
          'Started with'
          'Contain'
          'Exact')
      end
    end
  end
  object tbContacts: TADOTable
    TableName = 'tbContacts'
    Left = 272
    Top = 312
  end
  object dsContacts: TDataSource
    DataSet = ADOQuery
    OnStateChange = dsContactsStateChange
    OnDataChange = dsContactsDataChange
    Left = 184
    Top = 312
  end
  object MainMenu: TMainMenu
    Images = ImgList
    Left = 96
    Top = 312
    object MMFile: TMenuItem
      Caption = '&File'
      object MMHide: TMenuItem
        Action = ActionHide
      end
      object MMStayOnTop: TMenuItem
        Action = ActionTop
      end
      object MMCopyAll: TMenuItem
        Action = ActionCopyAll
      end
      object MMLine: TMenuItem
        Caption = '-'
      end
      object MMExit: TMenuItem
        Action = ActionExit
      end
    end
    object MMBrowse: TMenuItem
      Caption = '&Browse'
      object First1: TMenuItem
        Action = ActionFirst
      end
      object Prior1: TMenuItem
        Action = ActionPrior
      end
      object Next1: TMenuItem
        Action = ActionNext
      end
      object Last1: TMenuItem
        Action = ActionLast
      end
    end
    object MMRecord: TMenuItem
      Caption = '&Record'
      object Insert1: TMenuItem
        Action = ActionInsert
      end
      object Delete1: TMenuItem
        Action = ActionDelete
      end
      object Edit2: TMenuItem
        Action = ActionEdit
      end
      object Post1: TMenuItem
        Action = ActionPost
      end
      object Cancel1: TMenuItem
        Action = ActionCancel
      end
    end
    object MMPreview: TMenuItem
      Caption = '&Preview'
      object CurrentRecord1: TMenuItem
        Action = ActionPreviewRecord
      end
      object CurrentLetter1: TMenuItem
        Action = ActionPreviewLetter
      end
      object CurrentClass1: TMenuItem
        Action = ActionPreviewClass
      end
      object AllRecords1: TMenuItem
        Action = ActionPreviewAll
      end
    end
    object MMPrint: TMenuItem
      Caption = 'Print'
      object PrintCurrentRecord1: TMenuItem
        Action = ActionPrintRecord
      end
      object CurrentLetter3: TMenuItem
        Action = ActionPrintLetter
      end
      object PrintCurrentClass1: TMenuItem
        Action = ActionPrintClass
      end
      object AllRecords3: TMenuItem
        Action = ActionPrintAll
      end
    end
    object MMWindow: TMenuItem
      Caption = '&Window'
      object MMInfos: TMenuItem
        Action = ActionInfos
      end
      object MMNotes: TMenuItem
        Action = ActionNotes
      end
      object MMClasses: TMenuItem
        Action = ActionClasses
      end
    end
    object MMHelp: TMenuItem
      Caption = '&Help'
      object About2: TMenuItem
        Action = ActionAbout
      end
    end
  end
  object ActList: TActionList
    Images = ImgList
    Left = 152
    Top = 312
    object ActionFirst: TAction
      Category = 'Browse'
      Caption = 'First'
      ImageIndex = 0
      ShortCut = 49222
      OnExecute = ActionFirstExecute
    end
    object ActionPrior: TAction
      Category = 'Browse'
      Caption = 'Prior'
      ImageIndex = 1
      ShortCut = 49232
      OnExecute = ActionPriorExecute
    end
    object ActionNext: TAction
      Category = 'Browse'
      Caption = 'Next'
      ImageIndex = 2
      ShortCut = 49230
      OnExecute = ActionNextExecute
    end
    object ActionLast: TAction
      Category = 'Browse'
      Caption = 'Last'
      ImageIndex = 3
      ShortCut = 49228
      OnExecute = ActionLastExecute
    end
    object ActionInsert: TAction
      Category = 'Record'
      Caption = 'Insert'
      ImageIndex = 4
      ShortCut = 49225
      OnExecute = ActionInsertExecute
    end
    object ActionDelete: TAction
      Category = 'Record'
      Caption = 'Delete'
      ImageIndex = 5
      ShortCut = 49220
      OnExecute = ActionDeleteExecute
    end
    object ActionEdit: TAction
      Category = 'Record'
      Caption = 'Edit'
      ImageIndex = 6
      ShortCut = 49221
      OnExecute = ActionEditExecute
    end
    object ActionPost: TAction
      Category = 'Record'
      Caption = 'Post'
      ImageIndex = 7
      ShortCut = 49236
      OnExecute = ActionPostExecute
    end
    object ActionCancel: TAction
      Category = 'Record'
      Caption = 'Cancel'
      ImageIndex = 8
      ShortCut = 49219
      OnExecute = ActionCancelExecute
    end
    object ActionExit: TAction
      Category = 'File'
      Caption = 'Exit'
      ImageIndex = 14
      ShortCut = 16465
      OnExecute = ActionExitExecute
    end
    object ActionTop: TAction
      Category = 'File'
      Caption = 'Stay On Top'
      ImageIndex = 17
      ShortCut = 16468
      OnExecute = ActionTopExecute
    end
    object ActionAbout: TAction
      Category = 'File'
      Caption = 'About'
      ImageIndex = 11
      ShortCut = 112
      OnExecute = ActionAboutExecute
    end
    object ActionHide: TAction
      Category = 'File'
      Caption = 'Hide'
      ImageIndex = 16
      ShortCut = 16456
      OnExecute = ActionHideExecute
    end
    object ActionCopyAll: TAction
      Category = 'File'
      Caption = 'Copy All'
      ImageIndex = 10
      ShortCut = 16451
      OnExecute = ActionCopyAllExecute
    end
    object ActionFind: TAction
      Category = 'File'
      Caption = 'Find'
      ImageIndex = 15
      ShortCut = 16454
      OnExecute = ActionFindExecute
    end
    object ActionInfos: TAction
      Category = 'Window'
      Caption = 'Informations'
      Checked = True
      ShortCut = 16457
      OnExecute = ActionInfosExecute
    end
    object ActionNotes: TAction
      Category = 'Window'
      Caption = 'Notes'
      ShortCut = 16462
      OnExecute = ActionNotesExecute
    end
    object ActionClasses: TAction
      Category = 'Window'
      Caption = 'Classes'
      ShortCut = 16467
      OnExecute = ActionClassesExecute
    end
    object ActionInsertClass: TAction
      Category = 'Class'
      ImageIndex = 4
      OnExecute = ActionInsertClassExecute
    end
    object ActionDeleteClass: TAction
      Category = 'Class'
      ImageIndex = 5
      OnExecute = ActionDeleteClassExecute
    end
    object ActionEditClass: TAction
      Category = 'Class'
      ImageIndex = 6
      OnExecute = ActionEditClassExecute
    end
    object ActionPostClass: TAction
      Category = 'Class'
      ImageIndex = 7
      OnExecute = ActionPostClassExecute
    end
    object ActionCancelClass: TAction
      Category = 'Class'
      ImageIndex = 8
      OnExecute = ActionCancelClassExecute
    end
    object ActionPreviewAll: TAction
      Category = 'Preview'
      Caption = 'All Records'
      ImageIndex = 21
      ShortCut = 16449
      OnExecute = ActionPreviewAllExecute
    end
    object ActionPreviewLetter: TAction
      Category = 'Preview'
      Caption = 'Current Letter'
      ImageIndex = 21
      ShortCut = 16460
      OnExecute = ActionPreviewLetterExecute
    end
    object ActionPreviewRecord: TAction
      Category = 'Preview'
      Caption = 'Current Record'
      ImageIndex = 21
      ShortCut = 16466
      OnExecute = ActionPreviewRecordExecute
    end
    object ActionPreviewClass: TAction
      Category = 'Preview'
      Caption = 'Current Class'
      ImageIndex = 21
      ShortCut = 16469
      OnExecute = ActionPreviewClassExecute
    end
    object ActionPrintAll: TAction
      Category = 'Print'
      Caption = 'All Records'
      ImageIndex = 13
      ShortCut = 16464
      OnExecute = ActionPrintAllExecute
    end
    object ActionPrintRecord: TAction
      Category = 'Print'
      Caption = 'Current Record'
      ImageIndex = 13
      ShortCut = 16450
      OnExecute = ActionPrintRecordExecute
    end
    object ActionPrintLetter: TAction
      Category = 'Print'
      Caption = 'Current Letter'
      ImageIndex = 13
      ShortCut = 16452
      OnExecute = ActionPrintLetterExecute
    end
    object ActionPrintClass: TAction
      Category = 'Print'
      Caption = 'Current Class'
      ImageIndex = 13
      ShortCut = 16453
      OnExecute = ActionPrintClassExecute
    end
  end
  object tbClass: TADOTable
    TableName = 'tbClass'
    Left = 240
    Top = 312
  end
  object dSClass: TDataSource
    DataSet = tbClass
    Left = 208
    Top = 312
  end
  object ImgList: TImageList
    Left = 124
    Top = 312
    Bitmap = {
      494C010116001800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000006000000001002000000000000060
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080000080800000008000008080000000800000808000
      0000800000808000000080000080800000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000800000FFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFFFFFFFFFF00FFFFFF8080000000000000BFFFFFFF00FFFFFFBFFFFF
      FF00FFFFFFBFFFFFFF00FFFFFFBFFFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000008080808000008080808080
      80000080808080808000800000FFFFFFFF008000008080000000800000808000
      00008000008080000000FFFFFF8080000000000000BFFFFFFF00000000000000
      00000000000000000000000000BFFFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000808000808080000080
      80008080800000808000800000FFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFFFFFFFFFF00FFFFFF8080000000000000BFFFFFFF00000000000000
      00000000000000000000000000BFFFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000008080808000008080808080
      80000080808080808000800000FFFFFFFF008000008080000000800000FFFFFF
      FF0080000080800000008000008080000000000000BFFFFFFF00000000000000
      0000000000808080800000000000000000000000008080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000808000808080000080
      80008080800000808000800000FFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
      FF00800000FFFFFFFF008000000000000000000000BFFFFFFF00000000000000
      00000000000000000000FFFFFFBFFFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000008080808000008080808080
      80000080808080808000800000FFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
      FF0080000080800000000000000000000000000000BFFFFFFF00000000000000
      0000808080BFFFFFFF00FFFFFFBFFFFFFF00FFFFFF0000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000808000808080000080
      8000808080000080800080000080800000008000008080000000800000808000
      000080000000000000000000000000000000000000BFFFFFFF00808080000000
      0000FFFF0000000000000000000000000000FFFFFF0000000000000000000000
      0000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000008080808000008080808080
      8000008080808080800000808080808080000080808080808000008080808080
      800000808000000000000000000000000000000000BFFFFFFF00000000BFFFFF
      0000FFFFFFBFFFFF0000FFFFFFBFFFFF0000FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000808000808080000000
      0000000000000000000000000000000000000000000000000000000000808080
      800080808000000000000000000000000000000000BFFFFFFF00000000BFFFFF
      FF0000000000000000000000000000000000FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000008080808000808080000000
      0000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000000000808080
      8000008080000000000000000000000000000000000000000000000000BFFFFF
      0000FFFFFFBFFFFF0000FFFFFFBFFFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000808000808080000080
      80000000000000FFFF00000000000000000000FFFF0000000000808080000080
      8000808080000000000000000000000000000000000000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000808080800000000000000000000000008080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000800000008000000080000000800000008000000080000000
      8000000080000000000000000000000000000000000000000000000000000000
      0000800000808000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000008000000080000000
      00000000FF80C0C0C00000000080C0C0C00000000080C0C0C00000000080C0C0
      C000000080000000000000000000000000000000000000000000000000808000
      0000000000000000000080000000000000000000008080000000800000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000BFFFFF0000FFFF00BFFFFF0000FFFF00BFFFFF0000FFFF00000000
      0000000000000000000000000000000000000000800000000000000000000000
      00000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF00000080000000000000000000000000000000000000000000000000808000
      0000000000000000000080000000000000008000000000000000000000808000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF0000000000FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000800000000000000000000000
      0000000000000000FF00C0C0C00000000000C0C0C00000000000C0C0C0000000
      FF00000000000000000000000000000000000000000000000000000000808000
      0000000000000000000080000000000000008000000000000000000000808000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF000000000000FFFF000000000000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFFBFFFFFFF0000FFFFBFFFFFFF0000FFFF000000
      0000000000000000000000000000000000000000800000000000000000000000
      000000008000000000000000FF000000FF000000FF000000FF000000FF000000
      0000000080000000000000000000000000000000000000000000000000000000
      0000800000808000000080000000000000008000000000000000000000808000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF0000000000FFFFFF0000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00000000000000000000000000000000008080800000000000000080000000
      8000000080000000000000000000000000000000000000000000000000000000
      0000000080000000800000008000000000000000000000000000000000000000
      0000000000000000000080000000000000008000008080000000800000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF000000000000FFFFBFFFFFFF0000FFFFBFFFFFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000BFFFFFFF0000FFFFBFFFFFFF0000FFFFBFFFFFFF00000000BFFFFF
      FF000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000000000008000000080000000800000008000000080000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000080000000000000008000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000000000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFFBFFFFFFF0000FFFFBFFFFFFF0000FFFFBFFFFFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000BFFFFFFF00000000BFFFFFFF00000000BFFFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF000000000000FFFF000000000000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000BFFFFFFF00000000BFFFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000BFFFFF0000FFFF00BFFFFF0000FFFF00BFFFFF0000FFFF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000BFFFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000800000BFFF00FF00800080000000000000000080C0C0C000FFFFFFBFFFFF
      FF00FFFFFF808000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008000008080008000FF00FF8080008000000000BFFFFFFF00FFFFFFBFFFFF
      FF00FFFFFF808000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000080800080008000808080808000000000000000
      0000000000000000000000000000000000000000000000000000C0C0C080C0C0
      C000C0C0C080C0C0C000C0C0C080C0C0C000C0C0C080C0C0C000C0C0C0000000
      0000C0C0C0000000000000000000000000000000000000000000000000000000
      0000800000BFFF00FF00800080BFFF00FF00000000BFFFFFFF00FFFFFFBFFFFF
      FF00FFFFFF808000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000008080008000800080FFFFFFFF00FFFFFFC0C0C0C000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000080C0C0C00000000000000000000000000000000000000000000000
      00008000008080008000FF00FF8080008000000000BFFFFFFF00FFFF00BFFFFF
      FF00FFFF0080800000000000000000000000000000BFFFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000BFFFFF
      FF00000000000000000000000000000000000000000000000000000000808000
      8000800080FFFFFFFF00FFFFFF0000000000000000C0C0C0C000C0C0C0808080
      80000000000000000000000000000000000000000080C0C0C000C0C0C080C0C0
      C000C0C0C080C0C0C000C0C0C00000FFFF0000FFFF0000FFFF00C0C0C080C0C0
      C000000000000000000000000000000000000000000000000000000000000000
      0000800000BFFF00FF00800080BFFF00FF00000000BFFFFFFF00FFFFFFBFFFFF
      FF00FFFFFF80800000000000000000000000000000BFFFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000BFFFFF
      FF00000000000000000000000000000000008080808080008000800080FFFFFF
      FF00FFFFFF000000000000000080800080008000800000000000C0C0C0C0C0C0
      C0008080800000000000000000000000000000000080C0C0C000C0C0C080C0C0
      C000C0C0C080C0C0C000C0C0C080808080008080808080808000C0C0C080C0C0
      C00000000080C0C0C00000000000000000000000000000000000000000000000
      00008000008080008000FF00FF8080008000000000BFFFFFFF00FFFF00BFFFFF
      FF00FFFF00808000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080808080008000FFFFFF000000
      0000000000808000800080008080800080008000808080008000000000C0C0C0
      C000C0C0C0808080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000080C0C0C000C0C0C000000000000000000000000000000000000000
      0000800000BFFF00FF00800080BFFF00FF00000000BFFFFFFF00FFFFFFBFFFFF
      FF00FFFFFF808000000000000000000000000000000000000000FFFFFF000000
      000000000000000000000000000000000000000000BFFFFFFF00000000000000
      0000000000000000000000000000000000008080800000000000000000808000
      800080008080800080000080800000FFFF008000808080008000800080000000
      0000C0C0C0C0C0C0C000808080000000000000000080C0C0C000C0C0C080C0C0
      C000C0C0C080C0C0C000C0C0C080C0C0C000C0C0C080C0C0C000C0C0C0000000
      0000C0C0C00000000000C0C0C000000000000000000000000000000000000000
      00008000008080008000FF00FF8080008000000000BFFFFFFF00FFFF00BFFFFF
      FF00FFFF00808000000000000000000000000000000000000000FFFFFF000000
      000000000000000000000000000000000000000000BFFFFFFF00000000000000
      0000000000000000000000000000000000008080808080008000800080808000
      8000800080808000800080008000008080008000808080008000800080808000
      8000000000C0C0C0C00000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000080C0C0
      C00000000080C0C0C00000000000000000000000000000000000000000000000
      0000800000BFFF00FF00800080BFFF00FF00000000BFFFFF0000FFFFFFBFFFFF
      0000FFFFFF808000000000000000000000000000000000000000FFFFFF000000
      000000000000000000000000000000000000000000BFFFFFFF00000000000000
      0000000000000000000000000000000000000000008080008000FFFFFF808000
      80008000808080008000800080808000800000FFFF0000FFFF00800080808000
      8000800080000000000000000000000000000000000000000000000000BFFFFF
      FF00FFFFFFBFFFFFFF00FFFFFFBFFFFFFF00FFFFFFBFFFFFFF00FFFFFF000000
      0000C0C0C00000000000C0C0C000000000000000000000000000000000000000
      00008000008080008000FF00FF8080008000000000BFFFFFFF00FFFF00BFFFFF
      FF00FFFF00808000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000800080FFFFFF
      FF0080008080800080008000808080008000800080000080800000FFFF0000FF
      FF00800080808000800000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000800000BFFF00FF00800080BFFF00FF00000000BFFFFF0000FFFFFFBFFFFF
      0000FFFFFF808000000000000000000000000000000000000000000000BFFFFF
      FF0000000000000000000000000000000000000000BFFFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000808000
      8000FFFFFF80800080008000808080008000008080808000800000FFFF0000FF
      FF00800080808000800080008000000000000000000000000000000000000000
      0000FFFFFFBFFFFFFF00FFFFFFBFFFFFFF00FFFFFFBFFFFFFF00FFFFFFBFFFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000800000808000000080000080800000008000008080000000800000808000
      0000800000808000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000800080FFFFFFFF00800080808000800000FFFF0000FFFF0000FFFF808000
      8000800080808000800000000000000000000000000000000000000000000000
      0000000000BFFFFFFF0000000000000000000000000000000000000000BFFFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000008080008000FFFFFF80800080008000808080008000800080808000
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000BFFFFFFF00FFFFFFBFFFFFFF00FFFFFFBFFFFFFF00FFFFFFBFFFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000800080FFFFFFFF008000808080008000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FF000000FF000000FF000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000080800080008000800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080000080800000008000008080000000800000808000
      0000800000808000000080000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000000000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000800000BFFFFFFF00FFFFFFBFFFFFFF00FFFFFFBFFFFF
      FF00FFFFFFBFFFFFFF0080000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080000000000000000080808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000800000BFFFFFFF000000000000000000000000000000
      0000000000BFFFFFFF0080000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000800000BFFFFFFF00FFFFFFBFFFFFFF00FFFFFFBFFFFF
      FF00FFFFFFBFFFFFFF0080000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000808080
      8000000000808080800000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000BFFFFFFF00FFFFFFBFFFFF
      FF00FFFFFFBFFFFFFF00800000BFFFFFFF000000000000000000000000000000
      0000000000BFFFFFFF0080000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000BFFFFFFF00000000000000
      00000000000000000000800000BFFFFFFF00FFFFFFBFFFFFFF00FFFFFFBFFFFF
      FF00FFFFFFBFFFFFFF0080000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000BFFFFFFF00FFFFFFBFFFFF
      FF00FFFFFFBFFFFFFF00800000BFFFFFFF000000000000000000FFFFFF808000
      0000800000808000000080000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000808080800000000000000000000000008080808000000000000000
      000000000000000000000000000000000000000000BFFFFFFF00000000000000
      00000000000000000000800000BFFFFFFF00FFFFFFBFFFFFFF00FFFFFF808000
      0000FFFFFF808000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00008080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000808080
      8000000000000000000080808000000000008080800000000000000000000000
      000000000000000000000000000000000000000000BFFFFFFF00FFFFFFBFFFFF
      FF00FFFFFFBFFFFFFF00800000BFFFFFFF00FFFFFFBFFFFFFF00FFFFFF808000
      0000800000000000000000000000000000000000000000000000000000000000
      000000FFFF000080800000000000000000000000000000FFFF0000FFFF000080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000808080
      800000000000000000000000000000000000000000BFFFFFFF00000000000000
      0000FFFFFF000000000080000080800000008000008080000000800000808000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF00008080000000000000000000000000000000000000FFFF000080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000808080800000000000000000000000008080808000000000000000
      000000000000000000000000000000000000000000BFFFFFFF00FFFFFFBFFFFF
      FF00FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000808000000000000000000000FFFF0000FFFF000080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000BFFFFFFF00FFFFFFBFFFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00008080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080000000000000000000000000000000000000000000000000808080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000008080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080000000000000000000000000000000000000000000000000808080
      8000000000000000000000000000000000000000000000000000000000000000
      0000808080000000000000000000000000000000008080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000080808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000000000000000000000000000000000808080
      8000000000000000000000000000000000000000000000000000000000000000
      0000808080000000000000000080808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000808080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800000000000000000808080
      8000000000000000000000000000000000000000000000000000000000000000
      0000808080808080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080808080
      8000000000000000000000000000000000000000000000000000000000000000
      0000808080000000000000000080808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000808080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800000000000000000808080
      8000000000000000000000000000000000000000000000000000000000000000
      0000808080000000000000000000000000000000008080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000080808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000000000000000000000000000000000808080
      8000000000000000000000000000000000000000000000000000000000000000
      0000808080000000000000000000000000000000000000000000000000808080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000008080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080000000000000000000000000000000000000000000000000808080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000600000000100010000000000000300000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF00000000FC00007F00000000
      8000007C0000000000003E780000000000003E71000000000000382300000000
      00013007000000000003200F0000000000030027000000000003003700000000
      000300370000000000030037000000000003C027000000008007E7CF00000000
      F87FF39F00000000FFFFF83F00000000FDFFE00FE003FFFFF8FFE00FE003F3FF
      F8FFE00F8003ED9FF87FF00F6003ED6FF81FF00F7007ED6FF80FF80F0000F16F
      F00FF0070000FD1FE00FF0078000FC7FE00FF007C001FEFFE00FF00FE003FC7F
      F01FF01FFFFFFD7FF00FF81FFFFFF93FF00FFE1FFFFFFBBFF007FF1FFFFFFBBF
      F007FF1FFFFFFBBFF007FFBFFFFFFFFFFFFFFFFFF003FFFFFE3FC007F003FFFF
      F81F8003F00307C1E00F0001F00307C180070001F00307C100030001F0030101
      00010000F003000100000000F003020100018000F00302018001C000F0038003
      C001E001F003C107E000E007F003C107F000F007FFFFE38FF803F003FC0FE38F
      FC0FF803FC0FE38FFE3FFFFFFC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7F
      FFFFFFFFFC01FC3FFFFFFC7FFC01FC3FF3E7F0FFFC01FE7FF1C7F1FF0001FC3F
      F88FE3FF0001FC3FFC1FE7FF0001FC3FFE3FE7070001FC1FFC1FE3870003F20F
      F88FE1070007E107F1C7F007000FE187F3E7F83700FFE007FFFFFFFF01FFF00F
      FFFFFFFF03FFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7FFFFFFFFFFBFFFC7FFFFFFFFFF1FF
      FC7FFFFFE007E0FFE00FE007F00FC47FE00FE007F81FCE3FE00FE007FC3FFF1F
      FC7FFFFFFE7FFF8FFC7FFFFFFFFFFFC7FC7FFFFFFFFFFFE7FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E7FF9FF9FFE7E7
      E787FE1FF87FE1E7E607F81FF81FE067E007F01FF80FE007E607F81FF81FE067
      E787FE1FF87FE1E7E7E7FF9FF9FFE7E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object ADOQuery: TADOQuery
    Parameters = <>
    Left = 304
    Top = 312
  end
  object PMenu: TPopupMenu
    Images = ImgList
    Left = 5
    Top = 311
    object PMShow: TMenuItem
      ImageIndex = 18
      OnClick = PMShowClick
    end
    object PPAbout: TMenuItem
      Action = ActionAbout
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Exit2: TMenuItem
      Action = ActionExit
    end
  end
  object PMPreview: TPopupMenu
    Left = 64
    Top = 313
    object CurrentRecord2: TMenuItem
      Action = ActionPreviewRecord
    end
    object CurrentLetter2: TMenuItem
      Action = ActionPreviewLetter
    end
    object CurrentClass2: TMenuItem
      Action = ActionPreviewClass
    end
    object AllRecords2: TMenuItem
      Action = ActionPreviewAll
    end
  end
  object PMPrint: TPopupMenu
    Left = 32
    Top = 313
    object MenuItem1: TMenuItem
      Action = ActionPrintRecord
    end
    object MenuItem2: TMenuItem
      Action = ActionPrintLetter
    end
    object MenuItem3: TMenuItem
      Action = ActionPrintClass
    end
    object MenuItem4: TMenuItem
      Action = ActionPrintAll
    end
  end
end
