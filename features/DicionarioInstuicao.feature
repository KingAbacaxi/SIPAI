#language: pt
#utf-8

Funcionalidade: Verificar Dicionário de Instituição

#UserStory- 43457-UserStory-Criar dicionário Instituição

#Sprint 8
#SIPAI
#Eduardo Amorim

#Story

#COMO técnico QUERO que seja criado o dicionário da Instituição
#PARA que seja possível ter o controle das Instituições sempre quando precisar

Cenario: Verificar modulo inicial do dicionario Instituição
Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
Quando clicar entrar no modulo do SIPAI
E clicar no menu dicionario
E acessar o Dicionario Instituição
Então Sistema deve exibir interface do dicionario Instituição
E o botao de Adicionar
E o componente de Pesquisa
E o exportador para Excel
E as condicoes de pesquisa 'Título' 'Descrição' 'Ativo/Inativo'

Cenario: Verificar botao de Adicionar
Quando Clicar em Adicionar
Então Sistema deve exibir tela de inclusao para Instituição
E os campos 'Título' 'Ordem' 'Ativo' 'Descrição'
E os botões 'Atualizar' 'Retornar' 'Ajuda'
Mas não deve exibir o botão de 'Excluir'

Cenario: Verificar cadastro de um novo item do dicionario de Instituição
Quando Preecher os campos titulo 'ONG' ordem '1' Ativo 'sim' descricao 'Instituição ONG'
E clicar em Atualizar
Então sistema deve exibir a mensagem de 'Dados salvos com sucesso!'

Cenario: Verificar Grid do dicionario de Instituição
Quando incluir um novo item no dicionario de Instituição
E clicar em Finalizar
Então Sistema deve atualizar o Grid com as colunas 
E exibir altura da lista do grid com default de '300'

Cenario: Verificar pesquisa do dicionario de Instituição para pesquisa de descricao
Quando pesquisar pela descricao 'ONG'
Então sistema deve exibir no Grid somente os itens que tenham 'ONG' na descricao 

Cenario: Verificar pesquisa do dicionario de Instituição para pesquisa de titulo
Quando pesquisar pelo titulo 'ONG'
Então sistema deve exibir no Grid somente os itens que tenham 'ONG' no titulo

Cenario: Verificar pesquisa do dicionario de Instituição para pesquisa de itens ativos
Quando pesquisar por itens 'Ativo/Inativo' com parametro 'Ativo'
Então sistema deve exibir no Grid somente os itens com a flag Ativo selecionada 

Cenario: Verificar pesquisa do dicionario de Instituiçãoa para pesquisa de itens Inativos
Quando pesquisar por itens 'Ativo/Inativo' com parametro 'Falso'
Então sistema deve exibir no Grid somente os itens com a flag Ativo nao selecionada 

Cenario: Verificar tela de Edicao do itens do dicionario de Instituição
Quando pesquisar o item de titulo 'ONG'
E clicar em editar no grid 
Então sistema deve exibir tela de edicao com os campos preenchidos 
E exibir o botao 'Excluir'

Cenario: Verificar Alteracao de um item no dicionario de Instituição
Quando alterar a flag Ativo para Inativo
E clicar em finalizar 
Então sistema deve alterar os items e atualizar o Grid

Cenario: Verificar Excluir item no dicionario de Instituição com usuario gtiAdm
Quando clicar em excluir 
Então sistema deve excluir o item e atualizar o grid

Cenario: Verificar Excluir item no dicionario de Instituição com usuario nao adm
Quando logar com usuario 'naianal' senha 'test'
E acessar SIPAI
E clicar em dicionario
E clicar em Dicionario Instituição
E clicar em editar no grid
Então sistema nao deve exibir opcao de 'Excluir'