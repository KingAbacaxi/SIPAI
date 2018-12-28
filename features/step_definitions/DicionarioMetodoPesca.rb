Dado("que tenha acessado o SIGAM") do
    @AcessarSigam = AcessarSigam.new
    @AcessarSigam.load
  end
  
  Dado("logado com usuario {string} senha {string}") do |usuario, senha|
    @LoginSigam = LoginSigam.new
    @LoginSigam.clicarLogin 
    @LoginSigam.loginDados(usuario,senha)
  end
  
  Quando("clicar entrar no modulo do SIPAI") do
    @AcessarSipai = AcessarSipai.new
    @AcessarSipai.moduloSipai
  end
  
  Quando("clicar no menu dicionario") do
    @AcessarSipai.abrirMenuDicionario
  end
  
  Quando("acessar o Dicionario Método de Pesca") do
    @AcessarSipai.menuMetodoPesca
  end
  
  Então("Sistema deve exibir interface do dicionario Método de Pesca") do
    @DicMetPesca = DicMetPesca.new
    @DicMetPesca.verificarTelaMenu
    
  end
  
  Então("o botao de Adicionar") do
    @DicMetPesca = DicMetPesca.new
    @DicMetPesca.verificarBotaoAdd
  end
  
  Então("o componente de Pesquisa") do
    @DicMetPesca = DicMetPesca.new
    @DicMetPesca.verificarBotaoPesquisar
  end
  
  Então("o exportador para Excel") do
    @DicMetPesca = DicMetPesca.new
    @DicMetPesca.verificarBotaoExcel
  end
  
  Então("as condicoes de pesquisa {string} {string} {string}") do |cond1, cond2, cond3|
    @DicMetPesca = DicMetPesca.new
    @DicMetPesca.verificarCondicoesPesquisa(cond1,cond2,cond3)
    
    
    
  end
  
  Quando("Clicar em Adicionar") do
    steps %q{
      Dado que tenha acessado o SIGAM
      E logado com usuario 'gtiAdm' senha 'a'
      Quando clicar entrar no modulo do SIPAI
      E clicar no menu dicionario
      E acessar o Dicionario Método de Pesca
    }
    @DicMetPesca = DicMetPesca.new
    @DicMetPesca.adicionar

  end
  
  Então("Sistema deve exibir tela de inclusao para Método de Pesca") do

    @TelaMetodoPesca =TelaMetodoPesca.new
    nomeTela = @TelaMetodoPesca.verificarTela 
    puts (nomeTela)
  end
  
  Então("os campos {string} {string} {string} {string}") do |campo1, campo2, campo3, campo4|
    @TelaMetodoPesca =TelaMetodoPesca.new
    @TelaMetodoPesca.verificarCampos(campo1, campo2, campo3, campo4)
  end
  
  Então("os botões {string} {string} {string}") do |btn1, btn2, btn3|
    @TelaMetodoPesca =TelaMetodoPesca.new
    @TelaMetodoPesca.verificarBotoes(btn1, btn2, btn3)
  end
  
  Então("não deve exibir o botão de {string}") do |btn|
    @TelaMetodoPesca =TelaMetodoPesca.new
   msg= @TelaMetodoPesca.verificarBtn('1', btn)
   puts msg
   
  end
  
  Quando("Preecher os campos titulo {string} ordem {string} Ativo {string} descricao {string}") do |titulo, ordem, ativo, descricao|
   steps %q{
    Quando Clicar em Adicionar
   }
   @TelaMetodoPesca =TelaMetodoPesca.new
   @TelaMetodoPesca.preencherDados(titulo, ordem, ativo, descricao)
   
  end
  
  Quando("clicar em Atualizar") do
    @TelaMetodoPesca =TelaMetodoPesca.new
    @TelaMetodoPesca.clicarAtualizar
  end
  
  Então("sistema deve exibir a mensagem de {string}") do |msg|
    @TelaMetodoPesca =TelaMetodoPesca.new
    @TelaMetodoPesca.verificarMsg(msg)
    
  end
  
  Quando("incluir um novo item no dicionario de Método de Pesca") do
    steps %q{
      Quando Preecher os campos titulo 'Recreativo' ordem '1' Ativo 'sim' descricao 'Pesca de forma recreativa'
     }
  end
  
  Quando("clicar em Finalizar") do
    @TelaMetodoPesca =TelaMetodoPesca.new
    @TelaMetodoPesca.finalizarCadastro
  end
  
  Então("Sistema deve atualizar o Grid com as colunas") do 
    puts('Grid Atualizado')
   
  end
  
  Então("exibir altura da lista do grid com default de {string}") do |valorDefault|
    @DicMetPesca = DicMetPesca.new
    @DicMetPesca.verificarValorMaximoGrid(valorDefault)

    
  end
  
  Quando("pesquisar pela descricao {string}") do |parametroPesquisa|
    steps %q{
      Dado que tenha acessado o SIGAM
      E logado com usuario 'gtiAdm' senha 'a'
      Quando clicar entrar no modulo do SIPAI
      E clicar no menu dicionario
      E acessar o Dicionario Método de Pesca
    }
    @dicMetPesca = DicMetPesca.new
    @dicMetPesca.pesquisar('Descrição','Contém',parametroPesquisa)
    @dicMetPesca.adicionarPesquisaBtn
    @dicMetPesca.pesquisarBtn

    
  end
  
  Então("sistema deve exibir no Grid somente os itens que tenham {string} na descricao") do |valor|
    
    quantidadeItens = all('#ctl00_conteudo_ctl00_gvConsulta tr').count
    quantidadeItens = quantidadeItens -2
    puts (quantidadeItens)
    
  end
  
  Quando("pesquisar pelo titulo {string}") do |parametroPesquisa|
    steps %q{
      Dado que tenha acessado o SIGAM
      E logado com usuario 'gtiAdm' senha 'a'
      Quando clicar entrar no modulo do SIPAI
      E clicar no menu dicionario
      E acessar o Dicionario Método de Pesca
    }
    @dicMetPesca = DicMetPesca.new
    @dicMetPesca.pesquisar('Título','Contém',parametroPesquisa)
    @dicMetPesca.adicionarPesquisaBtn
    @dicMetPesca.pesquisarBtn
  end
  
  Então("sistema deve exibir no Grid somente os itens que tenham {string} no titulo") do |valor|
    quantidadeItens = all('#ctl00_conteudo_ctl00_gvConsulta tr').count
    quantidadeItens = quantidadeItens -2
    puts (quantidadeItens)
  end
  
  Quando("pesquisar por itens {string} com parametro {string}") do |filtro, parametro|
    steps %q{
      Dado que tenha acessado o SIGAM
      E logado com usuario 'gtiAdm' senha 'a'
      Quando clicar entrar no modulo do SIPAI
      E clicar no menu dicionario
      E acessar o Dicionario Método de Pesca
    }
    @dicMetPesca = DicMetPesca.new
    @dicMetPesca.pesquisarFlag(filtro,parametro)
    @dicMetPesca.adicionarPesquisaBtn
    @dicMetPesca.pesquisarBtn
  end
  
  Então("sistema deve exibir no Grid somente os itens com a flag Ativo selecionada") do
    quantidadeItens = all('#ctl00_conteudo_ctl00_gvConsulta tr').count
    quantidadeItens = quantidadeItens -2
    puts (quantidadeItens)
  end

  Quando("pesquisar itens {string} com operador-parametro  {string}") do |ft, operador|
    steps %q{
      Dado que tenha acessado o SIGAM
      E logado com usuario 'gtiAdm' senha 'a'
      Quando clicar entrar no modulo do SIPAI
      E clicar no menu dicionario
      E acessar o Dicionario Método de Pesca
    }

    @dicMetPesca = DicMetPesca.new
    @dicMetPesca.pesquisarFlag(ft, operador)
    @dicMetPesca.adicionarPesquisaBtn
    @dicMetPesca.pesquisarBtn
  end
  
  Então("sistema deve exibir no Grid somente os itens com a flag É falso nao selecionada") do
    quantidadeItens = all('#ctl00_conteudo_ctl00_gvConsulta tr').count

    quantidadeItens = quantidadeItens -2

    puts (quantidadeItens)
  end
  
  Quando("clicar em editar no grid") do
    steps %q{
      Dado que tenha acessado o SIGAM
      E logado com usuario 'gtiAdm' senha 'a'
      Quando clicar entrar no modulo do SIPAI
      E clicar no menu dicionario
      E acessar o Dicionario Método de Pesca
      }
      @dicMetPesca = DicMetPesca.new
      @dicMetPesca.editarMetodoPesca(1)
  end
  
  Então("sistema deve exibir tela de edicao com os campos preenchidos") do
    assert_text('Ordem')
  end
  
  Então("exibir o botao {string}") do |btn|
    assert_text(btn)
  end
  
  Quando("alterar a flag Ativo para Inativo") do
    steps %q{
      
      Quando clicar em editar no grid 

      }
      page.uncheck('ctl00_conteudo_ctl00_flaAtivo')
  end
  
  Quando("clicar em finalizar") do
    @TelaMetodoPesca = TelaMetodoPesca.new
    @TelaMetodoPesca.finalizarCadastro
  end
  
  Então("sistema deve alterar os itens e atualizar o Grid") do
    @dicMetPesca = DicMetPesca.new
    @dicMetPesca.pesquisarFlag('Ativo/Inativo', 'É falso')
    @dicMetPesca.adicionarPesquisaBtn
    @dicMetPesca.pesquisarBtn
  end
  
  Quando("clicar em excluir") do
    steps %q{
      
      Quando clicar em editar no grid 

      }
      tirar_foto('Metodo_pesca_excluido', 'passou')
      @TelaMetodoPesca = TelaMetodoPesca.new
      @TelaMetodoPesca.btnExcluir.click
  end
  
  Então("sistema deve excluir o item e atualizar o grid") do
    page.accept_alert
    sleep 2
  end
  
  Quando("logar com usuario {string} senha {string}") do |usuario, senha|
    visit 'http://homologacao-sigam.eastus2.cloudapp.azure.com/sigam-sipai-test/Default.aspx?idPagina=15608'
   
    @LoginSigam = LoginSigam.new
   find('#ctl00_cmdLogin').click 
    @LoginSigam.loginDados(usuario,senha)
    
    end
  
  Quando("clicar em editar no grid do Dicionario Método de Pesca no sipai") do
    
      @dicMetPesca = DicMetPesca.new
      @dicMetPesca.editarMetodoPesca(1)
  end
  
  Então("sistema nao deve exibir opcao de {string}") do |btn|
    assert_no_text(btn)
  end