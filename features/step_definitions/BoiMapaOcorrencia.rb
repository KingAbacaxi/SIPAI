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
  
  Quando("preencher o atributo {string} do mapa do boi") do |valor|
    
    @MapaOcorrencia =  MapaOcorrencia.new
    page.driver.browser.switch_to.default_content
    @MapaOcorrenciapage.atributo.set valor
    @MapaOcorrenciapage.btnSalvarAtributo.click
    sleep 3
  end
  
  Quando("clicar em Salvar atributo do boi") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Quando("clicar em sair do mapa") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Então("sistema deve exibir alerta de mapa do boi salvo") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Então("atualizar dados do grid do Mapa do BOI") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Quando("clicar em excluir mapa da ocorrencia") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Quando("confirmar o alerta de excluir") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Então("o sistema deve atualizar o grid zerando os dados do mapa do boi") do
    pending # Write code here that turns the phrase above into concrete actions
  end