#language: pt
#utf-8
@dicOrigemAcao
Funcionalidade: Verificar Dicionario Origem e Acao

#UserStory- 42767-UserStory-Criar dicionário Origem da Ação
#Sprint 7
#SIPAI
#Eduardo Amorim

#Story

#COMO técnico QUERO que seja criado o dicionário de Origem da Ação 
#PARA que seja possível ter o controle das Origens sempre quando precisar.

Cenario: Verificar modulo inicial do dicionario Origem e Acao
Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
Quando clicar entrar no modulo do SIPAI
E clicar no menu dicionario
E acessar o Dicionario Origem e Acao
Então Sistema deve exibir interface do dicionario Origem e Acao
E o botao de Adicionar
E o componente de Pesquisa
E o exportador para Excel
E as condicoes de pesquisa 'Título' 'Descrição' 'Ativo/Inativo'

Cenario: Verificar botao de Adicionar
Quando Clicar em Adicionar no dicionario Origem e Acao
Então Sistema deve exibir tela de inclusao para Origem e Acao
E os campos 'Título' 'Ordem' 'Ativo' 'Descrição'
E os botões 'Finalizar' 'Atualizar' 'Retornar' 'Ajuda'
Mas não deve exibir o botão de 'Excluir'

Cenario: Verificar cadastro de um novo item do dicionario de Origem e Acao
Quando Preecher os campos de um novo Origem e Acao titulo 'Denuncia automatizada' ordem '1' Ativo 'sim' descricao 'automação' 
E clicar em Atualizar
Então sistema deve exibir a mensagem de 'Dados salvos com sucesso'

Cenario: Verificar Grid do dicionario de Origem e Acao
Quando incluir um novo item no dicionario de Origem e Acao
E clicar em Finalizar
Então Sistema deve atualizar o Grid com as colunas Editar 'Ativo' 'Título' 'Descrição'
E exibir altura da lista do grid com default de '300'

Cenario: Verificar pesquisa do dicionario de Origem e Acao para pesquisa de descricao
Quando pesquisar um Origem e Acao pela descricao 'Automação'
Então sistema deve exibir no Grid somente os itens que tenham 'Automação' na descricao 

Cenario: Verificar pesquisa do dicionario de Origem e Acao para pesquisa de titulo
Quando pesquisar um Origem e Acaoo pelo titulo 'Denun'
Então sistema deve exibir no Grid somente os itens que tenham 'denun' no titulo

Cenario: Verificar pesquisa do dicionario de Origem e Acao para pesquisa de itens ativos
Quando pesquisar um Origem e Acao por itens 'Ativo/Inativo' com parametro 'É verdadeiro'
Então sistema deve exibir no Grid somente os itens com a flag Ativo selecionada 

Cenario: Verificar pesquisa do dicionario de Origem e Acao para pesquisa de itens Inativos
Quando pesquisar um Origem e Acao pela flag 'Ativo/Inativo' com parametro 'É falso'
Então sistema deve exibir no Grid somente os itens com a flag É falso nao selecionada 

Cenario: Verificar tela de Edicao do itens do dicionario de Origem e Acao
Quando pesquisar um Origem e Acao o item de titulo 'Automa'
E clicar em editar no grid Origem e Acao
Então sistema deve exibir tela de edicao com os campos preenchidos 
E exibir o botao 'Excluir'

Cenario: Verificar Alteracao de um item no dicionario de Origem e Acao
Quando alterar a flag Ativo para Inativo de um Origem e Acao
E clicar em finalizar 
Então sistema deve alterar os items e atualizar o Grid

Cenario: Verificar Excluir item no dicionario de Origem e Acao com usuario gtiAdm
Quando clicar em excluir um Origem e Acao
Então sistema deve excluir o item e atualizar o grid

Cenario: Verificar Excluir item no dicionario de Origem e Acaoo com usuario nao adm
Quando logar com usuario 'naianal' senha 'teste' dento do modulo do sipai
E clicar no menu dicionario
E acessar o Dicionario Origem e Acao
E editar no grid Origem e Acao
Então sistema nao deve exibir opcao de 'Excluir'