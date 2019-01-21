 nis='null'
Quando("acessar Incêndios Florestais") do
    @AcessarSipai = AcessarSipai.new
    @AcessarSipai.boiIncendioFlorestalMenu.click
  end
  
  Quando("clicar em Adicionar") do
    @ModuloBoi = ModuloBoi.new
    @ModuloBoi.btnAdicionarBoi.click
  end
  
  Então("sistema deve apresentar tela de cadastro de Boletim de Ocorrência de Incêndio") do
    assert_text('Cadastro de Boletim de Ocorrência de Incêndio')
  end
  
  Então("deve conter os campos Área Protegida - Data de Detecção - Hora de Detecção - Área Abrangida - Municipio - Caracteristica do Local - Descrição - Coordenadas") do
    @cadBoi = CadastroBoletim.new
    @cadBoi.areaProtegida.text
    @cadBoi.dtDeteccao.text
    @cadBoi.hrDeteccao.text 
    @cadBoi.areaAbrangidaDentro.text
    @cadBoi.areaAbrangidaEntorno.text
    @cadBoi.municipio.text
    @cadBoi.caracteristicaArea.text
    @cadBoi.especificaLocal.text
    @cadBoi.descricaoOcorrencia.text
    @cadBoi.latitude.text
    @cadBoi.longitude.text
  end
  
  Então("os botões Finalizar - Atualziar - Retornar - Ajuda") do
    @cadBoi = CadastroBoletim.new
    have_button(@cadBoi.finalizar)
    have_button(@cadBoi.atualizar)
    have_button(@cadBoi.retornar)
    have_button(@cadBoi.ajuda)
  end
  
  Quando("preencher os campos do BOI UC {string} - DT Cadastro {string} - Hora Detecção {string} - Área Abrangida Dentro e Entorno - Município {string} - Caracteristica da Área {string} - Especificação Local {string} - Descrição {string} - Latitude {string} - Longitude {string}") do |uc, dtDet, hrDet, muni, caracArea, especLocal, descri, lat, long|
    @cadBoi = CadastroBoletim.new
    @cadBoi.areaProtegida.select (uc)
    @cadBoi.dtDeteccao.click
    @cadBoi.dtDeteccao.set dtDet
    @cadBoi.hrDeteccao.set hrDet
    check('ctl00$conteudo$ctl00$ContainerBOI$TabCadastro$chkDentroUC')
    check('ctl00$conteudo$ctl00$ContainerBOI$TabCadastro$chkEntornoUC')
    @cadBoi.municipio.select muni
    @cadBoi.caracteristicaArea.select caracArea
    @cadBoi.especificaLocal.set especLocal
    @cadBoi.descricaoOcorrencia.set descri
    @cadBoi.latitude.set lat
    @cadBoi.longitude.set long
    
  end
  
  Quando("clicar em Atualizar boi") do
    @cadBoi = CadastroBoletim.new
    @cadBoi.atualizar.click
  end
  
  Então("Sistema deve Atualizar os campos do Cabeçalho do BOI") do
    @cadBoi = CadastroBoletim.new
    nis= @cadBoi.cabNis.text
    numBoi= @cadBoi.cabNumBoi.text
    grupo= @cadBoi.cabGrupo.text
    areaProtegida= @cadBoi.cabAreaProtegida.text
    orgaoGestor=@cadBoi.cabOrgaoGestor.text
    dtCadastro=@cadBoi.cabDTCadastro.text
    dtDeteccao=@cadBoi.cabDTDeteccao.text
    puts ('NIS: '+nis+' numBoi: '+numBoi+' Grupo: '+grupo+' Área Protegida: '+areaProtegida+' Órgão Gestor: '+orgaoGestor+' Dt Cad: '+dtCadastro+' Dt Detecção: '+dtDeteccao)
  end
  
  Então("Atualizar os campos NIS - Número do BOI - Grupo - Órgão gestor") do
    @cadBoi = CadastroBoletim.new
    nis= @cadBoi.nis.text
    numBoi= @cadBoi.numBoi.text
    grupo= @cadBoi.grupo.text
    orgaoGestor=@cadBoi.orgaoGestor.text
   
    
    puts ('NIS: '+nis+' numBoi: '+numBoi+' Grupo: '+grupo+' Área Protegida: '+orgaoGestor)
  
  end
  
  Quando("clicar em Editar um Boi") do
    steps %q{
        Dado que tenha acessado o SIGAM
        E logado com usuario 'gtiAdm' senha 'a'
        E clicar entrar no modulo do SIPAI
        E acessar Incêndios Florestais
    }
    @dicPadrao = DicionarioPadrao.new
    @dicPadrao.pesquisar('NIS','Igual a',nis)
    @dicPadrao.btnAdicionarPesquisa.click
    @dicPadrao.btnPesquisa.click
    @ModuloBoi = ModuloBoi.new
    @ModuloBoi.editarBoi(0)
    
  end
  
  Quando("alterar o campo Área Abrangida Dentro") do
    uncheck('ctl00$conteudo$ctl00$ContainerBOI$TabCadastro$chkDentroUC')
  end

  Quando("clicar em Finalizar Boi") do
    @cadBoi = CadastroBoletim.new
    @cadBoi.finalizar.click
    
  end

  Então("sistema deve retornar para tela do Grid do BOI") do
    @dicPadrao = DicionarioPadrao.new
    @dicPadrao.pesquisar('NIS','Igual a',nis)
    @dicPadrao.btnAdicionarPesquisa.click
    @dicPadrao.btnPesquisa.click
  end
  
  Quando("clicar em Excluir") do
        
    @cadBoi = CadastroBoletim.new
    @cadBoi.excluir.click
  end
  
  Quando("clicar em OK na mensagem de confirmação") do
    page.accept_alert
  end
  
  Então("sistema deve apagar o BOI") do
    @dicPadrao = DicionarioPadrao.new
    @dicPadrao.pesquisar('NIS','Igual a',nis)
    @dicPadrao.btnAdicionarPesquisa.click
    @dicPadrao.btnPesquisa.click
  end