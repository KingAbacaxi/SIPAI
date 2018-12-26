
Dado("tenha logado no sigam") do
    usuario = 'gtiAdm'
    senha = 'a'
    @AcessarSigam = AcessarSigam.new
    @AcessarSigam.load
   
    
    @LoginSigam = LoginSigam.new
    @LoginSigam.clicarLogin 
    @LoginSigam.loginDados(usuario,senha)
    
  end
  
  Dado("esteja no módulo SIPAI") do
    @AcessarSipai = AcessarSipai.new
    @AcessarSipai.moduloSipai
  
  end
  
  Quando("acessar o dicionario de Grupo de UC") do
    @AcessarSipai.abrirMenuDicionario
    @AcessarSipai.menuGrupoUC
    
  end
  
  Quando("clicar em incluir") do
    @DicionarioGrupoUC = DicionarioGrupoUC.new
    @DicionarioGrupoUC.incluirCategoria('Área Protegida')
  end
  
  Então("deve exibir tela de cadastro de um novo grupo de uc com a flag {string} marcada") do |flag|
    
    @DicionarioGrupoUC.verificarExisteFlag(flag)
   
  end
  
  Quando("clicar em editar grupo de uc {string}") do |gpUC|
    steps %q{
      Dado tenha logado no sigam
      E esteja no módulo SIPAI
      Quando acessar o dicionario de Grupo de UC
    }
    @DicionarioGrupoUC = DicionarioGrupoUC.new
    @DicionarioGrupoUC.editarCategoria(gpUC)
  end
  
  Quando("desmarcar a flag zona de amortecimento") do
   @DicionarioGrupoUC.desmarcaFlagZona 
  end
  
  Quando("finalizar atualização") do
    @DicionarioGrupoUC.clicarfinalizar
  end
  
  Então("sistema deve atualizar o grupo de uc") do
   titulo = @DicionarioGrupoUC.verificarFinalizar
   puts (titulo)
  
  end
  
  Quando("acessar o menu Áreas Protegidas") do
    steps %q{
      Dado tenha logado no sigam
      E esteja no módulo SIPAI
    }
    @AcessarSipai = AcessarSipai.new
    @AcessarSipai.menuAreasProtegidas
  end
  
  Quando("clicar em editar uma UC do grupo que não tenha zona de amortecimento do {string} {string} {string}") do |filtro, operador, parametro|
    @ModuloAreasProtegidas = ModuloAreasProtegidas.new
    @ModuloAreasProtegidas.pesquisaFiltro(filtro,operador,parametro)
    nomeUc = @ModuloAreasProtegidas.editarUC
    puts('Nome da UC editada: '+nomeUc)
  end
  
  Quando("clicar na aba mapa") do
    @ModuloAreasProtegidas.menuMapa
    
  end
  
  Então("não deve aparecer para desenhar o mapa de zona de amortecimento") do
    @MapaUC = MapaUC.new
    opcoesMapa= @MapaUC.grid
    puts('Tipos de mapa liberados para desenhar:')
    puts (opcoesMapa)
    assert_no_text('Zona de Amortecimento')
    
  end
  
  Quando("clicar em editar uma UC do grupo que tenha zona de amortecimento") do
    steps %q{
     Quando clicar em editar grupo de uc 'Uso Sustentável'
    }
    @DicionarioGrupoUC = DicionarioGrupoUC.new
    @DicionarioGrupoUC.marcaFlagZona
    @DicionarioGrupoUC.clicarfinalizar

    @AcessarSipai = AcessarSipai.new
    @AcessarSipai.menuAreasProtegidas
    steps %q{
      E clicar em editar uma UC do grupo que não tenha zona de amortecimento do 'Grupo' 'Contém' 'Uso Susten'
    }
  end
  
  Quando("clicar em mapa") do
    @ModuloAreasProtegidas = ModuloAreasProtegidas.new
    @ModuloAreasProtegidas.menuMapa
  end
  
  Então("deve aparecer para desenhar o mapa de zona de amortecimento") do
    @MapaUC = MapaUC.new
    opcoesMapa= @MapaUC.grid
    puts('Tipos de mapa liberados para desenhar:')
    puts (opcoesMapa)
    assert_text('Zona de Amortecimento')
    
  end
  
  Quando("clicar em Desenhar uma zona de amortecimento") do
    steps %q{
      Quando clicar em editar uma UC do grupo que tenha zona de amortecimento
      E clicar em mapa
     }
     @MapaUC = MapaUC.new
     @MapaUC.desenharZonaAmortecimento
  end
  
  Quando("desenhar o poligono sobreponto o poligono da área da uc") do
    @DesenharZonaAmortecimento = DesenharZonaAmortecimento.new
    @DesenharZonaAmortecimento.desenhar
    sleep 2
  end
  
  
  
  Então("apresentar mensagem {string}") do |msg|
    
    page.accept_alert
       
  end

  Então("sistema deve corta a parte que sobrepõe a área da uc") do
    page.driver.browser.save_screenshot 'ZonaAmortecimento.png'
    @DesenharZonaAmortecimento.fecharMapa
    
  end
  
  Quando("desenhar mais de um poligono de zonada de uc com partes se sobrepondo") do
    steps %q{
      Quando clicar em Desenhar uma zona de amortecimento
      E desenhar o poligono sobreponto o poligono da área da uc
      Então apresentar mensagem 'Corrigido para a diferença do(a) Zona de Amortecimento com a(s) área(s) Área da UC.'

    }
    @DesenharZonaAmortecimento = DesenharZonaAmortecimento.new
    @DesenharZonaAmortecimento.desenharZonaSoprepondo
    sleep 2
  end
  
  Então("sistema deve cortar as partes que se sobrepõe") do
    page.accept_alert
   
  end
  
  