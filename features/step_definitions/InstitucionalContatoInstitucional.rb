Quando("clicar na aba Institucinal dentro da área protegida") do
    @ci = InstitucionalContato.new
    @ci.abaInstitucional.click
  end
  
  Então("sistema deve exibir a sub aba Contato Institucinal") do
    @ci = InstitucionalContato.new
    have_button(@ci.abaContatoInstitucional)
  end
  
  Então("deve ter os campos Endereço - Complemento - Bairro - CEP - DDD - Telefone - e-mail - Site - Logo") do
    @ci = InstitucionalContato.new
    @ci.endereco.text
    @ci.complemento.text 
    @ci.bairro.text 
    @ci.cep.text 
    @ci.ddd.text
    @ci.telefone.text 
    @ci.email.text 
    @ci.site.text 
    @ci.logo.text 
  end
  
  Então("deve conter o botões de Atualizar - Ajuda de contato institucional da aba institucional") do
    @ci = InstitucionalContato.new
    have_button(@ci.atualizar)
    have_button(@ci.ajuda)
  end
  
  Quando("preencher os campos Endereço {string} - Complemento {string} - Bairro {string} - CEP {string} - DDD {string} - Telefone {string} - e-mail {string} - Site {string} - Logo") do |string, string2, string3,  string4, string5, string6, string7, string8|
    @ci = InstitucionalContato.new
    @ci.endereco.set string
    @ci.complemento.set string2
    @ci.bairro.set string3
    @ci.cep.set string4
    @ci.ddd.set string5
    @ci.telefone.set string6
    @ci.email.set string7
    @ci.site.set string8
    @ci.logo.set File.absolute_path('features//support//Anexos//LogoUc.jpg')
    
  end
  
  Quando("clicar em Atualizar na tela contato institucional") do
    @ci = InstitucionalContato.new
    @ci.atualizar.click
    page.accept_alert
  end
  
  Então("sistema deve apresentar msg de {string}") do |string|
    assert_text(string)
  end
  
  Então("exibir logo da área protegida no contato institucional") do
    assert_text('LogoUc.jpg')
  end
  
  Então("apresentar o botão de excluir ao lado do nome da imagem do contanto institucional") do
    @ci = InstitucionalContato.new
    have_button(@ci.excluirLogo)
  end
  
  Quando("incluir uma imagem no formato invalido na área protegida") do
    @ci = InstitucionalContato.new
    @ci.logo.set File.absolute_path('features//support//Anexos//anexoBoi.zip')
  end
  
  Então("sistema deve apresentar mensagem {string}") do |string|
    text = page.driver.browser.switch_to.alert.text
    expect(text).to eq string
    page.accept_alert
  end