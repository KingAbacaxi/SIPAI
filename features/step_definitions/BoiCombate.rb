nis='null'
Quando("criar um BOI novo para combate") do
    steps %q{
        E clicar em Adicionar
        Quando preencher os campos do BOI UC 'EE - Estação Ecológica Bananal' - DT Cadastro '2001202018' - Hora Detecção '12:35' - Área Abrangida Dentro e Entorno - Município 'BANANAL' - Caracteristica da Área 'Área Suburbana' - Especificação Local 'fechado' - Descrição 'cansei de preencher' - Latitude '-23,45' - Longitude '-53,25' 
        E clicar em Atualizar boi
    }
    @cadBoi = CadastroBoletim.new
    nis= @cadBoi.cabNis.text
  end
Quando("acessar a Aba Combate do BOI") do
    @CombateBoletim = CombateBoletim.new
    @CombateBoletim.abaCombate.click
  end
  
  Então("sistema deve exibir campos Extinção do fogo: Combate Direto - Combate Indireto - Extinção Natural") do
    @CombateBoletim = CombateBoletim.new
    @CombateBoletim.combateDireto.text
    @CombateBoletim.combateIndireto.text
    @CombateBoletim.extincaoNatural.text
  end
  
  Então("os campos Nível de acionamento - Início do combate data e hora - Término do combate data e hora - Participação do corpo de bombeiros sim e não") do
    @CombateBoletim = CombateBoletim.new
    @CombateBoletim.nivelAcionamento.text  
    @CombateBoletim.inicioDt.text
    @CombateBoletim.inicioHr.text
    @CombateBoletim.terminoDt.text
    @CombateBoletim.terminoHr.text
    @CombateBoletim.bombeiroSim.text
    @CombateBoletim.bombeiroNao.text
  end
  
  Então("os campos de seleção Especificação do Combate - Órgãos, Entidades e Empresas Envolvidas Número de pessoas- recursos envolvidos Descrição Quantidade") do
    @CombateBoletim = CombateBoletim.new
    @CombateBoletim.especificaCombate.text
    @CombateBoletim.btnIncluiEspecificaCombate.text
    @CombateBoletim.orgaosEnvolvidos.text
    @CombateBoletim.numPessoasOrgaosEnvolvidos.text
    @CombateBoletim.btnIncluiOrgaosEnvolvidos.text
    @CombateBoletim.recursoEnvolvido.text
    @CombateBoletim.descricaoRecursoEnvolvido.text
    @CombateBoletim.quantRecursosEnvolvido.text
    @CombateBoletim.btnIncluiRecursoEnvolvido.text

  end
  
  Então("os campos Quantidade total de água utilizada no combate - Estimativa total de gastos para o combate - Detelhamento") do
    @CombateBoletim = CombateBoletim.new
    @CombateBoletim.quantAguaUsada.text
    @CombateBoletim.quantGastos.text
    @CombateBoletim.detalhamentoCombate.text
  end
  
  Então("os botoes de Atualizar - Ajuda do combate") do
    @CombateBoletim = CombateBoletim.new
    @CombateBoletim.btnAtualizar.text
    @CombateBoletim.btnAjuda.text
  end
  
  Quando("preencher os campos Extinção do fogo: Combate Direto - Participação do corpo de bombeiros: não") do
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
        E acessar a Aba Combate do BOI
    }
    @CombateBoletim = CombateBoletim.new
    @CombateBoletim.combateDireto.click
    @CombateBoletim.bombeiroNao.click
  end
  
  Quando("selecionar os campos Nível de acionamento {string} - Especificação do combate {string} - Órgãos {string} Numero {string} - Recursos envolvidos {string} descri {string} quant {string}") do |nivelAciona, especiCombate, orgao, numOrgao, recursoEnvolvi, recursoDescri, recursoQuant|
    @CombateBoletim = CombateBoletim.new
    @CombateBoletim.nivelAcionamento.select nivelAciona
    @CombateBoletim.especificaCombate.select especiCombate
    @CombateBoletim.btnIncluiEspecificaCombate.click
    @CombateBoletim.orgaosEnvolvidos.select orgao
    @CombateBoletim.numPessoasOrgaosEnvolvidos.set numOrgao
    @CombateBoletim.btnIncluiOrgaosEnvolvidos.click
    @CombateBoletim.recursoEnvolvido.select recursoEnvolvi
    @CombateBoletim.descricaoRecursoEnvolvido.set recursoDescri
    @CombateBoletim.quantRecursosEnvolvido.set recursoQuant
    @CombateBoletim.btnIncluiRecursoEnvolvido.click
  end
  
  Quando("preencher os campos Inicio combate Data {string} Hora do combate {string} - Término combate Data {string} Hora do combate {string}") do |iniCombaDT, iniCombaHR, finCombaDT, finCombaHR|
    @CombateBoletim = CombateBoletim.new
    @CombateBoletim.inicioDt.click
    @CombateBoletim.inicioDt.set iniCombaDT
    @CombateBoletim.inicioHr.set iniCombaHR
    @CombateBoletim.terminoDt.click
    @CombateBoletim.terminoDt.set finCombaDT
    @CombateBoletim.terminoHr.set finCombaHR
  end
  
  Quando("preencher os campos Quantidade total de água {string} - Estimativa total de gastos {string} - Detalhamento do combate {string}") do |quantAgua, gastoTotal, descric|
    @CombateBoletim = CombateBoletim.new
    @CombateBoletim.quantAguaUsada.set quantAgua 
    @CombateBoletim.quantGastos.set gastoTotal 
    @CombateBoletim.detalhamentoCombate.set descric
  end
  
  Quando("clicar em Incluir combate") do
    @CombateBoletim = CombateBoletim.new
    @CombateBoletim.btnAtualizar.click
  end

  Então("sistema deve exibir a msg {string} fazendo a exclusão do boi combate") do |msg|
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
  
  Quando("preencher os campos Extinção do fogo: extinção Natural") do
    steps %q{
        Dado que tenha acessado o SIGAM
        E logado com usuario 'gtiAdm' senha 'a'
        Quando clicar entrar no modulo do SIPAI
        E acessar Incêndios Florestais
        E criar um BOI novo para combate 
        E acessar a Aba Combate do BOI
    }
    
   
    @CombateBoletim = CombateBoletim.new
    @CombateBoletim.extincaoNatural.click
    @CombateBoletim.btnAtualizar.click
  end