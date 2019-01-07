Quando("acessar o Dicionario Origem e Acao") do
    @AcessarSipai = AcessarSipai.new
    @AcessarSipai.vistoriaAmbientalMenu.hover
    @AcessarSipai.tipoOrigemAcaoVistoria.click
  end
  
  Então("Sistema deve exibir interface do dicionario Origem e Acao") do
    expect(page).to have_current_path('http://homologacao-sigam.eastus2.cloudapp.azure.com/sigam-sipai-test/Default.aspx?idPagina=15611', url: true)
  end
  
  Quando("Clicar em Adicionar no dicionario Origem e Acao") do
    steps %q{
        Dado que tenha acessado o SIGAM
        E logado com usuario 'gtiAdm' senha 'a'
        Quando clicar entrar no modulo do SIPAI
        E clicar no menu dicionario
        E acessar o Dicionario Origem e Acao
    }
    @dicPadraoIni = DicionarioPadrao.new
    @dicPadraoIni.btnNovo.click
  end
  
  Então("Sistema deve exibir tela de inclusao para Origem e Acao") do
    tirar_foto('Tela_inclusao_origem_acao', 'passou')
  end
  
  Quando("Preecher os campos de um novo Origem e Acao titulo {string} ordem {string} Ativo {string} descricao {string}") do |tit,ord,ativ,descri|
    steps %q{
        Quando Clicar em Adicionar no dicionario Origem e Acao
    }
    @dicPadraoEdt = EdicaoDicionarioPadrao.new
    @dicPadraoEdt.preencherDados(tit,ord,ativ,descri)
  end
  
  Quando("incluir um novo item no dicionario de Origem e Acao") do
    steps %q{
        Quando Preecher os campos de um novo Origem e Acao titulo 'Denuncia automatizada' ordem '1' Ativo 'sim' descricao 'automação'
    }
  end
  
  Quando("pesquisar um Origem e Acao pela descricao {string}") do |valor|
    steps %q{
        Dado que tenha acessado o SIGAM
        E logado com usuario 'gtiAdm' senha 'a'
        Quando clicar entrar no modulo do SIPAI
        E clicar no menu dicionario
        E acessar o Dicionario Origem e Acao
    }
    @dicPadraoIni = DicionarioPadrao.new
    @dicPadraoIni.pesquisar('Descrição','Contém',valor)
    @dicPadraoIni.adicionarPesquisaBtn
    @dicPadraoIni.pesquisarBtn
  end
  
  Quando("pesquisar um Origem e Acaoo pelo titulo {string}") do |valor|
    steps %q{
        Dado que tenha acessado o SIGAM
        E logado com usuario 'gtiAdm' senha 'a'
        Quando clicar entrar no modulo do SIPAI
        E clicar no menu dicionario
        E acessar o Dicionario Origem e Acao
    }
    @dicPadraoIni = DicionarioPadrao.new
    @dicPadraoIni.pesquisar('Descrição','Contém',valor)
    @dicPadraoIni.adicionarPesquisaBtn
    @dicPadraoIni.pesquisarBtn
  end
  
  Quando("pesquisar um Origem e Acao por itens {string} com parametro {string}") do |filtro,argumento|
    steps %q{
        Dado que tenha acessado o SIGAM
        E logado com usuario 'gtiAdm' senha 'a'
        Quando clicar entrar no modulo do SIPAI
        E clicar no menu dicionario
        E acessar o Dicionario Origem e Acao
    }
    @dicPadraoIni = DicionarioPadrao.new
    @dicPadraoIni.pesquisarFlag(filtro,argumento)
    @dicPadraoIni.adicionarPesquisaBtn
    @dicPadraoIni.pesquisarBtn
  end
  
  Quando("pesquisar um Origem e Acao pela flag {string} com parametro {string}") do |filtro,argumento|
    steps %q{
        Dado que tenha acessado o SIGAM
        E logado com usuario 'gtiAdm' senha 'a'
        Quando clicar entrar no modulo do SIPAI
        E clicar no menu dicionario
        E acessar o Dicionario Origem e Acao
    }
    @dicPadraoIni = DicionarioPadrao.new
    @dicPadraoIni.pesquisarFlag(filtro,argumento)
    @dicPadraoIni.adicionarPesquisaBtn
    @dicPadraoIni.pesquisarBtn
  end
  
  Quando("pesquisar um Origem e Acao o item de titulo {string}") do |valor|
    steps %q{
        Dado que tenha acessado o SIGAM
        E logado com usuario 'gtiAdm' senha 'a'
        Quando clicar entrar no modulo do SIPAI
        E clicar no menu dicionario
        E acessar o Dicionario Origem e Acao
    }
    @dicPadraoIni = DicionarioPadrao.new
    @dicPadraoIni.pesquisar('Descrição','Contém',valor)
    @dicPadraoIni.adicionarPesquisaBtn
    @dicPadraoIni.pesquisarBtn
  end
  
  Quando("clicar em editar no grid Origem e Acao") do
    @dicPadraoIni = DicionarioPadrao.new
    @dicPadraoIni.editarMetodoPesca(0)
  end

  Quando("alterar a flag Ativo para Inativo de um Origem e Acao") do
    steps %q{
        Quando pesquisar um Origem e Acao o item de titulo 'Automa'
        E clicar em editar no grid Origem e Acao
    }
    page.uncheck('ctl00_conteudo_ctl00_flaAtivo')
  end
  
  Quando("clicar em excluir um Origem e Acao") do
    steps %q{
        Quando pesquisar um Origem e Acao o item de titulo 'Automa'
        E clicar em editar no grid Origem e Acao
    }
    @dicPadraoEdt = EdicaoDicionarioPadrao.new
    @dicPadraoEdt.btnExcluir.click
  end
  
  Quando("editar no grid Origem e Acao") do
    steps %q{
        E clicar em editar no grid Tipo de Anexo
    }   
  end