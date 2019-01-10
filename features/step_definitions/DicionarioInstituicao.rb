Quando("acessar o Dicionario Instituição") do
    @AcessarSipai = AcessarSipai.new
    @AcessarSipai.vistoriaAmbientalMenu.hover
    @AcessarSipai.tipoInstituicao.click
  end
  
  Então("Sistema deve exibir interface do dicionario Instituição") do
    expect(page).to have_current_path('http://homologacao-sigam.eastus2.cloudapp.azure.com/sigam-sipai-test/Default.aspx?idPagina=15623', url: true)
  end
  
  Quando("Clicar em Adicionar no dicionario Instituição") do
    steps %q{
        Dado que tenha acessado o SIGAM
        E logado com usuario 'gtiAdm' senha 'a'
        Quando clicar entrar no modulo do SIPAI
        E clicar no menu dicionario
        E acessar o Dicionario Instituição
    }
    @dicPadraoIni = DicionarioPadrao.new
    @dicPadraoIni.btnNovo.click
  end
  
  Então("Sistema deve exibir tela de inclusao para Instituição") do
    tirar_foto('Tela_inclusao_Instituicao', 'passou')
  end
  
  Quando("Preecher os campos de um novo Instituição titulo {string} ordem {string} Ativo {string} descricao {string}") do |tit,ord,ativ,descri|
    steps %q{
        Quando Clicar em Adicionar no dicionario Instituição
    }
    @dicPadraoEdt = EdicaoDicionarioPadrao.new
    @dicPadraoEdt.preencherDados(tit,ord,ativ,descri)
  end
  
  Quando("incluir um novo item no dicionario de Instituição") do
    steps %q{
        Quando Preecher os campos de um novo Instituição titulo 'Fundação Floresta' ordem '1' Ativo 'sim' descricao 'Fundação Floresta do estado de são paulo' 

    }
  end
  
  Quando("pesquisar um Instituição pela descricao {string}") do |valor|
    steps %q{
        Dado que tenha acessado o SIGAM
        E logado com usuario 'gtiAdm' senha 'a'
        Quando clicar entrar no modulo do SIPAI
        E clicar no menu dicionario
        E acessar o Dicionario Instituição
    }
    @dicPadraoIni = DicionarioPadrao.new
    @dicPadraoIni.pesquisar('Descrição','Contém',valor)
    @dicPadraoIni.adicionarPesquisaBtn
    @dicPadraoIni.pesquisarBtn
  end
  
  Quando("pesquisar um Instituição pelo titulo {string}") do |valor|
    steps %q{
        Dado que tenha acessado o SIGAM
        E logado com usuario 'gtiAdm' senha 'a'
        Quando clicar entrar no modulo do SIPAI
        E clicar no menu dicionario
        E acessar o Dicionario Instituição
    }
    @dicPadraoIni = DicionarioPadrao.new
    @dicPadraoIni.pesquisar('Título','Contém',valor)
    @dicPadraoIni.adicionarPesquisaBtn
    @dicPadraoIni.pesquisarBtn
  end
  
  Quando("pesquisar um Instituição por itens {string} com parametro {string}") do |filtro,argumento|
    steps %q{
        Dado que tenha acessado o SIGAM
        E logado com usuario 'gtiAdm' senha 'a'
        Quando clicar entrar no modulo do SIPAI
        E clicar no menu dicionario
        E acessar o Dicionario Instituição
    }
    @dicPadraoIni = DicionarioPadrao.new
    @dicPadraoIni.pesquisarFlag(filtro,argumento)
    @dicPadraoIni.adicionarPesquisaBtn
    @dicPadraoIni.pesquisarBtn
  end
  
  Quando("pesquisar um Instituição pela flag {string} com parametro {string}") do |filtro,argumento|
    steps %q{
        Dado que tenha acessado o SIGAM
        E logado com usuario 'gtiAdm' senha 'a'
        Quando clicar entrar no modulo do SIPAI
        E clicar no menu dicionario
        E acessar o Dicionario Instituição
    }
    @dicPadraoIni = DicionarioPadrao.new
    @dicPadraoIni.pesquisarFlag(filtro,argumento)
    @dicPadraoIni.adicionarPesquisaBtn
    @dicPadraoIni.pesquisarBtn
  end
  
  Quando("pesquisar um Instituição o item de titulo {string}") do |valor|
    steps %q{
        Dado que tenha acessado o SIGAM
        E logado com usuario 'gtiAdm' senha 'a'
        Quando clicar entrar no modulo do SIPAI
        E clicar no menu dicionario
        E acessar o Dicionario Instituição
    }
    @dicPadraoIni = DicionarioPadrao.new
    @dicPadraoIni.pesquisar('Título','Contém',valor)
    @dicPadraoIni.adicionarPesquisaBtn
    @dicPadraoIni.pesquisarBtn
  end
  
  Quando("clicar em editar no grid Instituição") do
    @dicPadraoIni = DicionarioPadrao.new
    @dicPadraoIni.editarMetodoPesca(0)
  end
  
  Quando("alterar a flag Ativo para Inativo de um Instituição") do
    steps %q{
        Quando pesquisar um Instituição o item de titulo 'Funda'
        E clicar em editar no grid Instituição
    }
    page.uncheck('ctl00_conteudo_ctl00_flaAtivo')
  end
  
  Quando("clicar em excluir um Instituição") do
    steps %q{
        Quando pesquisar um Instituição o item de titulo 'Funda'
        E clicar em editar no grid Instituição
    }
    @dicPadraoEdt = EdicaoDicionarioPadrao.new
    @dicPadraoEdt.btnExcluir.click
  end
  
  Quando("editar no grid Instituição") do
    steps %q{
        E clicar em editar no grid Instituição
    }   
  end