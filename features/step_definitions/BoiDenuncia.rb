nis='null'
Dado("criar um BOI novo para Denuncia") do
    steps %q{
        E clicar em Adicionar
        Quando preencher os campos do BOI UC 'EE - Estação Ecológica Bananal' - DT Cadastro '2001202018' - Hora Detecção '12:35' - Área Abrangida Dentro e Entorno - Município 'BANANAL' - Caracteristica da Área 'Área Suburbana' - Especificação Local 'fechado' - Descrição 'cansei de preencher' - Latitude '-23,45' - Longitude '-53,25' 
        E clicar em Atualizar boi
    }
    @cadBoi = CadastroBoletim.new
    nis= @cadBoi.cabNis.text
  end
  
  Quando("acessar aba Denuncia do Boi") do
    @DenunciaBoletim = DenunciaBoletim.new
    @DenunciaBoletim.abaDenuncia.click
  end
  
  Então("sistema deve Apresentar o campo de seleção Tipo") do
    @DenunciaBoletim = DenunciaBoletim.new
    @DenunciaBoletim.tipo.text
  end
  
  Então("o botão de Gerar Denuncia") do
    @DenunciaBoletim = DenunciaBoletim.new
    @DenunciaBoletim.gerarDenuncia.text
  end
  
  Então("a mensagem {string}") do |msg|
    assert_text(msg)
  end
  
  Quando("estiver na edição do Boi para denuncia") do
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

    
  end
  
  Quando("preencher os campos Extinção do fogo: Combate Direto - Participação do corpo de bombeiros: não na denuncia") do
    @CombateBoletim = CombateBoletim.new
    @CombateBoletim.combateDireto.click
    @CombateBoletim.bombeiroNao.click
  end
  
  Quando("selecionar nos campos Tipo Vegetacao {string} - Outros Danos {string} - Descrição Outros Danos {string} para denuncia") do |veget, outroDano, descriDano|
    @DanosBoletim = DanosBoletim.new
    @DanosBoletim.tipoVegetacao.select veget
    @DanosBoletim.incluirTipoVegetacao.click
    @DanosBoletim.outrosDanos.select outroDano
    @DanosBoletim.outrosDanosDescri.set descriDano
    @DanosBoletim.incluirOutrosDanos.click
  end
  
  Quando("clicar em desenhar no mapa do BOI para denuncia") do
    @ModuloMapaBoletim = ModuloMapaBoletim.new
    @ModuloMapaBoletim.btnDesenhoOcorrenciaMapa.click
  end
  
  Quando("clicar em incluir anexo do boi para denuncia") do
    @AnexosBoletim = AnexosBoletim.new
    @AnexosBoletim.btnIncluirAnexo.click
  end
  
  Quando("selecionar o Tipo de Denuncia {string}") do |tipoDenuncia|
    @DenunciaBoletim = DenunciaBoletim.new
    @DenunciaBoletim.tipo.select tipoDenuncia
  end
  
  Quando("clicar em gerar Denuncia") do
    @DenunciaBoletim = DenunciaBoletim.new
    @DenunciaBoletim.gerarDenuncia.click
  end
  
  Quando("confirmar mensagem de Denuncia gerado com Sucesso") do
    page.accept_alert
    sleep 2
    tirar_foto('Tela_Grid_denuncia', 'passou')
  end
  
  Então("Sistema deve apresentar GRID com os dados da Denuncia gerada Tipo {string}") do |tipoDenuncia|
    assert_text(tipoDenuncia)
    

    #excluir Boi
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