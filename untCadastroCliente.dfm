object frmCadastroCliente: TfrmCadastroCliente
  Left = 0
  Top = 0
  Caption = 'Cadastro de Cliente'
  ClientHeight = 396
  ClientWidth = 476
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Visible = True
  OnShow = FormShow
  DesignSize = (
    476
    396)
  PixelsPerInch = 96
  TextHeight = 13
  object SplitView1: TSplitView
    Left = 0
    Top = 0
    Width = 44
    Height = 397
    CloseStyle = svcCompact
    CompactWidth = 44
    DisplayMode = svmOverlay
    Opened = False
    OpenedWidth = 140
    ParentBackground = True
    ParentColor = True
    Placement = svpLeft
    TabOrder = 0
    UseAnimation = False
    OnExit = SplitView1Exit
    DesignSize = (
      44
      397)
    object Bevel1: TBevel
      Left = 0
      Top = 0
      Width = 44
      Height = 397
      Align = alClient
      Style = bsRaised
      ExplicitTop = 1
      ExplicitHeight = 492
    end
    object lbAlterar: TLabel
      Left = 44
      Top = 111
      Width = 35
      Height = 15
      Caption = 'Alterar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbCancelar: TLabel
      Left = 44
      Top = 196
      Width = 45
      Height = 15
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbConsultar: TLabel
      Left = 44
      Top = 28
      Width = 50
      Height = 15
      Caption = 'Consultar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbInformacao: TLabel
      Left = 44
      Top = 238
      Width = 67
      Height = 15
      Caption = 'Informa'#231#245'es'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbNovo: TLabel
      Left = 44
      Top = 69
      Width = 29
      Height = 15
      Caption = 'Novo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbSair: TLabel
      Left = 44
      Top = 363
      Width = 20
      Height = 15
      Anchors = [akLeft, akBottom]
      Caption = 'Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitTop = 348
    end
    object lbSalvar: TLabel
      Left = 44
      Top = 153
      Width = 32
      Height = 15
      Caption = 'Salvar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btPesquisar: TButton
      Left = 1
      Top = 14
      Width = 42
      Height = 42
      DoubleBuffered = True
      ImageIndex = 4
      Images = dmConn.imgCadastros
      ParentDoubleBuffered = False
      Style = bsCommandLink
      TabOrder = 0
      StyleElements = [seFont, seBorder]
      OnClick = btPesquisarClick
    end
    object btInserir: TButton
      Left = 1
      Top = 56
      Width = 42
      Height = 42
      DoubleBuffered = True
      ImageIndex = 0
      Images = dmConn.imgCadastros
      ParentDoubleBuffered = False
      Style = bsCommandLink
      TabOrder = 1
      StyleElements = [seFont, seBorder]
      OnClick = btInserirClick
    end
    object btEditar: TButton
      Left = 1
      Top = 98
      Width = 42
      Height = 42
      DoubleBuffered = True
      Enabled = False
      ImageIndex = 1
      Images = dmConn.imgCadastros
      ParentDoubleBuffered = False
      Style = bsCommandLink
      TabOrder = 2
      StyleElements = [seFont, seBorder]
      OnClick = btEditarClick
    end
    object btSalvar: TButton
      Left = 1
      Top = 140
      Width = 42
      Height = 42
      DoubleBuffered = True
      Enabled = False
      ImageIndex = 2
      Images = dmConn.imgCadastros
      ParentDoubleBuffered = False
      Style = bsCommandLink
      TabOrder = 3
      StyleElements = [seFont, seBorder]
      OnClick = btSalvarClick
    end
    object btCancelar: TButton
      Left = 1
      Top = 182
      Width = 42
      Height = 42
      DoubleBuffered = True
      Enabled = False
      ImageIndex = 3
      Images = dmConn.imgCadastros
      ParentDoubleBuffered = False
      Style = bsCommandLink
      TabOrder = 4
      StyleElements = [seFont, seBorder]
      OnClick = btCancelarClick
    end
    object btSair: TButton
      Left = 1
      Top = 350
      Width = 42
      Height = 42
      Anchors = [akLeft, akBottom]
      DoubleBuffered = True
      ImageIndex = 6
      Images = dmConn.imgCadastros
      ParentDoubleBuffered = False
      Style = bsCommandLink
      TabOrder = 5
      StyleElements = [seFont, seBorder]
      OnClick = btSairClick
    end
  end
  object ProgressBar1: TProgressBar
    Left = 0
    Top = 0
    Width = 476
    Height = 14
    Align = alTop
    Position = 100
    TabOrder = 2
  end
  object pnCampos: TPanel
    Left = 44
    Top = 14
    Width = 432
    Height = 382
    Align = alClient
    Enabled = False
    TabOrder = 3
    object lbCodigo: TLabel
      Left = 6
      Top = 5
      Width = 41
      Height = 15
      Caption = 'C'#243'digo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbDescricao: TLabel
      Left = 82
      Top = 6
      Width = 44
      Height = 15
      Caption = 'Nome: *'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbSituacao: TLabel
      Left = 357
      Top = 6
      Width = 39
      Height = 15
      Caption = 'Ativo: *'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbTipo: TLabel
      Left = 6
      Top = 48
      Width = 35
      Height = 15
      Caption = 'Tipo: *'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 82
      Top = 48
      Width = 63
      Height = 15
      Caption = 'CPF/CNPJ: *'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbInscEstadual: TLabel
      Left = 210
      Top = 48
      Width = 25
      Height = 15
      Caption = 'I. E.: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 357
      Top = 48
      Width = 68
      Height = 15
      Caption = 'Dt. Cadastro:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dbeCli_id: TDBEdit
      Left = 6
      Top = 20
      Width = 64
      Height = 21
      TabStop = False
      DataField = 'cli_id'
      DataSource = dmConn.dsCliente
      Enabled = False
      TabOrder = 0
    end
    object dbeCli_nome: TDBEdit
      Left = 82
      Top = 20
      Width = 267
      Height = 21
      DataField = 'cli_nome'
      DataSource = dmConn.dsCliente
      TabOrder = 1
    end
    object dbeCli_cpf: TDBEdit
      Left = 82
      Top = 62
      Width = 122
      Height = 21
      DataField = 'cli_cpf'
      DataSource = dmConn.dsCliente
      TabOrder = 4
      OnExit = dbeCli_cpfExit
    end
    object dbeCli_rg_ie: TDBEdit
      Left = 210
      Top = 62
      Width = 139
      Height = 21
      DataField = 'cli_rg_ie'
      DataSource = dmConn.dsCliente
      TabOrder = 5
    end
    object dbeCli_dt_cadastro: TDBEdit
      Left = 353
      Top = 62
      Width = 72
      Height = 21
      TabStop = False
      DataField = 'cli_dt_cadastro'
      DataSource = dmConn.dsCliente
      Enabled = False
      TabOrder = 6
    end
    object pcDadosCliente: TPageControl
      Left = 6
      Top = 89
      Width = 423
      Height = 288
      ActivePage = tsEndereco
      TabOrder = 7
      object tsTelefone: TTabSheet
        Caption = 'Telefone F4'
        object lbTelefone: TLabel
          Left = 80
          Top = 10
          Width = 47
          Height = 15
          Caption = 'N'#250'mero:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 3
          Top = 10
          Width = 30
          Height = 15
          Caption = 'DDD:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBGrid2: TDBGrid
          Left = 3
          Top = 52
          Width = 406
          Height = 205
          DataSource = dmConn.dsTelefone
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 3
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'tel_id'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'tel_cli_id'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'tel_ddd'
              Title.Caption = 'DDD'
              Width = 56
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tel_numero'
              Title.Caption = 'N'#250'mero'
              Width = 194
              Visible = True
            end>
        end
        object dbeTel_ddd: TDBEdit
          Left = 3
          Top = 25
          Width = 64
          Height = 21
          DataField = 'tel_ddd'
          DataSource = dmConn.dsTelefone
          TabOrder = 0
        end
        object dbeTel_numero: TDBEdit
          Left = 80
          Top = 25
          Width = 64
          Height = 21
          DataField = 'tel_numero'
          DataSource = dmConn.dsTelefone
          TabOrder = 1
        end
        object dbnTelefone: TDBNavigator
          Left = 154
          Top = 21
          Width = 216
          Height = 25
          DataSource = dmConn.dsTelefone
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
          TabOrder = 2
          OnClick = dbnTelefoneClick
        end
      end
      object tsEndereco: TTabSheet
        Caption = 'Endere'#231'o F5'
        ImageIndex = 1
        DesignSize = (
          415
          260)
        object Label3: TLabel
          Left = 3
          Top = 1
          Width = 23
          Height = 15
          Caption = 'CEP:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 4
          Top = 40
          Width = 65
          Height = 15
          Caption = 'Logradouro:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 72
          Top = 77
          Width = 34
          Height = 15
          Caption = 'Bairro:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 4
          Top = 77
          Width = 47
          Height = 15
          Caption = 'N'#250'mero:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 336
          Top = 77
          Width = 24
          Height = 15
          Caption = 'Pa'#237's:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 292
          Top = 77
          Width = 38
          Height = 15
          Caption = 'Estado:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label10: TLabel
          Left = 166
          Top = 77
          Width = 39
          Height = 15
          Caption = 'Cidade:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object dbeEnd_logradouro: TDBEdit
          Left = 3
          Top = 53
          Width = 406
          Height = 21
          DataField = 'end_logradouro'
          DataSource = dmConn.dsEndereco
          TabOrder = 3
        end
        object DBGrid3: TDBGrid
          Left = 3
          Top = 124
          Width = 406
          Height = 133
          DataSource = dmConn.dsEndereco
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 9
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'end_id'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'end_cli_id'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'end_cep'
              Title.Caption = 'CEP'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'end_logradouro'
              Title.Caption = 'Logradouro'
              Width = 76
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'end_numero'
              Title.Caption = 'N'#250'mero'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'end_bairro'
              Title.Caption = 'Bairro'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'end_cidade'
              Title.Caption = 'Cidade'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'end_estado'
              Title.Caption = 'Estado'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'end_pais'
              Title.Caption = 'Pa'#237's'
              Width = 50
              Visible = True
            end>
        end
        object dbnEndereco: TDBNavigator
          Left = 122
          Top = 13
          Width = 216
          Height = 25
          DataSource = dmConn.dsEndereco
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
          TabOrder = 2
          OnClick = dbnEnderecoClick
        end
        object dbeEnd_numero: TDBEdit
          Left = 3
          Top = 92
          Width = 64
          Height = 21
          DataField = 'end_numero'
          DataSource = dmConn.dsEndereco
          TabOrder = 4
        end
        object dbeEnd_bairro: TDBEdit
          Left = 72
          Top = 92
          Width = 90
          Height = 21
          DataField = 'end_bairro'
          DataSource = dmConn.dsEndereco
          TabOrder = 5
        end
        object dbeEnd_estado: TDBEdit
          Left = 292
          Top = 92
          Width = 40
          Height = 21
          DataField = 'end_estado'
          DataSource = dmConn.dsEndereco
          TabOrder = 7
        end
        object dbeEnd_pais: TDBEdit
          Left = 336
          Top = 92
          Width = 73
          Height = 21
          DataField = 'end_pais'
          DataSource = dmConn.dsEndereco
          TabOrder = 8
        end
        object dbeEnd_cidade: TDBEdit
          Left = 166
          Top = 92
          Width = 122
          Height = 21
          DataField = 'end_cidade'
          DataSource = dmConn.dsEndereco
          TabOrder = 6
        end
        object btConsultarCEP: TButton
          Left = 74
          Top = 5
          Width = 42
          Height = 42
          Anchors = [akTop, akRight]
          DoubleBuffered = True
          ImageIndex = 4
          Images = dmConn.imgCadastros
          ParentDoubleBuffered = False
          Style = bsCommandLink
          TabOrder = 1
          StyleElements = [seFont, seBorder]
          OnClick = btConsultarCEPClick
        end
        object dbeEnd_cep: TDBEdit
          Left = 3
          Top = 16
          Width = 64
          Height = 21
          DataField = 'end_cep'
          DataSource = dmConn.dsEndereco
          TabOrder = 0
        end
      end
    end
    object dbeCli_ativo: TDBComboBox
      Left = 355
      Top = 20
      Width = 72
      Height = 21
      DataField = 'cli_ativo'
      DataSource = dmConn.dsCliente
      Items.Strings = (
        'S'
        'N')
      TabOrder = 2
    end
    object dbeCli_tipo: TDBComboBox
      Left = 6
      Top = 62
      Width = 64
      Height = 21
      DataField = 'cli_tipo'
      DataSource = dmConn.dsCliente
      Items.Strings = (
        'F'
        'J')
      TabOrder = 3
      OnExit = dbeCli_tipoExit
    end
  end
  object RESTClient1: TRESTClient
    Params = <>
    Left = 384
    Top = 200
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Params = <>
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 384
    Top = 248
  end
  object RESTResponse1: TRESTResponse
    Left = 384
    Top = 296
  end
  object ActionList1: TActionList
    Left = 416
    Top = 104
    object aTelefone: TAction
      Caption = 'Visualizar Aba de Telefone'
      ShortCut = 115
      OnExecute = aTelefoneExecute
    end
    object aEndereco: TAction
      Caption = 'Visualizar Aba de Endere'#231'o'
      ShortCut = 116
      OnExecute = aEnderecoExecute
    end
  end
end
