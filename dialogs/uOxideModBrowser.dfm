object frmOxideModBrowser: TfrmOxideModBrowser
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'OxideMod Browser'
  ClientHeight = 632
  ClientWidth = 937
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnltop: TPanel
    Left = 0
    Top = 0
    Width = 937
    Height = 41
    Align = alTop
    TabOrder = 0
    ExplicitLeft = 344
    ExplicitTop = 152
    ExplicitWidth = 185
    DesignSize = (
      937
      41)
    object btnback: TButton
      Left = 16
      Top = 9
      Width = 25
      Height = 25
      ImageAlignment = iaCenter
      ImageIndex = 7
      Images = dmDataModule.imglst
      TabOrder = 0
      OnClick = btnbackClick
    end
    object btnforward: TButton
      Left = 47
      Top = 9
      Width = 25
      Height = 25
      ImageAlignment = iaCenter
      ImageIndex = 8
      Images = dmDataModule.imglst
      TabOrder = 1
      OnClick = btnforwardClick
    end
    object btnrefresh: TButton
      Left = 78
      Top = 9
      Width = 25
      Height = 25
      ImageAlignment = iaCenter
      ImageIndex = 9
      Images = dmDataModule.imglst
      TabOrder = 2
      OnClick = btnrefreshClick
    end
    object edturl: TEdit
      Left = 109
      Top = 11
      Width = 727
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 3
      OnKeyPress = edturlKeyPress
      ExplicitWidth = 735
    end
    object btnoxidemod: TButton
      Left = 842
      Top = 10
      Width = 25
      Height = 25
      Anchors = [akTop, akRight]
      ImageAlignment = iaCenter
      ImageIndex = 4
      Images = dmDataModule.imglst
      TabOrder = 4
      OnClick = btnoxidemodClick
      ExplicitLeft = 850
    end
    object btnrust: TButton
      Left = 872
      Top = 10
      Width = 25
      Height = 25
      Anchors = [akTop, akRight]
      ImageAlignment = iaCenter
      ImageIndex = 10
      Images = dmDataModule.imglst
      TabOrder = 5
      OnClick = btnrustClick
      ExplicitLeft = 880
    end
    object btnuniversal: TButton
      Left = 903
      Top = 10
      Width = 25
      Height = 25
      Anchors = [akTop, akRight]
      ImageAlignment = iaCenter
      ImageIndex = 11
      Images = dmDataModule.imglst
      TabOrder = 6
      OnClick = btnuniversalClick
      ExplicitLeft = 911
    end
  end
  object wb1: TWebBrowser
    Left = 0
    Top = 49
    Width = 937
    Height = 542
    Align = alClient
    ParentShowHint = False
    ShowHint = False
    TabOrder = 1
    OnProgressChange = wb1ProgressChange
    OnCommandStateChange = wb1CommandStateChange
    OnNavigateComplete2 = wb1NavigateComplete2
    ExplicitLeft = 544
    ExplicitTop = 256
    ExplicitWidth = 300
    ExplicitHeight = 150
    ControlData = {
      4C000000D7600000043800000000000000000000000000000000000000000000
      000000004C000000000000000000000001000000E0D057007335CF11AE690800
      2B2E12620A000000000000004C0000000114020000000000C000000000000046
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000100000000000000000000000000000000000000}
  end
  object pb1: TProgressBar
    Left = 0
    Top = 41
    Width = 937
    Height = 8
    Align = alTop
    TabOrder = 2
    ExplicitWidth = 969
  end
  object pnlbottom: TPanel
    Left = 0
    Top = 591
    Width = 937
    Height = 41
    Align = alBottom
    Caption = 'save'
    Font.Charset = ANSI_CHARSET
    Font.Color = 3564785
    Font.Height = -21
    Font.Name = 'Unispace'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    StyleElements = [seClient, seBorder]
    ExplicitLeft = 760
    ExplicitTop = 496
    ExplicitWidth = 185
  end
end
