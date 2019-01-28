nis='null'
Quando("criar um BOI novo para Anexos") do
    steps %q{
        E clicar em Adicionar
        Quando preencher os campos do BOI UC 'EE - Estação Ecológica Bananal' - DT Cadastro '2001202018' - Hora Detecção '12:35' - Área Abrangida Dentro e Entorno - Município 'BANANAL' - Caracteristica da Área 'Área Suburbana' - Especificação Local 'fechado' - Descrição 'cansei de preencher' - Latitude '-23,45' - Longitude '-53,25' 
        E clicar em Atualizar boi
    }
    @cadBoi = CadastroBoletim.new
    nis= @cadBoi.cabNis.text
  end
  
  Quando("clicar na aba de Anexos") do
    @AnexosBoletim = AnexosBoletim.new
    @AnexosBoletim.abaAnexo.click
  end
  
  Então("sistema deve exibir mensagem {string}") do |msg|
    assert_text(msg)
  end
  
  Quando("clicar em incluir anexo do boi") do
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
        Quando clicar na aba de Anexos
    }
    @AnexosBoletim = AnexosBoletim.new
    @AnexosBoletim.btnIncluirAnexo.click
  end
  
  Então("sistema deve exibir tela de inclusão de anexos com o campo Data já previamente preenchido") do
    @AnexosBoletim = AnexosBoletim.new
    @AnexosBoletim.dtAnexo.text != ''
  end
  
  Então("exibir os campos Título do Anexo - Tipo de Documento - Pesquisa tipo documento - Responsavel - Nome do Arquivo - Descrição") do
    @AnexosBoletim = AnexosBoletim.new
    @AnexosBoletim.tituloDoc.text
    @AnexosBoletim.tipoDoc.text
    @AnexosBoletim.btnPesquisaTipoDoc.text
    @AnexosBoletim.responsavel.text
    @AnexosBoletim.nomeArquivo.text
    @AnexosBoletim.descricao.text
  end
  
  Então("exibir as labels de Detalhamento do Arquivo") do
    @AnexosBoletim = AnexosBoletim.new
    @AnexosBoletim.labelExtensao.text
    @AnexosBoletim.labelTamenho.text
    @AnexosBoletim.labelDataAnexado.text

  end
  
  Então("exibir os botões de Escolher Arquivo - Finalizar - Atualizar - Retornar - Ajuda") do
    @AnexosBoletim = AnexosBoletim.new
    @AnexosBoletim.btnEscolheArquivo.text
    @AnexosBoletim.btnFinalizar.text
    @AnexosBoletim.btnAtualizar.text
    @AnexosBoletim.btnRetornar.text
    @AnexosBoletim.btnAjudaInclir.text
  end
  
  Quando("preencher os campos Título do Anexo {string} - Responsável {string} - Descrição {string}") do |titAnexo, responsa, desc|
    
    @AnexosBoletim = AnexosBoletim.new
    
    @AnexosBoletim.tituloDoc.set titAnexo
    @AnexosBoletim.responsavel.set responsa
    @AnexosBoletim.descricao.set desc
  end
  
  Quando("selecionar o Tipo de Documento {string}") do |ops|
    @AnexosBoletim = AnexosBoletim.new
    @AnexosBoletim.tipoDoc.click
    @AnexosBoletim.tipoDoc.set ops
    sleep 2
    @AnexosBoletim.descricao.click
  end
  
  Quando("escolher o documento do anexo do BOI") do
    @AnexosBoletim = AnexosBoletim.new
    
    attach_file('ctl00$conteudo$ctl00$ContainerBOI$TabAnexo$fileUpload$ctl02',File.absolute_path("features//support//Anexos//cap.png"))
  end
  
  Quando("clicar em Finalizar Anexo do BoiAnexos") do
    @AnexosBoletim = AnexosBoletim.new
    @AnexosBoletim.btnFinalizar.click
  end
  
  Então("sistema deve atualizar o Grid de Anexo com os dados do arquivo anexado Título do Anexo {string}") do |titulo|
    valor =page.all(:css,'#ctl00_conteudo_ctl00_ContainerBOI_TabAnexo_gvAnexos td')[11].text
    puts valor
  end
  
  Quando("clicar em excluir no grid de anexo") do
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
        Quando clicar na aba de Anexos
    }
    page.all(:css,'#ctl00_conteudo_ctl00_ContainerBOI_TabAnexo_gvAnexos #ctl00_conteudo_ctl00_ContainerBOI_TabAnexo_gvAnexos_ctl02_cmdExcluir')[0].click
  end
  
  Então("sistema deve atualizar o Grid retirando o anexo Título {string}") do |titulo|
    assert_no_text(titulo)
  end
  Quando("clicar em incluir o segundo anexo do boi") do
    @AnexosBoletim = AnexosBoletim.new
    @AnexosBoletim.btnIncluirAnexo.click
  end
  Então("o Grid deve conter mais de um anexo com os títulos {string} {string}") do |titulo1, titulo2|
    assert_text(titulo1)
    assert_text(titulo2)
    tirar_foto('Tela_Grid_Anexo_VariosAnexos', 'passou')
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