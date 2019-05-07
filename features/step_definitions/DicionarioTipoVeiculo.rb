Quando("acessar o Dicionario Tipo de Veículo") do
    @AcessarSipai = AcessarSipai.new
    @AcessarSipai.menuTipoVeiculoVistoria
  end
  
  Então("Sistema deve exibir interface do dicionario Tipo de Veículo") do
    assert_text('Dicionário Tipo Veículo')
  end
  
  Então("Sistema deve exibir tela de inclusao para Tipo de Veículo") do
    tirar_foto('Tela_inclusao_tipo_veiculo', 'passou')
  end
  
  Então("os botões {string} {string} {string} {string}") do |btn1, btn2, btn3, btn4|
        has_button?(btn1)
        has_button?(btn2)
        has_button?(btn3)
        has_button?(btn4)
  end
  
  Quando("Clicar em Adicionar no dicionario tipo de veiculo") do
    steps %q{
        Dado que tenha acessado o SIGAM
        E logado com usuario 'gtiAdm' senha 'a'
        Quando clicar entrar no modulo do SIPAI
        E clicar no menu dicionario
        E acessar o Dicionario Tipo de Veículo
    }
    @dicPadraoIni = DicionarioPadrao.new
    @dicPadraoIni.btnNovo.click
  end
  
  Quando("Preecher os campos de um novo tipo de veiculo titulo {string} ordem {string} Ativo {string} descricao {string}") do |tit,ord,ativ,descri|
    steps %q{
        Quando Clicar em Adicionar no dicionario tipo de veiculo
    }
    @dicPadraoEdt = EdicaoDicionarioPadrao.new
    @dicPadraoEdt.preencherDados(tit,ord,ativ,descri)
  end
  
  Quando("incluir um novo item no dicionario de Tipo de Veículo") do
    steps %q{
        Quando Preecher os campos de um novo tipo de veiculo titulo 'Caminhonetes' ordem '1' Ativo 'sim' descricao 'Veiculo caminhonete' 

    }
    
  end
  
  Então("Sistema deve atualizar o Grid com as colunas Editar {string} {string} {string}") do |cl2, cl3, cl4|
    tirar_foto('Grid_Dicionario_tipo_Veiculo', 'passou')
  end
  
  Quando("pesquisar um tipo de veiculo pela descricao {string}") do |valor|
    steps %q{
        Dado que tenha acessado o SIGAM
        E logado com usuario 'gtiAdm' senha 'a'
        Quando clicar entrar no modulo do SIPAI
        E clicar no menu dicionario
        E acessar o Dicionario Tipo de Veículo
    }
    @dicPadraoIni = DicionarioPadrao.new
    @dicPadraoIni.pesquisar('Descrição','Contém',valor)
    @dicPadraoIni.adicionarPesquisaBtn
    @dicPadraoIni.pesquisarBtn
  end
  
  Quando("pesquisar um tipo de veiculo pelo titulo {string}") do |valor|
    steps %q{
        Dado que tenha acessado o SIGAM
        E logado com usuario 'gtiAdm' senha 'a'
        Quando clicar entrar no modulo do SIPAI
        E clicar no menu dicionario
        E acessar o Dicionario Tipo de Veículo
    }
    @dicPadraoIni = DicionarioPadrao.new
    @dicPadraoIni.pesquisar('Título','Contém',valor)
    @dicPadraoIni.adicionarPesquisaBtn
    @dicPadraoIni.pesquisarBtn
  end
  
  Quando("pesquisar um tipo de veiculo por itens {string} com parametro {string}") do |filtro, argumento|
    steps %q{
        Dado que tenha acessado o SIGAM
        E logado com usuario 'gtiAdm' senha 'a'
        Quando clicar entrar no modulo do SIPAI
        E clicar no menu dicionario
        E acessar o Dicionario Tipo de Veículo
    }
    @dicPadraoIni = DicionarioPadrao.new
    @dicPadraoIni.pesquisarFlag(filtro,argumento)
    @dicPadraoIni.adicionarPesquisaBtn
    @dicPadraoIni.pesquisarBtn
  end

  Quando("pesquisar um tipo de veiculo pela flag {string} com parametro {string}") do |filtro, argumento|
    steps %q{
        Dado que tenha acessado o SIGAM
        E logado com usuario 'gtiAdm' senha 'a'
        Quando clicar entrar no modulo do SIPAI
        E clicar no menu dicionario
        E acessar o Dicionario Tipo de Veículo
    }
    @dicPadraoIni = DicionarioPadrao.new
    @dicPadraoIni.pesquisarFlag(filtro,argumento)
    @dicPadraoIni.adicionarPesquisaBtn
    @dicPadraoIni.pesquisarBtn
  end
  
  Quando("pesquisar um tipo de veiculo o item de titulo {string}") do |valor|
    steps %q{
      Dado que tenha acessado o SIGAM
      E logado com usuario 'gtiAdm' senha 'a'
      Quando clicar entrar no modulo do SIPAI
      E clicar no menu dicionario
      E acessar o Dicionario Tipo de Veículo
  }
     @dicPadraoIni = DicionarioPadrao.new
     @dicPadraoIni.pesquisar('Título','Contém',valor)
     @dicPadraoIni.adicionarPesquisaBtn
     @dicPadraoIni.pesquisarBtn
    

  end
  Quando("clicar em editar no grid Tipo de Veiculo") do
    @dicPadraoIni = DicionarioPadrao.new
    @dicPadraoIni.editarMetodoPesca(1)
  end
  Quando("alterar a flag Ativo para Inativo de um tipo de veiculo") do
    steps %q{
      Quando pesquisar um tipo de veiculo o item de titulo 'caminhonete'
      E clicar em editar no grid Tipo de Veiculo
    }
    page.uncheck('ctl00_conteudo_ctl00_flaAtivo')
   
  end
  
  Então("sistema deve alterar os items e atualizar o Grid") do
    @dicPadraoIni = DicionarioPadrao.new
    @dicPadraoIni.pesquisarFlag('Ativo/Inativo', 'É falso')
    @dicPadraoIni.adicionarPesquisaBtn
    @dicPadraoIni.pesquisarBtn
  end
  
  Quando("clicar em excluir um um tipo de veiculo") do
    steps %q{
      Quando pesquisar um tipo de veiculo o item de titulo 'caminhonete'
      E clicar em editar no grid Tipo de Veiculo
    }
    @dicPadraoEdt = EdicaoDicionarioPadrao.new
    @dicPadraoEdt.btnExcluir.click
  end
  Quando("logar com usuario {string} senha {string} dento do modulo do sipai") do |usuario, senha|
    visit 'http://homologacao-sigam.eastus2.cloudapp.azure.com/sigam-sipai-test/Default.aspx?idPagina=15303'
   
    @LoginSigam = LoginSigam.new
   find('#ctl00_cmdLogin').click 
    @LoginSigam.loginDados(usuario,senha)
  end
  Quando("acessar SIPAI") do
    @AcessarSipai = AcessarSipai.new
    @AcessarSipai.moduloSipai
  end
  
  Quando("clicar em dicionario") do
    @AcessarSipai = AcessarSipai.new
    @AcessarSipai.abrirMenuDicionario
  end
  
  Quando("clicar em Dicionario Tipo de Veículo") do
    @AcessarSipai = AcessarSipai.new
    @AcessarSipai.menuTipoVeiculoVistoria
  end

  Quando("clicar em editar no grid metodo de pesca") do
    @dicPadraoIni = DicionarioPadrao.new
    @dicPadraoIni.editarMetodoPesca(1)
  end