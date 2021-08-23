unit uFuncoesTest;

interface
uses
  DUnitX.TestFramework, untFuncoes;

type

  [TestFixture]
  TestDUX = class(TObject)
  private
    FuntFuncoes : TuntFuncoes;
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;

    [Test]
    [TestCaseAttribute('Verificar se todos os campos foram preenchidos','445.257.320-75,F,A,Michel Willian Alves,true')]
    procedure ValidarCampos(nome, ativo, tipo, cpf : string; resultado : boolean);

    [Test]
    [TestCaseAttribute('Verificar se todos os campos foram preenchidos',',F,A,Michel Willian Alves,false')]
    [TestCaseAttribute('Verificar se todos os campos foram preenchidos','445.257.320-75,,A,Michel Willian Alves,false')]
    [TestCaseAttribute('Verificar se todos os campos foram preenchidos','445.257.320-75,F,,Michel Willian Alves,false')]
    [TestCaseAttribute('Verificar se todos os campos foram preenchidos','445.257.320-75,F,A,,false')]
    [TestCaseAttribute('Verificar se todos os campos foram preenchidos',',,,,false')]
    procedure ValidarCamposVazios(nome, ativo, tipo, cpf : string; resultado : boolean);

    [Test]
    [TestCaseAttribute('Verificar CPF Válido','389.979.670-53,true')]
    [TestCaseAttribute('Verificar CPF Válido','912.023.940-86,true')]
    [TestCaseAttribute('Verificar CPF Válido','176.977.710-55,true')]
    procedure ValidarCPFValido(cpf : string; resultado : boolean);

    [Test]
    [TestCaseAttribute('Verificar CPF inválido','389.973.670-53,false')]
    [TestCaseAttribute('Verificar CPF inválido','389.972.670-53,false')]
    [TestCaseAttribute('Verificar CPF inválido','389.971.670-53,false')]
    procedure ValidarCPFInvalido(cpf : string; resultado : boolean);

    [Test]
    [TestCaseAttribute('Verificar CNPJ Válido','90.679.264/0001-06,true')]
    [TestCaseAttribute('Verificar CNPJ Válido','70.665.729/0001-62,true')]
    [TestCaseAttribute('Verificar CNPJ Válido','54.242.907/0001-96,true')]
    procedure ValidarCNPJValido(cnpj : string; resultado : boolean);

    [Test]
    [TestCaseAttribute('Verificar CNPJ Válido','90.679.224/0001-06,false')]
    [TestCaseAttribute('Verificar CNPJ Válido','70.665.719/0001-62,false')]
    [TestCaseAttribute('Verificar CNPJ Válido','54.242.967/0001-96,false')]
    procedure ValidarCNPJInvalido(cnpj : string; resultado : boolean);


  end;

implementation

procedure TestDUX.Setup;
begin
end;

procedure TestDUX.TearDown;
begin
end;


procedure TestDUX.ValidarCampos(nome, ativo, tipo, cpf: string; resultado : boolean);
var
  FResultadoAux : Boolean;
begin
  FResultadoAux := FuntFuncoes.ValidarCampos(nome, ativo, tipo, cpf);
  Assert.AreEqual(resultado, FResultadoAux, 'Deveria ter retornado True');
end;

procedure TestDUX.ValidarCamposVazios(nome, ativo, tipo, cpf: string;
  resultado: boolean);
var
  FResultadoAux : Boolean;
begin
  FResultadoAux := FuntFuncoes.ValidarCampos(nome, ativo, tipo, cpf);
  Assert.AreEqual(resultado, FResultadoAux, 'Deveria ter retornado False');
end;

procedure TestDUX.ValidarCNPJInvalido(cnpj: string; resultado: boolean);
var
  FResultadoAux : Boolean;
begin
  FResultadoAux := FuntFuncoes.ValidarCNPJ(cnpj);
  Assert.AreEqual(resultado, FResultadoAux, 'Deveria ter retornado False');
end;

procedure TestDUX.ValidarCNPJValido(cnpj: string; resultado: boolean);
var
  FResultadoAux : Boolean;
begin
  FResultadoAux := FuntFuncoes.ValidarCNPJ(cnpj);
  Assert.AreEqual(resultado, FResultadoAux, 'Deveria ter retornado True');
end;

procedure TestDUX.ValidarCPFInvalido(cpf: string; resultado: boolean);
var
  FResultadoAux : Boolean;
begin
  FResultadoAux := FuntFuncoes.ValidarCPF(cpf);
  Assert.AreEqual(resultado, FResultadoAux, 'Deveria ter retornado False');
end;

procedure TestDUX.ValidarCPFValido(cpf: string; resultado: boolean);
var
  FResultadoAux : Boolean;
begin
  FResultadoAux := FuntFuncoes.ValidarCPF(cpf);
  Assert.AreEqual(resultado, FResultadoAux, 'Deveria ter retornado True');
end;

initialization
  TDUnitX.RegisterTestFixture(TestDUX);
end.
