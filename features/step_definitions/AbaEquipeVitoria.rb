Dado("logado no sistema com usuario {string} senha {string}") do |usuario, senha|
  @LoginSigam = LoginSigam.new
  @LoginSigam.clicarLogin 
  @LoginSigam.loginDados(usuario,senha)
end

  Dado("acessado o modulo SIPAI") do
    @AcessarSipai = AcessarSipai.new
    @AcessarSipai.moduloSipai
  end
  
  Dado("ter entrado no menu de Vistória Ambiental") do
    @AcessarSipai.vistoriaAmbiental.click
    
  end
  
  Quando("clicar em editar uma Vistoria") do
    @ModuloVistoriaAmbiental = ModuloVistoriaAmbiental.new
    @ModuloVistoriaAmbiental.editarVistoria(1)
    
  end
  
  Quando("clicar na aba Equipe") do
    @ModuloVistoriaAmbiental.abaEquipe.click
  end
  
  Então("sistema deve exibir tela com o campo de seleção {string}") do |campo|
    assert_text(campo)
    
  end
  
  Então("deve conter o campo {string}") do |campo|
    assert_text(campo)
  end
  
  Então("deve conter o botão de inclusão para orgãos com participantes") do
    @EquipeVistoria = EquipeVistoria.new
    @EquipeVistoria.incluirOrgao.text 

  end
  
  Então("deve conter o campo de listagem {string}") do |campo|
    assert_text(campo)
  end
  
  Então("deve conter o botão de inclução para participantes da área protegida") do
    @EquipeVistoria.incluirIntegrantes.text 
  end
  
  Quando("selecionar um orgão envolvido") do
    steps %q{
      Dado que tenha acessado o SIGAM
      E logado no sistema com usuario 'gtiAdm' senha 'a'
      E acessado o modulo SIPAI
      E ter entrado no menu de Vistória Ambiental
      Quando clicar em editar uma Vistoria
      E clicar na aba Equipe
    }
    @EquipeVistoria = EquipeVistoria.new
    @EquipeVistoria.listaOrgaos.select 'ONG'
  end
  
  Quando("preencher o número de partipantes com {string} pessoas") do |numParticipantes|
    @EquipeVistoria.numParticipantes.set numParticipantes
  end
  
  Quando("clicar em Incluir órgãos") do
    @EquipeVistoria.incluirOrgao.click
  end
  
  Então("sistema deve apresentar o GRID com as colunas Excluir - Órgão e Instituições envolvidas - Número de Participantes") do
    @EquipeVistoria.gridOrgao.text
  end
  
  Então("na coluna de Excluir deve conter o simbolo de exclusão") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Então("na coluna de Órgão e Instituições envolvidas deve conter o orgão selecionado") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Então("na coluna Número de participantes deve conter o valor {string}") do |string|
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Quando("selecionar um participante") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Quando("clicar em incluir o participante") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Então("sistema deve apresnetar no grid de participante as colunas Excluir - CPF\/CNPJ - Nome - Cargo ou Função - Unidade") do
  pending # Write code here that turns the phrase above into concrete actions
end
  
  Então("na coluna de Excluir item do grid de participante deve conter o ícone de exclusão") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Então("na coluna de CPF\/CNPJ deve conter o CPF ou CNPJ do integrante incluido") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Então("na coluna de Nome deve conter o Nome do integrante incluido") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Então("na coluna de Cargo ou Função deve conter o Cargo ou Função do integrante incluido") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Então("na coluna de Unidade deve conter a Unidade do integrante incluido") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Quando("clicar em excluir um item do grid de Órgaõs e Instituições") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Então("sistema deve desvincular a relação atualizando o grid sem os dados exluídos") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Quando("clicar em excluir um item do grid de Integrantes") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Então("sistema deve desvincular a relação do integrante á equipe atualizando o grid sem os dados exluídos") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Quando("acessar o dicionario de Vistoria ambiental") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Quando("clicar no dicionario de instituição") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Quando("editar um item colocando ele inativos") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Quando("atualizar a alteração") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Quando("acessar o menu de vistoria ambiental") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Quando("estiver na aba equipe dentro de uma vistoria ambiental") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Quando("clicar no combo box de Órgãos e Instituições envolvidas") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Então("sistema não deve apresentar o item inativo na listagem") do
    pending # Write code here that turns the phrase above into concrete actions
  end