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
    @especifica =EspecificacaoBoletim.new
    @especifica.abaEspeficicacao.click
    
  end
  
  Então("Sistema deve apresentar os campos Detecção de Incendio - Provável Causa do Incendio - Provável Causador - Caracteristica da Ocorrencia - Observações") do
    @especifica =EspecificacaoBoletim.new
    @especifica.deteccaoIncendio.text
    @especifica.provavelCausa.text
    @especifica.provavelCausador.text
    @especifica.caracteFogoRasteiro.text
    @especifica.caracteFogoCopa.text
    @especifica.obs.text

  end
  
  Então("os botãos de Atualizar - Ajuda") do
    
    @especifica =EspecificacaoBoletim.new
    @especifica.btnAtualizar.text
    @especifica.btnAjuda.text
  end
  
  Quando("estiver na edição do Boi") do
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
  
  Quando("selecionar nso campos Detecção de Incendio {string} - Provável Causa do Incendio {string} - Provável Causador {string}") do |deteccaoIncendio, provaCausa, provaCausador|
    @especifica =EspecificacaoBoletim.new
    @especifica.deteccaoIncendio.select deteccaoIncendio 
    @especifica.provavelCausa.select provaCausa 
    @especifica.provavelCausador.select provaCausador
  end
  
  Quando("preencher os campos de especificação Caracteristica da Ocorrencia Fogo rateiro - Observações {string}") do |obs|
    @especifica =EspecificacaoBoletim.new
    @especifica.obs.set obs
    check('ctl00$conteudo$ctl00$ContainerBOI$TabEspecificacao$chkFogoRasteiro')
    
  end
  Quando("clicar em Atualizar especificação") do 
    @especifica =EspecificacaoBoletim.new
    
    @especifica.btnAtualizar.click
  end
  
  Então("sistema deve exibir a msg {string}") do |msg|
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