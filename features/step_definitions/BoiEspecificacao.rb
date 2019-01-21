nis='null'
Quando("criar um BOI novo") do
    steps %q{
        E clicar em Adicionar
        Quando preencher os campos do BOI UC 'EE - Estação Ecológica Bananal' - DT Cadastro '2001202018' - Hora Detecção '12:35' - Área Abrangida Dentro e Entorno - Município 'BANANAL' - Caracteristica da Área 'Área Suburbana' - Especificação Local 'fechado' - Descrição 'cansei de preencher' - Latitude '-23,45' - Longitude '-53,25' 
        E clicar em Atualizar boi
    }
    @cadBoi = CadastroBoletim.new
    nis= @cadBoi.cabNis.text
  end
  
  Quando("acessar a Aba Espeficicação do BOI") do
    
  end
  
  Então("Sistema deve apresentar os campos Detecção de Incendio - Provável Causa do Incendio - Provável Causador - Caracteristica da Ocorrencia - Observações") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Então("os botãos de Atualizar - Ajuda") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Quando("estiver na edição do Boi") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Quando("selecionar nso campos Detecção de Incendio {string} - Provável Causa do Incendio {string} - Provável Causador {string}") do
  |string, string2, string3|
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Quando("preencher os campos de especificação Caracteristica da Ocorrencia {string}- Observações {string}") do |string, string2|
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Então("sistema deve exibir a msg {string}") do |string|
    pending # Write code here that turns the phrase above into concrete actions
  end