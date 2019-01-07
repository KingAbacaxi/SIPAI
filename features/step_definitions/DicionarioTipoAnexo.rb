Quando("acessar o Dicionario Tipo de Anexo") do
    @AcessarSipai = AcessarSipai.new
    @AcessarSipai.vistoriaAmbientalMenu.hover
    @AcessarSipai.tipoAnexoVistoria.click
  end
  
  Então("Sistema deve exibir interface do dicionario Tipo de Anexo") do
    expect(page).to have_current_path('http://homologacao-sigam.eastus2.cloudapp.azure.com/sigam-sipai-test/Default.aspx?idPagina=15622', url: true)
  end
  
  Quando("Clicar em Adicionar no dicionario Tipo de Anexo") do
    steps %q{
        Dado que tenha acessado o SIGAM
        E logado com usuario 'gtiAdm' senha 'a'
        Quando clicar entrar no modulo do SIPAI
        E clicar no menu dicionario
        E acessar o Dicionario Tipo de Anexo
    }
    @dicPadraoIni = DicionarioPadrao.new
    @dicPadraoIni.btnNovo.click
  end
  
  Então("Sistema deve exibir tela de inclusao para Tipo de Anexo") do
    tirar_foto('Tela_inclusao_tipo_anexo', 'passou')
  end
  
  Quando("Preecher os campos de um novo Tipo de Anexo titulo {string} ordem {string} Ativo {string} descricao {string}") do |tit,ord,ativ,descri|
    steps %q{
        Quando Clicar em Adicionar no dicionario Tipo de Anexo
    }
    @dicPadraoEdt = EdicaoDicionarioPadrao.new
    @dicPadraoEdt.preencherDados(tit,ord,ativ,descri)
  end
  
  Quando("incluir um novo item no dicionario de Tipo de Anexo") do
    steps %q{
        Quando Preecher os campos de um novo Tipo de Anexo titulo 'Documentos institucionais' ordem '1' Ativo 'sim' descricao 'Documentos institucionais' 

        
    }
    
  end
  
  Quando("pesquisar um Tipo de Anexo pela descricao {string}") do |valor|
    steps %q{
        Dado que tenha acessado o SIGAM
        E logado com usuario 'gtiAdm' senha 'a'
        Quando clicar entrar no modulo do SIPAI
        E clicar no menu dicionario
        E acessar o Dicionario Tipo de Anexo
    }
    @dicPadraoIni = DicionarioPadrao.new
    @dicPadraoIni.pesquisar('Descrição','Contém',valor)
    @dicPadraoIni.adicionarPesquisaBtn
    @dicPadraoIni.pesquisarBtn
  end
  
  Quando("pesquisar um Tipo de Anexo pelo titulo {string}") do |valor|
    steps %q{
        Dado que tenha acessado o SIGAM
        E logado com usuario 'gtiAdm' senha 'a'
        Quando clicar entrar no modulo do SIPAI
        E clicar no menu dicionario
        E acessar o Dicionario Tipo de Anexo
    }
    @dicPadraoIni = DicionarioPadrao.new
    @dicPadraoIni.pesquisar('Descrição','Contém',valor)
    @dicPadraoIni.adicionarPesquisaBtn
    @dicPadraoIni.pesquisarBtn
  end
  
  Quando("pesquisar um Tipo de Anexo por itens {string} com parametro {string}") do |filtro, argumento|
    steps %q{
        Dado que tenha acessado o SIGAM
        E logado com usuario 'gtiAdm' senha 'a'
        Quando clicar entrar no modulo do SIPAI
        E clicar no menu dicionario
        E acessar o Dicionario Tipo de Anexo
    }
    @dicPadraoIni = DicionarioPadrao.new
    @dicPadraoIni.pesquisarFlag(filtro,argumento)
    @dicPadraoIni.adicionarPesquisaBtn
    @dicPadraoIni.pesquisarBtn
  end
  
  Quando("pesquisar um Tipo de Anexo pela flag {string} com parametro {string}") do |filtro,argumento|
    steps %q{
        Dado que tenha acessado o SIGAM
        E logado com usuario 'gtiAdm' senha 'a'
        Quando clicar entrar no modulo do SIPAI
        E clicar no menu dicionario
        E acessar o Dicionario Tipo de Anexo
    }
    @dicPadraoIni = DicionarioPadrao.new
    @dicPadraoIni.pesquisarFlag(filtro,argumento)
    @dicPadraoIni.adicionarPesquisaBtn
    @dicPadraoIni.pesquisarBtn
  end
  
  Quando("pesquisar um Tipo de Anexo o item de titulo {string}") do |valor|
    steps %q{
        Dado que tenha acessado o SIGAM
        E logado com usuario 'gtiAdm' senha 'a'
        Quando clicar entrar no modulo do SIPAI
        E clicar no menu dicionario
        E acessar o Dicionario Tipo de Anexo
    }
    @dicPadraoIni = DicionarioPadrao.new
    @dicPadraoIni.pesquisar('Título','Contém',valor)
    @dicPadraoIni.adicionarPesquisaBtn
    @dicPadraoIni.pesquisarBtn
    
  end
  Quando("clicar em editar no grid Tipo de Anexo") do
    @dicPadraoIni = DicionarioPadrao.new
    @dicPadraoIni.editarMetodoPesca(1)
  end
  
  Quando("alterar a flag Ativo para Inativo de um Tipo de Anexo") do
    steps %q{
        Quando pesquisar um Tipo de Anexo o item de titulo 'Documentos'
        E clicar em editar no grid Tipo de Anexo
    }
    page.uncheck('ctl00_conteudo_ctl00_flaAtivo')
  end
  
  Quando("clicar em excluir um um Tipo de Anexo") do
    steps %q{
        Quando pesquisar um Tipo de Anexo o item de titulo 'Documentos'
        E clicar em editar no grid Tipo de Anexo
    }
    @dicPadraoEdt = EdicaoDicionarioPadrao.new
    @dicPadraoEdt.btnExcluir.click
  end
  
  Quando("clicar em Dicionario Tipo de Anexo") do
    @AcessarSipai = AcessarSipai.new
    @AcessarSipai.tipoAnexoVistoria.click
  end
  Quando("editar no grid Tipo de Anexo") do
    steps %q{
        E clicar em editar no grid Tipo de Anexo
    }   
    
  end