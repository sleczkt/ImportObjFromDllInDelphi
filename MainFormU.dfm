object MainForm: TMainForm
  Left = 734
  Top = 227
  BorderStyle = bsDialog
  Caption = 'Simple calculator'
  ClientHeight = 225
  ClientWidth = 328
  Color = clGradientInactiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 16
  object Value1Label: TLabel
    Left = 8
    Top = 12
    Width = 42
    Height = 16
    Caption = 'Value1'
  end
  object Value2Label: TLabel
    Left = 8
    Top = 44
    Width = 42
    Height = 16
    Caption = 'Value2'
  end
  object AddLabel: TLabel
    Left = 8
    Top = 124
    Width = 136
    Height = 16
    Caption = 'Add (Value1 + Value2 )'
  end
  object SubstractLabel: TLabel
    Left = 8
    Top = 156
    Width = 164
    Height = 16
    Caption = 'Substract (Value1 - Value2 )'
  end
  object MultiplyLabel: TLabel
    Left = 8
    Top = 188
    Width = 154
    Height = 16
    Caption = 'Multiply (Value1 * Value2 )'
  end
  object CalculateButton: TButton
    Left = 8
    Top = 80
    Width = 313
    Height = 25
    Caption = 'Calculate'
    TabOrder = 0
    OnClick = CalculateButtonClick
  end
  object Value1Edit: TEdit
    Left = 192
    Top = 8
    Width = 121
    Height = 24
    TabOrder = 1
  end
  object Value2Edit: TEdit
    Left = 192
    Top = 40
    Width = 121
    Height = 24
    TabOrder = 2
  end
  object AddEdit: TEdit
    Left = 192
    Top = 120
    Width = 121
    Height = 24
    TabOrder = 3
  end
  object SubstractEdit: TEdit
    Left = 192
    Top = 152
    Width = 121
    Height = 24
    TabOrder = 4
  end
  object MultiplyEdit: TEdit
    Left = 192
    Top = 184
    Width = 121
    Height = 24
    TabOrder = 5
  end
end
