object frmnormaldownloader: Tfrmnormaldownloader
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Normal Downloader'
  ClientHeight = 64
  ClientWidth = 246
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lblprogress: TLabel
    Left = 8
    Top = 39
    Width = 5
    Height = 19
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object pb1: TAdvMetroProgressBar
    Left = 8
    Top = 8
    Width = 230
    Height = 25
    Color = 3696371
    Position = 0
  end
end
