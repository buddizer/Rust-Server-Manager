object frmLangEditor: TfrmLangEditor
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Language Editor'
  ClientHeight = 167
  ClientWidth = 339
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  DesignSize = (
    339
    167)
  PixelsPerInch = 96
  TextHeight = 19
  object lblcomponentid: TLabel
    Left = 8
    Top = 104
    Width = 12
    Height = 16
    Caption = 'ID'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblsize: TLabel
    Left = 8
    Top = 79
    Width = 70
    Height = 18
    Caption = 'Font Size:'
    Layout = tlCenter
  end
  object pnlbottom: TPanel
    Left = 0
    Top = 126
    Width = 339
    Height = 41
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 82
    ExplicitWidth = 382
    DesignSize = (
      339
      41)
    object btnsave: TButton
      Left = 8
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Save'
      TabOrder = 0
      OnClick = btnsaveClick
    end
    object btncancel: TButton
      Left = 256
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akRight]
      Caption = 'Cancel'
      TabOrder = 1
      OnClick = btncancelClick
      ExplicitLeft = 291
    end
  end
  object lbledtchange: TLabeledEdit
    Left = 8
    Top = 32
    Width = 323
    Height = 25
    Anchors = [akLeft, akTop, akRight]
    EditLabel.Width = 53
    EditLabel.Height = 19
    EditLabel.Caption = 'Change'
    TabOrder = 1
    ExplicitWidth = 366
  end
  object sedsize: TSpinEdit
    Left = 84
    Top = 76
    Width = 57
    Height = 29
    MaxValue = 0
    MinValue = 0
    TabOrder = 2
    Value = 0
    OnChange = sedsizeChange
  end
end
