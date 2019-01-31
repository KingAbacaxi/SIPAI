#language: pt
#utf-8
@dicInstituicao
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
Quando Clicar em Adicionar no dicionario Instituição
Então Sistema deve exibir tela de inclusao para Instituição
E os campos 'Título' 'Ordem' 'Ativo' 'Descrição'
E os botões 'Finalizar' 'Atualizar' 'Retornar' 'Ajuda'
Mas não deve exibir o botão de 'Excluir'

Cenario: Verificar cadastro de um novo item do dicionario de Instituição
Quando Preecher os campos de um novo Instituição titulo 'Fundação Floresta' ordem '1' Ativo 'sim' descricao 'Fundação Floresta do estado de são paulo' 
E clicar em Atualizar
Então sistema deve exibir a mensagem de 'Dados salvos com sucesso'

Cenario: Verificar Grid do dicionario de Instituição
Quando incluir um novo item no dicionario de Instituição
E clicar em Finalizar
Então Sistema deve atualizar o Grid com as colunas Editar 'Ativo' 'Título' 'Descrição'
E exibir altura da lista do grid com default de '300'

Cenario: Verificar pesquisa do dicionario de Instituição para pesquisa de descricao
Quando pesquisar um Instituição pela descricao 'Florest'
Então sistema deve exibir no Grid somente os itens que tenham 'Florest' na descricao 

Cenario: Verificar pesquisa do dicionario de Instituição para pesquisa de titulo
Quando pesquisar um Instituição pelo titulo 'Funda'
Então sistema deve exibir no Grid somente os itens que tenham 'Funda' no titulo

Cenario: Verificar pesquisa do dicionario de Instituição para pesquisa de itens ativos
Quando pesquisar um Instituição por itens 'Ativo/Inativo' com parametro 'É verdadeiro'
Então sistema deve exibir no Grid somente os itens com a flag Ativo selecionada 

Cenario: Verificar pesquisa do dicionario de Instituição para pesquisa de itens Inativos
Quando pesquisar um Instituição pela flag 'Ativo/Inativo' com parametro 'É falso'
Então sistema deve exibir no Grid somente os itens com a flag É falso nao selecionada 

Cenario: Verificar tela de Edicao do itens do dicionario de Instituição
Quando pesquisar um Instituição o item de titulo 'Funda'
E clicar em editar no grid Instituição
Então sistema deve exibir tela de edicao com os campos preenchidos 
E exibir o botao 'Excluir'

Cenario: Verificar Alteracao de um item no dicionario de Instituição
Quando alterar a flag Ativo para Inativo de um Instituição
E clicar em finalizar 
Então sistema deve alterar os items e atualizar o Grid

Cenario: Verificar Excluir item no dicionario de Instituição com usuario gtiAdm
Quando clicar em excluir um Instituição
Então sistema deve excluir o item e atualizar o grid

Cenario: Verificar Excluir item no dicionario de Instituição com usuario nao adm
Quando logar com usuario 'naianal' senha 'teste' dento do modulo do sipai
E clicar no menu dicionario
E acessar o Dicionario Instituição
E editar no grid Instituição
Então sistema nao deve exibir opcao de 'Excluir'