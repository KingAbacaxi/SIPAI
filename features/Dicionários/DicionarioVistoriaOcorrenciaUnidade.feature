#language: pt
#utf-8
@dicUnidade
Funcionalidade: Verificar Dicionário unidade

#UserStory- 44174- SIPAI-Criar Dicionário Unidade

#Sprint 9
#SIPAI
#Eduardo Amorim

#Story

#COMO técnico QUERO que seja criado o dicionário da Unidade  
#PARA que seja possível ter o controle da Unidade sempre quando precisar

Cenario: Verificar modulo inicial do dicionario Vistoria Ambiental Unidade
Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
Quando clicar entrar no modulo do SIPAI
E clicar no menu dicionario
E acessar o Dicionario Vistoria Ambiental Unidade
Então Sistema deve exibir interface do dicionario Vistoria Ambiental Unidade
E o botao de Adicionar
E o componente de Pesquisa
E o exportador para Excel
E as condicoes de pesquisa 'Título' 'Descrição' 'Ativo/Inativo'

Cenario: Verificar botao de Adicionar
Quando Clicar em Adicionar no dicionario Vistoria Ambiental Unidade
Então Sistema deve exibir tela de inclusao para Vistoria Ambiental Unidade
E os campos 'Título' 'Ordem' 'Ativo' 'Descrição'
E os botões 'Finalizar' 'Atualizar' 'Retornar' 'Ajuda'
Mas não deve exibir o botão de 'Excluir'

Cenario: Verificar cadastro de um novo item do dicionario de Vistoria Ambiental Unidade
Quando Preecher os campos de um novo Vistoria Ambiental Unidade titulo 'Fundação' ordem '1' Ativo 'sim' descricao 'Fundação Florestal' 
E clicar em Atualizar
Então sistema deve exibir a mensagem de 'Dados salvos com sucesso'

Cenario: Verificar Grid do dicionario de Vistoria Ambiental Unidade
Quando incluir um novo item no dicionario de Vistoria Ambiental Unidade
E clicar em Finalizar
Então Sistema deve atualizar o Grid com as colunas Editar 'Ativo' 'Título' 'Descrição'
E exibir altura da lista do grid com default de '300'

Cenario: Verificar pesquisa do dicionario de Vistoria Ambiental Unidade para pesquisa de descricao
Quando pesquisar um Vistoria Ambiental Unidade pela descricao 'Florestal'
Então sistema deve exibir no Grid somente os itens que tenham 'Florestal' na descricao 

Cenario: Verificar pesquisa do dicionario de Vistoria Ambiental Unidade para pesquisa de titulo
Quando pesquisar um Vistoria Ambiental Unidade pelo titulo 'Fundação'
Então sistema deve exibir no Grid somente os itens que tenham 'Fundação' no titulo

Cenario: Verificar pesquisa do dicionario de Vistoria Ambiental Unidade para pesquisa de itens ativos
Quando pesquisar um Vistoria Ambiental Unidade por itens 'Ativo/Inativo' com parametro 'É verdadeiro'
Então sistema deve exibir no Grid somente os itens com a flag Ativo selecionada 

Cenario: Verificar pesquisa do dicionario de Vistoria Ambiental Unidade para pesquisa de itens Inativos
Quando pesquisar um Vistoria Ambiental Unidade pela flag 'Ativo/Inativo' com parametro 'É falso'
Então sistema deve exibir no Grid somente os itens com a flag É falso nao selecionada 

Cenario: Verificar tela de Edicao do itens do dicionario de Vistoria Ambiental Unidade
Quando pesquisar um Vistoria Ambiental Unidade o item de titulo 'Fundação'
E clicar em editar no grid Vistoria Ambiental Unidade
Então sistema deve exibir tela de edicao com os campos preenchidos 
E exibir o botao 'Excluir'

Cenario: Verificar Alteracao de um item no dicionario de Vistoria Ambiental Unidade
Quando alterar a flag Ativo para Inativo de um Vistoria Ambiental Unidade
E clicar em finalizar 
Então sistema deve alterar os items e atualizar o Grid

Cenario: Verificar Excluir item no dicionario de Vistoria Ambiental Unidade com usuario gtiAdm
Quando clicar em excluir um um Vistoria Ambiental Unidade
Então sistema deve excluir o item e atualizar o grid

Cenario: Verificar Excluir item no dicionario de Vistoria Ambiental Unidade com usuario nao adm
Quando logar com usuario 'naianal' senha 'teste' dento do modulo do sipai
E clicar no menu dicionario
E acessar o Dicionario Vistoria Ambiental Unidade
E editar no grid Vistoria Ambiental Unidade
Então sistema nao deve exibir opcao de 'Excluir'