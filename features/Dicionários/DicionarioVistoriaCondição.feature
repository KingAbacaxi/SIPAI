#language: pt
#utf-8
@dicVistoriaCondicao
Funcionalidade: Verificar Dicionário Condição 

#UserStory- 44484-SIPAI-Criar Dicionário de Condição

#Sprint 10
#SIPAI
#Eduardo Amorim

#Story

#COMO técnico QUERO que seja criado o dicionário de Condição 
#PARA que seja possível ter o controle da Condição sempre quando precisar

Cenario: Verificar modulo inicial do dicionario Vistoria Ambiental Condição
Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
Quando clicar entrar no modulo do SIPAI
E clicar no menu dicionario
E acessar o Dicionario Vistoria Ambiental Condição
Então Sistema deve exibir interface do dicionario Vistoria Ambiental Condição
E o botao de Adicionar
E o componente de Pesquisa
E o exportador para Excel
E as condicoes de pesquisa 'Título' 'Descrição' 'Ativo/Inativo'

Cenario: Verificar botao de Adicionar
Quando Clicar em Adicionar no dicionario Vistoria Ambiental Condição
Então Sistema deve exibir tela de inclusao para Vistoria Ambiental Condição
E os campos 'Título' 'Ordem' 'Ativo' 'Descrição'
E os botões 'Finalizar' 'Atualizar' 'Retornar' 'Ajuda'
Mas não deve exibir o botão de 'Excluir'

Cenario: Verificar cadastro de um novo item do dicionario de Vistoria Ambiental Condição
Quando Preecher os campos de um novo Vistoria Ambiental Condição titulo 'Sem reparos' ordem '1' Ativo 'sim' descricao 'Área sem reparos' 
E clicar em Atualizar
Então sistema deve exibir a mensagem de 'Dados salvos com sucesso'

Cenario: Verificar Grid do dicionario de Vistoria Ambiental Condição
Quando incluir um novo item no dicionario de Vistoria Ambiental Condição
E clicar em Finalizar
Então Sistema deve atualizar o Grid com as colunas Editar 'Ativo' 'Título' 'Descrição'
E exibir altura da lista do grid com default de '300'

Cenario: Verificar pesquisa do dicionario de Vistoria Ambiental Condição para pesquisa de descricao
Quando pesquisar um Vistoria Ambiental Condição pela descricao 'Sem reparos'
Então sistema deve exibir no Grid somente os itens que tenham 'Sem reparos' na descricao 

Cenario: Verificar pesquisa do dicionario de Vistoria Ambiental Condição para pesquisa de titulo
Quando pesquisar um Vistoria Ambiental Condição pelo titulo 'Sem reparos'
Então sistema deve exibir no Grid somente os itens que tenham 'Sem reparos' no titulo

Cenario: Verificar pesquisa do dicionario de Vistoria Ambiental Condição para pesquisa de itens ativos
Quando pesquisar um Vistoria Ambiental Condição por itens 'Ativo/Inativo' com parametro 'É verdadeiro'
Então sistema deve exibir no Grid somente os itens com a flag Ativo selecionada 

Cenario: Verificar pesquisa do dicionario de Vistoria Ambiental Condição para pesquisa de itens Inativos
Quando pesquisar um Vistoria Ambiental Condição pela flag 'Ativo/Inativo' com parametro 'É falso'
Então sistema deve exibir no Grid somente os itens com a flag É falso nao selecionada 

Cenario: Verificar tela de Edicao do itens do dicionario de Vistoria Ambiental Condição
Quando pesquisar um Vistoria Ambiental Condição o item de titulo 'Sem reparos'
E clicar em editar no grid Vistoria Ambiental Condição
Então sistema deve exibir tela de edicao com os campos preenchidos 
E exibir o botao 'Excluir'

Cenario: Verificar Alteracao de um item no dicionario de Vistoria Ambiental Condição
Quando alterar a flag Ativo para Inativo de um Vistoria Ambiental Condição
E clicar em finalizar 
Então sistema deve alterar os items e atualizar o Grid

Cenario: Verificar Excluir item no dicionario de Vistoria Ambiental Condição com usuario gtiAdm
Quando clicar em excluir um um Vistoria Ambiental Condição
Então sistema deve excluir o item e atualizar o grid

Cenario: Verificar Excluir item no dicionario de Vistoria Ambiental Condição com usuario nao adm
Quando logar com usuario 'naianal' senha 'teste' dento do modulo do sipai
E clicar no menu dicionario
E acessar o Dicionario Vistoria Ambiental Condição
E editar no grid Vistoria Ambiental Condição
Então sistema nao deve exibir opcao de 'Excluir'