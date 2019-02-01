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
    @hs.subMenuUnidade.click
  end
  
  Dado("ter clicado na inclusão de uma Unidade") do
    
  end
  
  Dado("ter preenchido os campos Sigla {string} - Nome da Unidade {string} - Órgão {string} - Município {string} - Responsável {string} - Unidade Superior {string}") do |string, string2, string3, string4, string5, string6|
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Dado("ter clicado em Finalizar") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Dado("pesquisar Pela sigla {string}") do |string|
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Dado("clicar em editar Unidade") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Dado("pegar o NIS da unidade adicionada") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Quando("voltar para tela inicial do SIGAM") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Quando("clicar em Adicionar Área Protegida") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Quando("buscar pelo NIS da Unidade") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Quando("preencher os campos Grupo {string} - Categoria {string} - Área {string} - código {string}") do |string, string2, string3, string4|
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Quando("pesquisar Área protegida pela sigla {string}") do |string|
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Quando("acessar edição da área protegida") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Quando("clicar em excluir área protegida") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Então("sistema deve desvincular a especialização de unidade") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Então("deve permaner a Unidade ativa") do
    pending # Write code here that turns the phrase above into concrete actions
  end