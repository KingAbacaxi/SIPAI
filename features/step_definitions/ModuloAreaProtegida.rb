nisUnidade = ''
Quando("acessar o Menu Área Protegida") do
   @sipai = AcessarSipai.new
   @sipai.areasProtegidas.click
    
  end
  
  Então("sistema deve exibir modulo de Áreas Protegidas com o Título {string}") do |titulo|
    @ap = ModuloAreasProtegidas.new
    @ap.tituloModulo.text == titulo
  end
  
  Então("o componente de pesquisa") do
    @ap = ModuloAreasProtegidas.new
    have_button(@ap.filtro)
    have_button(@ap.operador)
    have_button(@ap.btnAdicionar)
    have_button(@ap.textoPesquisa)
  end
  
  Então("os botões de Adicionar - Pesquisar - Excel - Altura") do
    @ap = ModuloAreasProtegidas.new
    have_button(@ap.btnPesquisa)
    have_button(@ap.btnExcel)
    have_button(@ap.listaAltura)
  end
  
  Então("o Grid com as colunas Editar - Ativa - Sigla - Área Protegida - Grupo - órgão Gestor") do
    @ap = ModuloAreasProtegidas.new
    puts @ap.gridColunas.text
  end
  
  Dado("ter acessado o menu Portal") do
    @hs= HomeSigam.new
    @hs.menuPortal.hover
    sleep 2
  end
  
  Dado("ter acessado o menu Tabelas Organizacionais") do
    @hs= HomeSigam.new
    @hs.subMenuTabelasOrganizacionais.hover
    sleep 2
  end
  
  Dado("ter clicado em Unidade") do
    @hs= HomeSigam.new
    @hs.subMenuUnidade[1].click
  end
  
  Dado("ter clicado na inclusão de uma Unidade") do
    @unidade = Unidade.new
    @unidade.btnAdd.click
  end
  
  Dado("ter preenchido os campos Sigla {string} - Nome da Unidade {string} - Órgão {string} - Município {string} - Responsável {string} - Unidade Superior {string}") do |string, string2, string3, string4, string5, string6|
    
    @unidade = Unidade.new
    @unidade.gerarUnidadeComCamposObrigatorios(string, string2, string3, string4, string5, string6)
    
  end
  

  
  Dado("pesquisar Pela sigla {string}") do |string|
    @dicPadraoIni = DicionarioPadrao.new
    @dicPadraoIni.pesquisar('Sigla','Contém',string)
    @dicPadraoIni.adicionarPesquisaBtn
    @dicPadraoIni.pesquisarBtn
    
  end
  
  Dado("clicar em editar Unidade") do
    @unidade = Unidade.new
    
    @unidade.editarUnidade[0].click
  end
  
  Dado("pegar o NIS da unidade adicionada") do
     @unidade = Unidade.new
     nisUnidade = @unidade.nis.text
     puts nisUnidade
  end
  
  Quando("voltar para tela inicial do SIGAM") do
    @hs= HomeSigam.new
    @hs.home.click
  end
  
  Quando("clicar em Adicionar Área Protegida") do
    @ap = ModuloAreasProtegidas.new
    @ap.btnAdicionar.click
  end
  
  Quando("buscar pelo NIS da Unidade") do
    @cap = CadastroAreaProtegida.new
    @cap.nisCadastroUC.set nisUnidade
    @cap.btnBuscarNisUC.click
  end
  
  Quando("preencher os campos Grupo {string} - Categoria {string} - Área {string} - código {string}") do |grupoUC, categoriaUC, areaUC, codigoUC|
    @cap = CadastroAreaProtegida.new
    @cap.grupo.select grupoUC
    @cap.categoria.select categoriaUC
    @cap.area.set areaUC
    @cap.codigo.set codigoUC
  end
  
  Quando("clicar em Atualizar cadastro da área protegida") do
    @cap = CadastroAreaProtegida.new
    @cap.btnAtualizar.click
  end

  Então("sistema deve exibir a msg {string} no cadastro da área protegida") do |msg|
    assert_text(msg)
  end

  Quando("pesquisar Área protegida pela sigla {string}") do |siglaUnidade|
    @dicPadraoIni = DicionarioPadrao.new
    @dicPadraoIni.pesquisar('Sigla','Contém',siglaUnidade)
    @dicPadraoIni.adicionarPesquisaBtn
    @dicPadraoIni.pesquisarBtn
  end
  
  Quando("acessar edição da área protegida") do
    @unidade = Unidade.new
    @unidade.editarUnidade[0].click
  end
  
  Quando("clicar em excluir área protegida") do
    @cap = CadastroAreaProtegida.new
    @cap.btnExcluir.click
    page.accept_alert
  end
  
  Então("sistema deve desvincular a especialização de unidade {string}") do |siglaUnidade|
    @dicPadraoIni = DicionarioPadrao.new
    @dicPadraoIni.pesquisar('Sigla','Contém',siglaUnidade)
    @dicPadraoIni.adicionarPesquisaBtn
    @dicPadraoIni.pesquisarBtn
    assert_text('Nenhuma Unidade de Conservação Selecionada')
  end
  
  Então("deve permaner a Unidade ativa") do
    @hs = HomeSigam.new
    @hs.logoInicial.click
    steps %Q{
      E ter acessado o menu Portal
      E ter acessado o menu Tabelas Organizacionais
      E ter clicado em Unidade
      E pesquisar Pela sigla 'EEEDUAMORIMUC'
      E clicar em editar Unidade
    }
  end