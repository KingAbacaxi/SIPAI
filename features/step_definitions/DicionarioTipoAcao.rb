Quando("acessar o Dicionario Tipo de Acao") do
    @AcessarSipai = AcessarSipai.new
    @AcessarSipai.vistoriaAmbientalMenu.hover
    @AcessarSipai.tipoTipoAcaoVistoria.click
  end
  
  Então("Sistema deve exibir interface do dicionario Tipo de Acao") do
    expect(page).to have_current_path('http://homologacao-sigam.eastus2.cloudapp.azure.com/sigam-sipai-test/Default.aspx?idPagina=15609', url: true)
  end
  
  Quando("Clicar em Adicionar no dicionario Tipo de Acao") do
    steps %q{
        Dado que tenha acessado o SIGAM
        E logado com usuario 'gtiAdm' senha 'a'
        Quando clicar entrar no modulo do SIPAI
        E clicar no menu dicionario
        E acessar o Dicionario Tipo de Acao
    }
    @dicPadraoIni = DicionarioPadrao.new
    @dicPadraoIni.btnNovo.click
  end
  
  Então("Sistema deve exibir tela de inclusao para Tipo de Acao") do
    tirar_foto('Tela_inclusao_Tipo_acao', 'passou')
  end
  
  Quando("Preecher os campos de um novo Tipo de Acao titulo {string} ordem {string} Ativo {string} descricao {string}") do |tit,ord,ativ,descri|
    steps %q{
        Quando Clicar em Adicionar no dicionario Tipo de Acao
    }
    @dicPadraoEdt = EdicaoDicionarioPadrao.new
    @dicPadraoEdt.preencherDados(tit,ord,ativ,descri)
  end
  
  Quando("incluir um novo item no dicionario de Tipo de Acao") do
    steps %q{
        Quando Preecher os campos de um novo Tipo de Acao titulo 'Vistoria noturna' ordem '1' Ativo 'sim' descricao 'automação' 

    }
        
  end
  
  Quando("pesquisar um Tipo de Acao pela descricao {string}") do |valor|
    steps %q{
        Dado que tenha acessado o SIGAM
        E logado com usuario 'gtiAdm' senha 'a'
        Quando clicar entrar no modulo do SIPAI
        E clicar no menu dicionario
        E acessar o Dicionario Tipo de Acao
    }
    @dicPadraoIni = DicionarioPadrao.new
    @dicPadraoIni.pesquisar('Descrição','Contém',valor)
    @dicPadraoIni.adicionarPesquisaBtn
    @dicPadraoIni.pesquisarBtn
  end
  
  Quando("pesquisar um Tipo de Acao pelo titulo {string}") do |valor|
    steps %q{
        Dado que tenha acessado o SIGAM
        E logado com usuario 'gtiAdm' senha 'a'
        Quando clicar entrar no modulo do SIPAI
        E clicar no menu dicionario
        E acessar o Dicionario Tipo de Acao
    }
    @dicPadraoIni = DicionarioPadrao.new
    @dicPadraoIni.pesquisar('Descrição','Contém',valor)
    @dicPadraoIni.adicionarPesquisaBtn
    @dicPadraoIni.pesquisarBtn
  end
  
  Quando("pesquisar um Tipo de Acao por itens {string} com parametro {string}") do |filtro,argumento|
    steps %q{
        Dado que tenha acessado o SIGAM
        E logado com usuario 'gtiAdm' senha 'a'
        Quando clicar entrar no modulo do SIPAI
        E clicar no menu dicionario
        E acessar o Dicionario Tipo de Acao
    }
    @dicPadraoIni = DicionarioPadrao.new
    @dicPadraoIni.pesquisarFlag(filtro,argumento)
    @dicPadraoIni.adicionarPesquisaBtn
    @dicPadraoIni.pesquisarBtn
  end
  
  Quando("pesquisar um Tipo de Acao pela flag {string} com parametro {string}") do |filtro,argumento|
    steps %q{
        Dado que tenha acessado o SIGAM
        E logado com usuario 'gtiAdm' senha 'a'
        Quando clicar entrar no modulo do SIPAI
        E clicar no menu dicionario
        E acessar o Dicionario Tipo de Acao
    }
    @dicPadraoIni = DicionarioPadrao.new
    @dicPadraoIni.pesquisarFlag(filtro,argumento)
    @dicPadraoIni.adicionarPesquisaBtn
    @dicPadraoIni.pesquisarBtn
  end
  
  Quando("pesquisar um Tipo de Acao o item de titulo {string}") do |valor|
    steps %q{
        Dado que tenha acessado o SIGAM
        E logado com usuario 'gtiAdm' senha 'a'
        Quando clicar entrar no modulo do SIPAI
        E clicar no menu dicionario
        E acessar o Dicionario Tipo de Acao
    }
    @dicPadraoIni = DicionarioPadrao.new
    @dicPadraoIni.pesquisar('Título','Contém',valor)
    @dicPadraoIni.adicionarPesquisaBtn
    @dicPadraoIni.pesquisarBtn
  end
  
  Quando("clicar em editar no grid Tipo de Acao") do
    @dicPadraoIni = DicionarioPadrao.new
    @dicPadraoIni.editarMetodoPesca(0)
  end
  
  Quando("alterar a flag Ativo para Inativo de um Tipo de Acao") do
    steps %q{
        Quando pesquisar um Tipo de Acao o item de titulo 'Visto'
        E clicar em editar no grid Tipo de Acao
    }
    page.uncheck('ctl00_conteudo_ctl00_flaAtivo')
  end
  
  Quando("clicar em excluir um Tipo de Acao") do
    steps %q{
        Quando pesquisar um Tipo de Acao o item de titulo 'Visto'
        E clicar em editar no grid Tipo de Acao
    }
    @dicPadraoEdt = EdicaoDicionarioPadrao.new
    @dicPadraoEdt.btnExcluir.click
  end
  
  Quando("editar no grid Tipo de Acao") do
    steps %q{
        E clicar em editar no grid Tipo de Acao
    }   
  end