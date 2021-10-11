object Form1: TForm1
  Left = 221
  Top = 132
  BorderStyle = bsSingle
  Caption = #1055#1086#1080#1089#1082#1086#1074#1080#1082' '#1085#1072' Yandex.ru'
  ClientHeight = 90
  ClientWidth = 457
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  Icon.Data = {
    0000010001002020100000000000E80200001600000028000000200000004000
    0000010004000000000080020000000000000000000000000000000000000000
    0000000080000080000000808000800000008000800080800000C0C0C0008080
    80000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00CCC0
    000CCCC0000000000CCCC7777CCCCCCC0000CCCC00000000CCCC7777CCCCCCCC
    C0000CCCCCCCCCCCCCC7777CCCCC0CCCCC0000CCCCCCCCCCCC7777CCCCC700CC
    C00CCCC0000000000CCCC77CCC77000C0000CCCC00000000CCCC7777C7770000
    00000CCCC000000CCCC777777777C000C00000CCCC0000CCCC77777C777CCC00
    CC00000CCCCCCCCCC77777CC77CCCCC0CCC000CCCCC00CCCCC777CCC7CCCCCCC
    CCCC0CCCCCCCCCCCCCC7CCCCCCCCCCCC0CCCCCCCCCCCCCCCCCCCCCC7CCC70CCC
    00CCCCCCCC0CC0CCCCCCCC77CC7700CC000CCCCCC000000CCCCCC777CC7700CC
    0000CCCC00000000CCCC7777CC7700CC0000C0CCC000000CCC7C7777CC7700CC
    0000C0CCC000000CCC7C7777CC7700CC0000CCCC00000000CCCC7777CC7700CC
    000CCCCCC000000CCCCCC777CC7700CC00CCCCCCCC0CC0CCCCCCCC77CC770CCC
    0CCCCCCCCCCCCCCCCCCCCCC7CCC7CCCCCCCC0CCCCCCCCCCCCCC7CCCCCCCCCCC0
    CCC000CCCCC00CCCCC777CCC7CCCCC00CC00000CCCCCCCCCC77777CC77CCC000
    C00000CCCC0000CCCC77777C777C000000000CCCC000000CCCC777777777000C
    0000CCCC00000000CCCC7777C77700CCC00CCCC0000000000CCCC77CCC770CCC
    CC0000CCCCCCCCCCCC7777CCCCC7CCCCC0000CCCCCCCCCCCCCC7777CCCCCCCCC
    0000CCCC00000000CCCC7777CCCCCCC0000CCCC0000000000CCCC7777CCC0000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000000000000000000000000000000000000000000000000000}
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 120
  TextHeight = 16
  object Label1: TLabel
    Left = 8
    Top = 60
    Width = 153
    Height = 16
    Caption = #1055#1086#1080#1089#1082' '#1085#1072' Yandex.ru'
  end
  object Edit1: TEdit
    Left = 8
    Top = 24
    Width = 337
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -10
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Text = #1057#1082#1072#1095#1072#1090#1100
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 5
    Width = 337
    Height = 20
    Caption = ' '#1042#1074#1077#1076#1080#1090#1077' '#1089#1083#1086#1074#1086' '#1080#1083#1080' '#1092#1088#1072#1079#1091' '#1076#1083#1103' '#1087#1086#1080#1089#1082#1072' '
    TabOrder = 2
  end
  object Button1: TButton
    Left = 352
    Top = 24
    Width = 97
    Height = 25
    Caption = #1053#1072#1081#1090#1080
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 167
    Top = 60
    Width = 42
    Height = 17
    Hint = #1042#1099#1073#1088#1072#1090#1100' '#1087#1086#1080#1089#1082#1086#1074#1080#1082
    Caption = '<>'
    ParentShowHint = False
    PopupMenu = PopupMenu1
    ShowHint = True
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 352
    Top = 56
    Width = 97
    Height = 25
    Caption = #1042#1099#1093#1086#1076
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = Button3Click
  end
  object PopupMenu1: TPopupMenu
    Left = 216
    Top = 56
    object Yandexru1: TMenuItem
      Caption = #1053#1072' Yandex.ru'
      OnClick = Yandexru1Click
    end
    object N1: TMenuItem
      Caption = #1053#1072' Google.ru'
      OnClick = N1Click
    end
    object MSN1: TMenuItem
      Caption = #1053#1072' MSN.com'
      OnClick = MSN1Click
    end
    object Yahoo1: TMenuItem
      Caption = #1053#1072' Yahoo.com'
      OnClick = Yahoo1Click
    end
    object Rambler1: TMenuItem
      Caption = #1053#1072' Rambler.ru'
      OnClick = Rambler1Click
    end
    object ru1: TMenuItem
      Caption = #1053#1072' '#1040#1087#1086#1088#1090'.ru'
      OnClick = ru1Click
    end
  end
end
