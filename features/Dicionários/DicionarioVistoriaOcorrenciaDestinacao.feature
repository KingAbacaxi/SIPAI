#language: pt
#utf-8
@dicDestinacao
Funcionalidade: Verificar Dicionário Destinação

#UserStory- 44175-UserStory-Criar Dicionário Destinação

#Sprint 9
#SIPAI
#Eduardo Amorim

#Story

#COMO técnico QUERO que seja criado o dicionário de Destinação 
#PARA que seja possível ter o controle da Destinação sempre quando precisar

Cenario: Verificar modulo inicial do dicionario Vistoria Ambiental Destinação
Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
Quando clicar entrar no modulo do SIPAI
E clicar no menu dicionario
E acessar o Dicionario Vistoria Ambiental Destinação
Então Sistema deve exibir interface do dicionario Vistoria Ambiental Destinaçãodor
E o botao de Adicionar
E o componente de Pesquisa
E o exportador para Excel
E as condicoes de pesquisa 'Título' 'Descrição' 'Ativo/Inativo'

Cenario: Verificar botao de Adicionar
Quando Clicar em Adicionar no dicionario Vistoria Ambiental Destinação
Então Sistema deve exibir tela de inclusao para Vistoria Ambiental Destinação
E os campos 'Título' 'Ordem' 'Ativo' 'Descrição'
E os botões 'Finalizar' 'Atualizar' 'Retornar' 'Ajuda'
Mas não deve exibir o botão de 'Excluir'

Cenario: Verificar cadastro de um novo item do dicionario de Vistoria Ambiental Destinação
Quando Preecher os campos de um novo Vistoria Ambiental Destinação titulo 'Animal' ordem '1' Ativo 'sim' descricao 'Indio queimando arvores' 
E clicar em Atualizar
Então sistema deve exibir a mensagem de 'Dados salvos com sucesso'

Cenario: Verificar Grid do dicionario de Vistoria Ambiental Destinação
Quando incluir um novo item no dicionario de Vistoria Ambiental Destinação
E clicar em Finalizar
Então Sistema deve atualizar o Grid com as colunas Editar 'Ativo' 'Título' 'Descrição'
E exibir altura da lista do grid com default de '300'

Cenario: Verificar pesquisa do dicionario de Vistoria Ambiental Destinação para pesquisa de descricao
Quando pesquisar um Vistoria Ambiental Destinação pela descricao 'queimando'
Então sistema deve exibir no Grid somente os itens que tenham 'queimando' na descricao 

Cenario: Verificar pesquisa do dicionario de Vistoria Ambiental Destinação para pesquisa de titulo
Quando pesquisar um Vistoria Ambiental Destinação pelo titulo 'animal'
Então sistema deve exibir no Grid somente os itens que tenham 'animal' no titulo

Cenario: Verificar pesquisa do dicionario de Vistoria Ambiental Destinação para pesquisa de itens ativos
Quando pesquisar um Vistoria Ambiental Destinação por itens 'Ativo/Inativo' com parametro 'É verdadeiro'
Então sistema deve exibir no Grid somente os itens com a flag Ativo selecionada 

Cenario: Verificar pesquisa do dicionario de Vistoria Ambiental Destinação para pesquisa de itens Inativos
Quando pesquisar um Vistoria Ambiental Destinação pela flag 'Ativo/Inativo' com parametro 'É falso'
Então sistema deve exibir no Grid somente os itens com a flag É falso nao selecionada 

Cenario: Verificar tela de Edicao do itens do dicionario de Vistoria Ambiental Destinação
Quando pesquisar um Vistoria Ambiental Destinação o item de titulo 'animal'
E clicar em editar no grid Vistoria Ambiental Destinação
Então sistema deve exibir tela de edicao com os campos preenchidos 
E exibir o botao 'Excluir'

Cenario: Verificar Alteracao de um item no dicionario de Vistoria Ambiental Destinação
Quando alterar a flag Ativo para Inativo de um Vistoria Ambiental Destinação
E clicar em finalizar 
Então sistema deve alterar os items e atualizar o Grid

Cenario: Verificar Excluir item no dicionario de Vistoria Ambiental Destinação com usuario gtiAdm
Quando clicar em excluir um um Vistoria Ambiental Destinação
Então sistema deve excluir o item e atualizar o grid

Cenario: Verificar Excluir item no dicionario de Vistoria Ambiental Destinação com usuario nao adm
Quando logar com usuario 'naianal' senha 'teste' dento do modulo do sipai
E clicar no menu dicionario
E acessar o Dicionario Vistoria Ambiental Destinação
E editar no grid Vistoria Ambiental Destinação
Então sistema nao deve exibir opcao de 'Excluir'