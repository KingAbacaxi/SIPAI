nis='null'
Quando("criar um BOI novo para Danos") do
    steps %q{
        E clicar em Adicionar
        Quando preencher os campos do BOI UC 'EE - Estação Ecológica Bananal' - DT Cadastro '2001202018' - Hora Detecção '12:35' - Área Abrangida Dentro e Entorno - Município 'BANANAL' - Caracteristica da Área 'Área Suburbana' - Especificação Local 'fechado' - Descrição 'cansei de preencher' - Latitude '-23,45' - Longitude '-53,25' 
        E clicar em Atualizar boi
    }
    @cadBoi = CadastroBoletim.new
    nis= @cadBoi.cabNis.text
  end
Quando("acessar aba Danos") do
    @DanosBoletim = DanosBoletim.new
    @DanosBoletim.abaDanosBOI.click
  end
  
  Então("sistema deve apresentar campos Área atingida dentro - Área atingida fora - Bioma Cerrado Mata atlântica- obs") do
    @DanosBoletim = DanosBoletim.new
    @DanosBoletim.areaAtingiDentro.text
    @DanosBoletim.areaAtingiFora.text
    @DanosBoletim.biomaCerrado.text
    @DanosBoletim.biomaMataAtlantica.text
    @DanosBoletim.obs.text
  end
  
  Então("selecionar os campos Tipo Vegetacao - Outros Danos  - Descrição Outros Danos") do
    @DanosBoletim = DanosBoletim.new
    @DanosBoletim.tipoVegetacao.text
    @DanosBoletim.incluirTipoVegetacao.text
    @DanosBoletim.outrosDanos.text
    @DanosBoletim.outrosDanosDescri.text
    @DanosBoletim.incluirOutrosDanos.text
  end
  
  Então("exibir os botões Atualizar - Ajuda") do
    @DanosBoletim = DanosBoletim.new
    @DanosBoletim.btnAtualiza.text
    @DanosBoletim.btnAjuda.text
  end
  
  Quando("selecionar nos campos Tipo Vegetacao {string} - Outros Danos {string} - Descrição Outros Danos {string}") do |veget, outroDano, descriDano|
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
    @DanosBoletim = DanosBoletim.new
    @DanosBoletim.tipoVegetacao.select veget
    @DanosBoletim.incluirTipoVegetacao.click
    @DanosBoletim.outrosDanos.select outroDano
    @DanosBoletim.outrosDanosDescri.set descriDano
    @DanosBoletim.incluirOutrosDanos.click

  end
  
  Quando("preencher os campos Área atingida dentro {string} - Área atingida fora {string} - Bioma Cerrado - obs {string}") do |areaDentro, areaFora, obs|
    @DanosBoletim = DanosBoletim.new
    @DanosBoletim.areaAtingiDentro.set areaDentro
    @DanosBoletim.areaAtingiFora.click
    @DanosBoletim.areaAtingiFora.set areaFora 
    check('ctl00$conteudo$ctl00$ContainerBOI$TabDanos$chkCerrado')
    @DanosBoletim.obs.set obs
  end
  
  Quando("clicar em Atualizar Danos") do
    @DanosBoletim = DanosBoletim.new
    @DanosBoletim.btnAtualiza.click
  end
  Então("sistema deve exibir a msg {string} fazendo a exclusão do boi Danos") do |msg|
    assert_text(msg)
    
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