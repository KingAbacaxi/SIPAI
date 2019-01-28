nis='null'
Quando("criar um BOI novo para Mapa") do
  steps %q{
    E clicar em Adicionar
    Quando preencher os campos do BOI UC 'EE - Estação Ecológica Bananal' - DT Cadastro '2001202018' - Hora Detecção '12:35' - Área Abrangida Dentro e Entorno - Município 'BANANAL' - Caracteristica da Área 'Área Suburbana' - Especificação Local 'fechado' - Descrição 'cansei de preencher' - Latitude '-23,45' - Longitude '-53,25' 
    E clicar em Atualizar boi
}
@cadBoi = CadastroBoletim.new
nis= @cadBoi.cabNis.text
  end
  
  Quando("acessar aba Mapa") do
    @ModuloMapaBoletim = ModuloMapaBoletim.new
    @ModuloMapaBoletim.abaMapa.click
  end
  
  Então("sistema deve exibir aba do mapa com os botões de Desenhar - Ajuda - Excluir mapa") do
    @ModuloMapaBoletim = ModuloMapaBoletim.new
    @ModuloMapaBoletim.btnAjuda.text
    @ModuloMapaBoletim.btnExcluirMapas.text
    @ModuloMapaBoletim.btnDesenhoOcorrenciaMapa.text
  end
  
  Então("o Grid do mapa da ocorrencia de incendio") do
    
   valor =page.all(:css,'#ctl00_conteudo_ctl00_ContainerBOI_TabMapaOcorrencia_gvMapaBoi td')[2].text
  
   puts (valor)
   valor=='0'
  end
  
  Quando("clicar em desenhar no mapa do BOI") do
    steps %q{
      Dado que tenha acessado o SIGAM
      E logado com usuario 'gtiAdm' senha 'a'
      Quando clicar entrar no modulo do SIPAI
      E acessar Incêndios Florestais
  }
  @dicPadrao = DicionarioPadrao.new
  @dicPadrao.pesquisar('NIS','Igual a',nis)
  @dicPadrao.btnAdicionarPesquisa.click
  @dicPadrao.btnPesquisa.click
  @ModuloBoi = ModuloBoi.new
  @ModuloBoi.editarBoi(0)

  steps %q{
    E acessar aba Mapa
  }
  @ModuloMapaBoletim = ModuloMapaBoletim.new
    @ModuloMapaBoletim.btnDesenhoOcorrenciaMapa.click

  end
  
  Quando("desenhar mapa do boi") do
    @MapaOcorrencia =  MapaOcorrencia.new
    @MapaOcorrencia.desenhar
  end
  
  Quando("preencher o atributo {string} do mapa do boi Salvando o atributo do boi") do |valor|
      within_frame(find('iframe[src="/sigam-sipai-test/SIPAI/Mapa/Info/OcorrenciaTipoInfo.aspx?idPagina=15326"]')) do
       find('#descObservacao').set valor
       find('#cmdAtualizaBO').click
       end
    sleep 2
  end
  
  Quando("clicar em sair do mapa") do
    @MapaOcorrencia =  MapaOcorrencia.new
    @MapaOcorrencia.fecharMapa.click
  end
  
  Então("sistema deve exibir alerta de mapa do boi salvo") do
    page.accept_alert
  end
  
  Então("atualizar dados do grid do Mapa do BOI") do
    valor =page.all(:css,'#ctl00_conteudo_ctl00_ContainerBOI_TabMapaOcorrencia_gvMapaBoi tr')[0].text
    puts valor
    valor =page.all(:css,'#ctl00_conteudo_ctl00_ContainerBOI_TabMapaOcorrencia_gvMapaBoi tr')[1].text
    puts valor
  end
  
  Quando("clicar em excluir mapa da ocorrencia") do
    steps %q{
      Dado que tenha acessado o SIGAM
      E logado com usuario 'gtiAdm' senha 'a'
      Quando clicar entrar no modulo do SIPAI
      E acessar Incêndios Florestais
  }
  @dicPadrao = DicionarioPadrao.new
  @dicPadrao.pesquisar('NIS','Igual a',nis)
  @dicPadrao.btnAdicionarPesquisa.click
  @dicPadrao.btnPesquisa.click
  @ModuloBoi = ModuloBoi.new
  @ModuloBoi.editarBoi(0)

  steps %q{
    E acessar aba Mapa
  }
    @ModuloMapaBoletim = ModuloMapaBoletim.new
    @ModuloMapaBoletim.btnExcluirMapas.click
  end
  
  Quando("confirmar o alerta de excluir") do
    page.accept_alert
  end
  
  Então("o sistema deve atualizar o grid zerando os dados do mapa do boi") do
    valor =page.all(:css,'#ctl00_conteudo_ctl00_ContainerBOI_TabMapaOcorrencia_gvMapaBoi tr')[0].text
    puts valor
    valor =page.all(:css,'#ctl00_conteudo_ctl00_ContainerBOI_TabMapaOcorrencia_gvMapaBoi tr')[1].text
    puts valor
  end
  
  Quando("incluir shapefile do BOI") do
    
    attach_file('ctl00$conteudo$ctl00$ContainerBOI$TabMapaOcorrencia$fuShape',File.absolute_path("features//support//Anexos//anexoBoi.zip"))
    
  end
  
  Quando("clicar em Importar shapefile do boi") do
    @MapaOcorrencia =  MapaOcorrencia.new
    
    @MapaOcorrencia.importarShape.click
    
  end
  
  Então("sistema deve exibir poligono no mapa do BOI") do
    assert_text('Importação concluída com sucesso')
    tirar_foto('Tela_importacao_shape_boi', 'passou')
    @cadBoi = CadastroBoletim.new
    @cadBoi.retornarBtnCab.click
    @dicPadrao = DicionarioPadrao.new
    @dicPadrao.pesquisar('NIS','Igual a',nis)
    @dicPadrao.btnAdicionarPesquisa.click
    @dicPadrao.btnPesquisa.click
    @ModuloBoi = ModuloBoi.new
    @ModuloBoi.editarBoi(0)
    @cadBoi.excluir.click
    page.accept_alert
  end