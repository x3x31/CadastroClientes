program CadastroCliente;

uses
  Vcl.Forms,
  untCadastroCliente in 'untCadastroCliente.pas' {frmCadastroCliente},
  dmConexao in 'dmConexao.pas' {dmConn: TDataModule},
  untConsultaCliente in 'untConsultaCliente.pas' {frmConsultaCliente},
  untFuncoes in 'untFuncoes.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmConn, dmConn);
  Application.CreateForm(TfrmCadastroCliente, frmCadastroCliente);
  Application.Run;
end.
