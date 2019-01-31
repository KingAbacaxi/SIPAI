#language: pt
#utf-8
@DicMetodoPesca
Funcionalidade: Verificar Dicionario Metodo de Pesca

#UserStory- 43103-UserStory-Criar dicionário de Método de Pesca

#Sprint 7
#SIPAI
#Eduardo Amorim

#Story

#COMO técnico QUERO que seja criado o dicionário de Método de Pesca 
#PARA que seja possível ter o controle dos Método de Pesca sempre quando precisar

Cenario: Verificar modulo inicial do dicionario Método de Pesca
Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
Quando clicar entrar no modulo do SIPAI
E clicar no menu dicionario
E acessar o Dicionario Método de Pesca
Então Sistema deve exibir interface do dicionario Método de Pesca
E o botao de Adicionar
E o componente de Pesquisa
E o exportador para Excel
E as condicoes de pesquisa 'Título' 'Descrição' 'Ativo/Inativo'

Cenario: Verificar botao de Adicionar
Quando Clicar em Adicionar
Então Sistema deve exibir tela de inclusao para Método de Pesca
E os campos 'Título' 'Ordem' 'Ativo' 'Descrição'
E os botões 'Atualizar' 'Retornar' 'Ajuda'
Mas não deve exibir o botão de 'Excluir'

Cenario: Verificar cadastro de um novo item do dicionario de Método de Pesca
Quando Preecher os campos titulo 'Recreativo' ordem '1' Ativo 'sim' descricao 'Pesca de forma recreativa'
E clicar em Atualizar
Então sistema deve exibir a mensagem de 'Dados salvos com sucesso!'

Cenario: Verificar Grid do dicionario de Método de Pesca
Quando incluir um novo item no dicionario de Método de Pesca
E clicar em Finalizar
Então Sistema deve atualizar o Grid com as colunas 
E exibir altura da lista do grid com default de '300'

Cenario: Verificar pesquisa do dicionario de Método de Pesca para pesquisa de descricao
Quando pesquisar pela descricao 'Pesca'
Então sistema deve exibir no Grid somente os itens que tenham 'Pesca' na descricao 

Cenario: Verificar pesquisa do dicionario de Método de Pesca para pesquisa de titulo
Quando pesquisar pelo titulo 'Recreativo'
Então sistema deve exibir no Grid somente os itens que tenham 'Recreativo' no titulo

Cenario: Verificar pesquisa do dicionario de Método de Pesca para pesquisa de itens ativos
Quando pesquisar por itens 'Ativo/Inativo' com parametro 'É verdadeiro'
Então sistema deve exibir no Grid somente os itens com a flag Ativo selecionada 

Cenario: Verificar pesquisa do dicionario de Método de Pesca para pesquisa de itens Inativos
Quando pesquisar itens 'Ativo/Inativo' com operador-parametro  'É falso'
Então sistema deve exibir no Grid somente os itens com a flag É falso nao selecionada 

Cenario: Verificar tela de Edicao do itens do dicionario de Método de Pesca
Quando clicar em editar no grid 
Então sistema deve exibir tela de edicao com os campos preenchidos 
E exibir o botao 'Excluir'

Cenario: Verificar Alteracao de um item no dicionario de Método de Pesca
Quando alterar a flag Ativo para Inativo
E clicar em finalizar 
Então sistema deve alterar os itens e atualizar o Grid

Cenario: Verificar Excluir item no dicionario de Método de Pesca com usuario gtiAdm
Quando clicar em excluir 
Então sistema deve excluir o item e atualizar o grid

Cenario: Verificar Excluir item no dicionario de Método de Pesca com usuario nao adm
Quando logar com usuario 'naianal' senha 'teste'
E clicar em editar no grid do Dicionario Método de Pesca no sipai
Então sistema nao deve exibir opcao de 'Excluir'