#language: pt
#utf-8
@abaPesquisaUC
Funcionalidade: Verificar funcionamento da aba de pesquisa em áreas protegidas

#COMO técnico QUERO que seja corrigida e adaptada a aba de Pesquisas ao novo modelo de UC
#PARA que eu possa cadastrar dados de pesquisas relacionados às Áreas Protegidas.

Cenario: verificar aba pesquisa
Dado que tenha acessado SIGAM
E logado com usuario 'gtiAdm' senha 'a'
E acessado o módulo do SIPAI
Quando acessar o menu de Áreas Protegidas
E clicar em editar
Então sistema deve exibir aba Pesquisa

Cenario: verificar listagem de pesquisas
Quando clicar na aba de Pesquisa
Então deve apresentar tela de listagem de pesquisa com a opção de inclusão 
Mas se não tiver nenhum registro deve apresentar mensagem de 'Nenhuma Pesquisa Cadastrada'

Cenario: Verificar inclusão de uma nova pesquisa
Quando clicar em Incluir Nova Pesquisa
Então sistema deve exibir tela de cadastro uma nova pesquisa
E as demais abas de cadastro da pesquisa

