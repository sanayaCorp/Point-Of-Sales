object SearchForm: TSearchForm
  Left = 0
  Top = 0
  ActiveControl = StringGrid1
  Caption = 'Modul Pencarian'
  ClientHeight = 439
  ClientWidth = 426
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 426
    Height = 439
    Align = alClient
    TabOrder = 0
    TabStop = False
    LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
    object cxGroupBox1: TcxGroupBox
      Left = 10
      Top = 10
      Align = alClient
      PanelStyle.Active = True
      TabOrder = 0
      Height = 415
      Width = 406
      object cxGroupBox2: TcxGroupBox
        Left = 2
        Top = 360
        Align = alBottom
        PanelStyle.Active = True
        TabOrder = 0
        Height = 53
        Width = 402
        object cxLabel2: TcxLabel
          Left = 2
          Top = 2
          Align = alClient
          Caption = 
            'Untuk memilih Silahkan gunakan Tombol Panah Atas Bawah pada Keyb' +
            'oard dan setelah itu tekan tombol Enter  untuk menggunakan data ' +
            'yang telah dipilih sebagai transaksi.'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clRed
          Style.Font.Height = -11
          Style.Font.Name = 'Microsoft Sans Serif'
          Style.Font.Style = [fsItalic]
          Style.IsFontAssigned = True
          Properties.LabelEffect = cxleCool
          Properties.LabelStyle = cxlsRaised
          Properties.Orientation = cxoLeft
          Properties.ShadowedColor = clRed
          Properties.WordWrap = True
          Transparent = True
          Width = 398
        end
      end
      object StringGrid1: TStringGrid
        Left = 2
        Top = 2
        Width = 402
        Height = 358
        Align = alClient
        ColCount = 2
        FixedCols = 0
        RowCount = 2
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 1
        OnDblClick = StringGrid1DblClick
        OnDrawCell = StringGrid1DrawCell
        OnKeyDown = StringGrid1KeyDown
      end
      object editor: TEdit
        Left = 179
        Top = 72
        Width = 121
        Height = 24
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        Text = 'editor'
        Visible = False
      end
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Item1: TdxLayoutItem
        CaptionOptions.Text = 'cxGroupBox1'
        CaptionOptions.Visible = False
        Control = cxGroupBox1
        ControlOptions.AutoColor = True
        ControlOptions.ShowBorder = False
      end
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 256
    Top = 120
    object dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
    end
  end
  object dxSkinController1: TdxSkinController
    Kind = lfOffice11
    SkinName = 'Office2010Blue'
    Left = 256
    Top = 168
  end
  object QCari: TUniQuery
    DataTypeMap = <>
    Connection = MainForm.connPOS
    Left = 184
    Top = 168
  end
end
