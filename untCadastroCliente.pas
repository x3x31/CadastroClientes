unit untCadastroCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.WinXCtrls, System.ImageList, Vcl.ImgList, StrUtils,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef,
  FireDAC.Stan.ExprFuncs, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Mask,
  Vcl.DBCtrls, FireDAC.Comp.DataSet, FireDAC.Comp.Client,


  Typinfo, REST.Types, REST.Client, Data.Bind.Components, Data.Bind.ObjectScope,
  System.Actions, Vcl.ActnList
  ;

type
  TfrmCadastroCliente = class(TForm)
    SplitView1: TSplitView;
    Bevel1: TBevel;
    lbAlterar: TLabel;
    lbCancelar: TLabel;
    lbConsultar: TLabel;
    lbInformacao: TLabel;
    lbNovo: TLabel;
    lbSair: TLabel;
    lbSalvar: TLabel;
    btPesquisar: TButton;
    btInserir: TButton;
    btEditar: TButton;
    btSalvar: TButton;
    btCancelar: TButton;
    btSair: TButton;
    ProgressBar1: TProgressBar;
    pnCampos: TPanel;
    lbCodigo: TLabel;
    lbDescricao: TLabel;
    lbSituacao: TLabel;
    lbTipo: TLabel;
    Label9: TLabel;
    lbInscEstadual: TLabel;
    Label1: TLabel;
    dbeCli_id: TDBEdit;
    dbeCli_nome: TDBEdit;
    dbeCli_cpf: TDBEdit;
    dbeCli_rg_ie: TDBEdit;
    dbeCli_dt_cadastro: TDBEdit;
    pcDadosCliente: TPageControl;
    tsTelefone: TTabSheet;
    DBGrid2: TDBGrid;
    dbeTel_ddd: TDBEdit;
    dbeTel_numero: TDBEdit;
    lbTelefone: TLabel;
    Label2: TLabel;
    dbnTelefone: TDBNavigator;
    tsEndereco: TTabSheet;
    Label3: TLabel;
    Label4: TLabel;
    dbeEnd_logradouro: TDBEdit;
    DBGrid3: TDBGrid;
    dbnEndereco: TDBNavigator;
    dbeEnd_numero: TDBEdit;
    dbeEnd_bairro: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    dbeEnd_estado: TDBEdit;
    dbeEnd_pais: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    dbeEnd_cidade: TDBEdit;
    btConsultarCEP: TButton;
    dbeEnd_cep: TDBEdit;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    dbeCli_ativo: TDBComboBox;
    dbeCli_tipo: TDBComboBox;
    ActionList1: TActionList;
    aTelefone: TAction;
    aEndereco: TAction;
    procedure SplitView1Exit(Sender: TObject);
    procedure btInserirClick(Sender: TObject);
    procedure btEditarClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btConsultarCEPClick(Sender: TObject);
    procedure btPesquisarClick(Sender: TObject);
    procedure btSairClick(Sender: TObject);
    procedure dbnTelefoneClick(Sender: TObject; Button: TNavigateBtn);
    procedure dbnEnderecoClick(Sender: TObject; Button: TNavigateBtn);
    procedure FormShow(Sender: TObject);
    procedure aTelefoneExecute(Sender: TObject);
    procedure aEnderecoExecute(Sender: TObject);
    procedure dbeCli_cpfExit(Sender: TObject);
    procedure dbeCli_tipoExit(Sender: TObject);
  private
    //function ValidarCampos(nome, ativo, tipo, cpf : string) : Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroCliente: TfrmCadastroCliente;


implementation

{$R *.dfm}

uses dmConexao, System.JSON, untConsultaCliente, untFuncoes;

procedure TfrmCadastroCliente.SplitView1Exit(Sender: TObject);
begin
  SplitView1.Opened := False;
end;

{
function TfrmCadastroCliente.ValidarCampos(nome, ativo, tipo, cpf : string) : Boolean;
begin

  Result := False;

  if (dbeCli_nome.Text = '') then
    dbeCli_nome.SetFocus
  else if (dbeCli_ativo.Text = '') then
    dbeCli_ativo.SetFocus
  else if (dbeCli_tipo.Text = '') then
    dbeCli_tipo.SetFocus
  else if (dbeCli_cpf.Text = '') then
    dbeCli_cpf.SetFocus
  else
    Result := True;

end;
}

procedure TfrmCadastroCliente.aEnderecoExecute(Sender: TObject);
begin
  pcDadosCliente.ActivePage := tsEndereco;
end;

procedure TfrmCadastroCliente.aTelefoneExecute(Sender: TObject);
begin
  pcDadosCliente.ActivePage := tsTelefone;
end;

procedure TfrmCadastroCliente.btCancelarClick(Sender: TObject);
begin

  if  MessageDlg('Deseja excluir esse cliente?',mtConfirmation,[mbyes,mbno],0) = mryes then
  begin
    dmConn.fdqCliente.Delete;

    dmConn.fdqCliente.Close;
    dmConn.fdqTelefone.Close;
    dmConn.fdqEndereco.Close;

    btEditar.Enabled := False;
    btCancelar.Enabled := False;
    btPesquisar.Enabled := True;
    btInserir.Enabled := True;
    btSalvar.Enabled := False;

    pnCampos.Enabled := False;
  end;

end;

procedure TfrmCadastroCliente.btEditarClick(Sender: TObject);
begin
  btPesquisar.Enabled := False;
  btInserir.Enabled := False;
  btEditar.Enabled := False;
  btSalvar.Enabled := True;
  btCancelar.Enabled := True;

  pnCampos.Enabled := True;
  dbeTel_ddd.Enabled := True;
  dbeTel_numero.Enabled := True;
  dbeEnd_cep.Enabled := True;
  dbeEnd_logradouro.Enabled := True;
  dbeEnd_numero.Enabled := True;
  dbeEnd_bairro.Enabled := True;
  dbeEnd_cidade.Enabled := True;
  dbeEnd_estado.Enabled := True;
  dbeEnd_pais.Enabled := True;

  dmConn.fdqCliente.Edit;

end;

procedure TfrmCadastroCliente.btInserirClick(Sender: TObject);
begin
  btPesquisar.Enabled := False;
  btInserir.Enabled := False;
  btEditar.Enabled := False;
  btSalvar.Enabled := True;
  btCancelar.Enabled := True;

  pnCampos.Enabled := True;
  pcDadosCliente.ActivePage := tsTelefone;

  dbeTel_ddd.Enabled := False;
  dbeTel_numero.Enabled := False;
  dbeEnd_cep.Enabled := False;
  dbeEnd_logradouro.Enabled := False;
  dbeEnd_numero.Enabled := False;
  dbeEnd_bairro.Enabled := False;
  dbeEnd_cidade.Enabled := False;
  dbeEnd_estado.Enabled := False;
  dbeEnd_pais.Enabled := False;

  dmConn.fdqCliente.Open('SELECT * FROM clientes LIMIT 1');
  dmConn.fdqTelefone.Open('SELECT * FROM telefone LIMIT 1');
  dmConn.fdqEndereco.Open('SELECT * FROM endereco LIMIT 1');

  dmConn.fdqCliente.Insert;

  dbeCli_nome.SetFocus;
end;

procedure TfrmCadastroCliente.btPesquisarClick(Sender: TObject);
begin

  //dmConn.fdqCliente.Open('SELECT * FROM clientes WHERE cli_ativo = ''S''');

  if Assigned(frmConsultaCliente) then
  begin
    frmConsultaCliente.ShowModal;
  end else
  begin
     Application.CreateForm(TfrmConsultaCliente, frmConsultaCliente);
     frmConsultaCliente.ShowModal;
  end;

end;

procedure TfrmCadastroCliente.btConsultarCEPClick(Sender: TObject);
var
  JsonObject: TJSONObject;
begin
  RESTClient1.BaseURL := 'https://viacep.com.br/ws/'+dbeEnd_cep.Text+'/json';
  RESTRequest1.Execute;

  JsonObject := TJSONObject.ParseJSONValue( RESTResponse1.Content ) as TJSONObject;

  dmConn.fdqEndereco.Edit;

  dbeEnd_logradouro.Text := JsonObject.GetValue('logradouro').Value;
  dbeEnd_bairro.Text     := JsonObject.GetValue('bairro').Value;
  dbeEnd_cidade.Text     := JsonObject.GetValue('localidade').Value;
  dbeEnd_estado.Text     := JsonObject.GetValue('uf').Value;

  dbeEnd_numero.SetFocus;

end;

procedure TfrmCadastroCliente.btSairClick(Sender: TObject);
begin
  close;
end;

procedure TfrmCadastroCliente.btSalvarClick(Sender: TObject);
var
  t : boolean;
begin

  if dbeCli_id.Text = '-1' then
  begin
    dmConn.fdqAuxiliar.Open('SELECT * FROM clientes WHERE cli_cpf = '''+dbeCli_cpf.Text+'''');
    if not dmConn.fdqAuxiliar.IsEmpty then
    begin
      MessageDlg('Já existe cliente cadastrado com esse CPF/CNPJ',mtError,[mbOK],0);
      Abort;
    end;
  end
  else
  begin
    dmConn.fdqAuxiliar.Open('SELECT * FROM clientes WHERE cli_id <> '''+dbeCli_id.Text
                            +''' AND cli_cpf = '''+dbeCli_cpf.Text+'''');
    if not dmConn.fdqAuxiliar.IsEmpty then
    begin
      MessageDlg('Já existe cliente cadastrado com esse CPF/CNPJ',mtError,[mbOK],0);
      Abort;
    end;
  end;


  if unFuncoes.ValidarCampos(dbeCli_nome.Text, dbeCli_ativo.Text, dbeCli_tipo.Text, dbeCli_cpf.Text) then
  begin


    if dmConn.fdqCliente.State in [dsInsert, dsEdit] then
      dmConn.fdqCliente.Post;

    //if dmConn.fdqTelefone.State in [dsInsert, dsEdit] then
    //  dmConn.fdqTelefone.Post;

    //if dmConn.fdqEndereco.State in [dsInsert, dsEdit] then
    //  dmConn.fdqEndereco.Post;

    btPesquisar.Enabled := True;
    btInserir.Enabled := True;
    btEditar.Enabled := True;
    btSalvar.Enabled := False;
    btCancelar.Enabled := True;

    pnCampos.Enabled := False;

  end
  else
    MessageDlg('Preenha todos os campo obrigatório',mtInformation,[mbOK],0);

end;

procedure TfrmCadastroCliente.dbnTelefoneClick(Sender: TObject;
  Button: TNavigateBtn);
begin

  if dbeCli_id.Text = '-1' then
  begin

    btSalvar.OnClick(Sender);

    if unFuncoes.ValidarCampos(dbeCli_nome.Text, dbeCli_ativo.Text, dbeCli_tipo.Text, dbeCli_cpf.Text) then
    begin

      btEditar.OnClick(Sender);

      dmConn.fdqTelefone.Edit;

      dbeTel_ddd.SetFocus;

    end;

  end
  else
    dbeTel_ddd.SetFocus;

end;

procedure TfrmCadastroCliente.dbeCli_cpfExit(Sender: TObject);
begin

  if dbeCli_cpf.Text <> '' then
  begin

    if dbeCli_tipo.Text = '' then
    begin
      MessageDlg('Tipo inválido!',mtError,[mbOK],0);
      dbeCli_tipo.SetFocus;
    end;

    if dbeCli_tipo.Text = 'F' then
    begin
      if unFuncoes.ValidarCPF(dbeCli_cpf.Text) = False then
      begin
        MessageDlg('CPF inválido',mtError,[mbOK],0);
      end;
    end
    else if dbeCli_tipo.Text = 'J' then
    begin
      if unFuncoes.ValidarCNPJ(dbeCli_cpf.Text) = False then
      begin
        MessageDlg('CNPJ inválido',mtError,[mbOK],0);
      end;
    end;
  end;
end;

procedure TfrmCadastroCliente.dbeCli_tipoExit(Sender: TObject);
begin
  if dbeCli_tipo.Text = 'F' then
    dbeCli_cpf.Field.EditMask:= '000.000.000-00;1;_'
  else if dbeCli_tipo.Text = 'J' then
    dbeCli_cpf.Field.EditMask:= '00.000.000/0000-00;1;_'
  else
  begin
    MessageDlg('Tipo inválido!',mtError,[mbOK],0);
    Abort;
  end;
end;

procedure TfrmCadastroCliente.dbnEnderecoClick(Sender: TObject;
  Button: TNavigateBtn);
begin
  if dbeCli_id.Text = '-1' then
  begin

    btSalvar.OnClick(Sender);

    if unFuncoes.ValidarCampos(dbeCli_nome.Text, dbeCli_ativo.Text, dbeCli_tipo.Text, dbeCli_cpf.Text) then
    begin

      btEditar.OnClick(Sender);

      dmConn.fdqEndereco.Edit;

      dbeEnd_cep.SetFocus;

    end;

  end
  else
    dbeEnd_cep.SetFocus;
end;

procedure TfrmCadastroCliente.FormShow(Sender: TObject);
begin
  dmConn.fdqCliente.Close;
  dmConn.fdqTelefone.Close;
  dmConn.fdqEndereco.Close;
end;

end.
