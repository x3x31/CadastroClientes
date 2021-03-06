unit untConsultaCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, System.ImageList, Vcl.ImgList,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask;

type
  TfrmConsultaCliente = class(TForm)
    pnCampos: TPanel;
    pnBotoes: TPanel;
    btConfirmar: TButton;
    btPesquisar: TButton;
    btSair: TButton;
    imgConsulta: TImageList;
    lbDescricao: TLabel;
    lbSituacao: TLabel;
    DBGrid2: TDBGrid;
    edCli_nome: TEdit;
    cbCli_Ativo: TComboBox;
    procedure btPesquisarClick(Sender: TObject);
    procedure btSairClick(Sender: TObject);
    procedure btConfirmarClick(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure cbCli_AtivoChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsultaCliente: TfrmConsultaCliente;

implementation

{$R *.dfm}

uses dmConexao, untCadastroCliente;

procedure TfrmConsultaCliente.btConfirmarClick(Sender: TObject);
var
  cli_id : string;
begin

  if not dmConn.fdqCliente.IsEmpty then
  begin
    frmCadastroCliente.btEditar.Enabled := True;
    frmCadastroCliente.btCancelar.Enabled := True
  end
  else
  begin
    frmCadastroCliente.btEditar.Enabled := False;
    frmCadastroCliente.btCancelar.Enabled := False;
  end;

  cli_id := dmConn.fdqCliente.FieldByName('cli_id').AsString;

  dmConn.fdqTelefone.Open('SELECT * FROM telefone WHERE tel_cli_id = '+cli_id);
  dmConn.fdqEndereco.Open('SELECT * FROM endereco WHERE end_cli_id = '+cli_id);

  frmCadastroCliente.pcDadosCliente.ActivePage := frmCadastroCliente.tsTelefone;

  close;
end;

procedure TfrmConsultaCliente.btPesquisarClick(Sender: TObject);
begin
  dmConn.fdqCliente.Open('SELECT * FROM clientes '+
                         'WHERE '+
                           ' cli_nome LIKE ''%'+edCli_nome.Text+'%'' AND '+
                           ' cli_ativo = '''+cbCli_Ativo.Text+'''');
end;

procedure TfrmConsultaCliente.btSairClick(Sender: TObject);
begin
  dmConn.fdqCliente.Close;
  dmConn.fdqTelefone.Close;
  dmConn.fdqEndereco.Close;
  close;
end;

procedure TfrmConsultaCliente.cbCli_AtivoChange(Sender: TObject);
begin
  btPesquisarClick(Sender);
end;

procedure TfrmConsultaCliente.DBGrid2DblClick(Sender: TObject);
begin
  btConfirmarClick(Sender);
end;

procedure TfrmConsultaCliente.FormActivate(Sender: TObject);
begin
  btPesquisarClick(Sender);
end;

end.
