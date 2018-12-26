#language: pt
#utf-8

Funcionalidade: Verificar Dicionario Origem e Acao

#UserStory- 42767-UserStory-Criar dicionário Origem da Ação
#Sprint 7
#SIPAI
#Eduardo Amorim

#Story

#COMO técnico QUERO que seja criado o dicionário de Origem da Ação 
#PARA que seja possível ter o controle das Origens sempre quando precisar.

Cenario: Verificar modulo inicial do dicionario origem acao
Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
Quando clicar entrar no modulo do SIPAI
E clicar no menu dicionario
E acessar o Dicionario Origem Acao
Então Sistema deve exibir interface do dicionario origem acao 
E o botao de Adicionar
E o componente de Pesquisa
E o exportador para Excel
E as condicoes de pesquisa 'Título' 'Descrição' 'Ativo/Inativo'

Cenario: Verificar botao de Adicionar
Quando Clicar em Adicionar
Então Sistema deve exibir tela de inclusao para Origem da Acao
E os campos 'Título' 'Ordem' 'Ativa' 'Descrição'
E os botões 'Finalizar' 'Atualizar' 'Retornar' 'Ajuda'
Mas não deve exibir o botão de 'Excluir'

Cenario: Verificar cadastro de um novo item do dicionario de origem da acao
Quando Preecher os campos titulo 'Vistoria' ordem '1' Ativo 'sim' descricao 'Vitoria na área'
E clicar em Atualizar
Então sistema deve exibir a mensagem de 'Dados cadastros com sucesso'

Cenario: Verificar Grid do dicionario de Origem da Acao
Quando incluir um novo item no dicionario de origem da acao
E clicar em Finalizar
Então Sistema deve atualizar o Grid com as colunas Editar 'Ativo' 'Título' 'Descrição'
E exibir altura da lista do grid com default de '300'

Cenario: Verificar pesquisa do dicionario de origem da acao para pesquisa de descricao
Quando pesquisar pela descricao 'área'
Então sistema deve exibir no Grid somente os itens que tenham 'área' na descricao 

Cenario: Verificar pesquisa do dicionario de origem da acao para pesquisa de titulo
Quando pesquisar pelo titulo 'vist'
Então sistema deve exibir no Grid somente os itens que tenham 'vist' no titulo

Cenario: Verificar pesquisa do dicionario de origem da acao para pesquisa de itens ativos
Quando pesquisar por itens 'Ativo/Inativo' com parametro 'Ativo'
Então sistema deve exibir no Grid somente os itens com a flag Ativo selecionada 

Cenario: Verificar pesquisa do dicionario de origem da acao para pesquisa de itens Inativos
Quando pesquisar por itens 'Ativo/Inativo' com parametro 'Falso'
Então sistema deve exibir no Grid somente os itens com a flag Ativo nao selecionada 

Cenario: Verificar tela de Edicao do itens do dicionario de origem da acao
Quando pesquisar o item de titulo 'Vistoria'
E clicar em editar no grid 
Então sistema deve exibir tela de edicao com os campos preenchidos 
E exibir o botao 'Excluir'

Cenario: Verificar Alteracao de um item no dicionario de Origem da acao
Quando alterar a flag Ativo para Inativo
E clicar em finalizar 
Então sistema deve alterar os items e atualizar o Grid

Cenario: Verificar Excluir item no dicionario de Origem da acao com usuario gtiAdm
Quando clicar em excluir 
Então sistema deve excluir o item e atualizar o grid

Cenario: Verificar Excluir item no dicionario de Origem da acao com usuario nao adm
Quando logar com usuario 'naianal' senha 'test'
E acessar SIPAI
E clicar em dicionario
E clicar em Dicionario Origem da Acao
E clicar em editar no grid
Então sistema nao deve exibir opcao de 'Excluir'