Quando("acessar o Dicionario BOI Caracteristica da Área") do
    @AcessarSipai = AcessarSipai.new
    @AcessarSipai.boiIncendioFlorestalMenu.hover
    @AcessarSipai.boiCaracArea.click
  end
  
  Então("Sistema deve exibir interface do dicionario BOI Caracteristica da Área") do
    expect(page).to have_current_path('http://homologacao-sigam.eastus2.cloudapp.azure.com/sigam-sipai-test/Default.aspx?idPagina=15329', url: true)
  end
  
  Quando("Clicar em Adicionar no dicionario BOI Caracteristica da Área") do
    steps %q{
        Dado que tenha acessado o SIGAM
        E logado com usuario 'gtiAdm' senha 'a'
        Quando clicar entrar no modulo do SIPAI
        E clicar no menu dicionario
        E acessar o Dicionario BOI Caracteristica da Área
    }
    @dicPadraoIni = DicionarioPadrao.new
    @dicPadraoIni.btnNovo.click
  end
  
  Então("Sistema deve exibir tela de inclusao para BOI Caracteristica da Área") do
    tirar_foto('Tela_inclusao_Instituicao', 'passou')
  end
  
  Quando("Preecher os campos de um novo BOI Caracteristica da Área titulo {string} ordem {string} Ativo {string} descricao {string}") do |tit,ord,ativ,descri|
    steps %q{
        Quando Clicar em Adicionar no dicionario BOI Caracteristica da Área
    }
    @dicPadraoEdt = EdicaoDicionarioPadrao.new
    @dicPadraoEdt.preencherDados(tit,ord,ativ,descri)
  end
  
  Quando("incluir um novo item no dicionario de BOI Caracteristica da Área") do
    steps %q{
        Quando Preecher os campos de um novo BOI Caracteristica da Área titulo 'Área de Alagamento' ordem '1' Ativo 'sim' descricao 'Alagamento causado por chuvas' 

    }
  end
  
  Quando("pesquisar um BOI Caracteristica da Área pela descricao {string}") do |valor|
    steps %q{
        Dado que tenha acessado o SIGAM
        E logado com usuario 'gtiAdm' senha 'a'
        Quando clicar entrar no modulo do SIPAI
        E clicar no menu dicionario
        E acessar o Dicionario BOI Caracteristica da Área
    }
    @dicPadraoIni = DicionarioPadrao.new
    @dicPadraoIni.pesquisar('Descrição','Contém',valor)
    @dicPadraoIni.adicionarPesquisaBtn
    @dicPadraoIni.pesquisarBtn
  end
  
  Quando("pesquisar um BOI Caracteristica da Área pelo titulo {string}") do |valor|
    steps %q{
        Dado que tenha acessado o SIGAM
        E logado com usuario 'gtiAdm' senha 'a'
        Quando clicar entrar no modulo do SIPAI
        E clicar no menu dicionario
        E acessar o Dicionario BOI Caracteristica da Área
    }
    @dicPadraoIni = DicionarioPadrao.new
    @dicPadraoIni.pesquisar('Título','Contém',valor)
    @dicPadraoIni.adicionarPesquisaBtn
    @dicPadraoIni.pesquisarBtn
  end
  
  Quando("pesquisar um BOI Caracteristica da Área por itens {string} com parametro {string}") do |filtro,argumento|
    steps %q{
        Dado que tenha acessado o SIGAM
        E logado com usuario 'gtiAdm' senha 'a'
        Quando clicar entrar no modulo do SIPAI
        E clicar no menu dicionario
        E acessar o Dicionario BOI Caracteristica da Área
    }
    @dicPadraoIni = DicionarioPadrao.new
    @dicPadraoIni.pesquisarFlag(filtro,argumento)
    @dicPadraoIni.adicionarPesquisaBtn
    @dicPadraoIni.pesquisarBtn
  end
  
  Quando("pesquisar um BOI Caracteristica da Área pela flag {string} com parametro {string}") do |filtro,argumento|
    steps %q{
        Dado que tenha acessado o SIGAM
        E logado com usuario 'gtiAdm' senha 'a'
        Quando clicar entrar no modulo do SIPAI
        E clicar no menu dicionario
        E acessar o Dicionario BOI Caracteristica da Área
    }
    @dicPadraoIni = DicionarioPadrao.new
    @dicPadraoIni.pesquisarFlag(filtro,argumento)
    @dicPadraoIni.adicionarPesquisaBtn
    @dicPadraoIni.pesquisarBtn
  end
  
  Quando("pesquisar um BOI Caracteristica da Área o item de titulo {string}") do |valor|
    steps %q{
        Dado que tenha acessado o SIGAM
        E logado com usuario 'gtiAdm' senha 'a'
        Quando clicar entrar no modulo do SIPAI
        E clicar no menu dicionario
        E acessar o Dicionario BOI Caracteristica da Área
    }
    @dicPadraoIni = DicionarioPadrao.new
    @dicPadraoIni.pesquisar('Título','Contém',valor)
    @dicPadraoIni.adicionarPesquisaBtn
    @dicPadraoIni.pesquisarBtn
  end
  
  Quando("clicar em editar no grid BOI Caracteristica da Área") do
    @dicPadraoIni = DicionarioPadrao.new
    @dicPadraoIni.editarMetodoPesca(0)
  end
  
  Quando("alterar a flag Ativo para Inativo de um BOI Caracteristica da Área") do
    steps %q{
        Quando pesquisar um BOI Caracteristica da Área o item de titulo 'Área'
        E clicar em editar no grid BOI Caracteristica da Área
    }
    page.uncheck('ctl00_conteudo_ctl00_flaAtivo')
  end
  
  Quando("clicar em excluir um um BOI Caracteristica da Área") do
    steps %q{
        Quando pesquisar um BOI Caracteristica da Área o item de titulo 'Área'
        E clicar em editar no grid BOI Caracteristica da Área
    }
    @dicPadraoEdt = EdicaoDicionarioPadrao.new
    @dicPadraoEdt.btnExcluir.click
  end
  
  Quando("editar no grid BOI Caracteristica da Área") do
    steps %q{
        E clicar em editar no grid BOI Caracteristica da Área
    }   
  end
  
  