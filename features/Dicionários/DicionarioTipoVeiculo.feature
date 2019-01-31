#language: pt
#utf-8
@dicTipoVeiculo
Funcionalidade: Verificar Dicionario Tipo de Veiculo

#UserStory- 43102-UserStory-Criar dicionário de Tipo de Veículo

#Sprint 7
#SIPAI
#Eduardo Amorim

#Story

#COMO técnico QUERO que seja criado o dicionário de Tipo de Veículo 
#PARA que seja possível ter o controle dos Tipo de Veículo sempre quando precisar

Cenario: Verificar modulo inicial do dicionario Tipo de Veículo
Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
Quando clicar entrar no modulo do SIPAI
E clicar no menu dicionario
E acessar o Dicionario Tipo de Veículo
Então Sistema deve exibir interface do dicionario Tipo de Veículo
E o botao de Adicionar
E o componente de Pesquisa
E o exportador para Excel
E as condicoes de pesquisa 'Título' 'Descrição' 'Ativo/Inativo'

Cenario: Verificar botao de Adicionar
Quando Clicar em Adicionar no dicionario tipo de veiculo
Então Sistema deve exibir tela de inclusao para Tipo de Veículo
E os campos 'Título' 'Ordem' 'Ativo' 'Descrição'
E os botões 'Finalizar' 'Atualizar' 'Retornar' 'Ajuda'
Mas não deve exibir o botão de 'Excluir'

Cenario: Verificar cadastro de um novo item do dicionario de Tipo de Veículo
Quando Preecher os campos de um novo tipo de veiculo titulo 'Caminhonetes' ordem '1' Ativo 'sim' descricao 'Veiculo caminhonete' 
E clicar em Atualizar
Então sistema deve exibir a mensagem de 'Dados salvos com sucesso'

Cenario: Verificar Grid do dicionario de Tipo de Veículo
Quando incluir um novo item no dicionario de Tipo de Veículo
E clicar em Finalizar
Então Sistema deve atualizar o Grid com as colunas Editar 'Ativo' 'Título' 'Descrição'
E exibir altura da lista do grid com default de '300'

Cenario: Verificar pesquisa do dicionario de Tipo de Veículo para pesquisa de descricao
Quando pesquisar um tipo de veiculo pela descricao 'Veiculo'
Então sistema deve exibir no Grid somente os itens que tenham 'veiculo' na descricao 

Cenario: Verificar pesquisa do dicionario de Tipo de Veículo para pesquisa de titulo
Quando pesquisar um tipo de veiculo pelo titulo 'caminhonete'
Então sistema deve exibir no Grid somente os itens que tenham 'caminhonete' no titulo

Cenario: Verificar pesquisa do dicionario de Tipo de Veículo para pesquisa de itens ativos
Quando pesquisar um tipo de veiculo por itens 'Ativo/Inativo' com parametro 'É verdadeiro'
Então sistema deve exibir no Grid somente os itens com a flag Ativo selecionada 

Cenario: Verificar pesquisa do dicionario de Tipo de Veículo para pesquisa de itens Inativos
Quando pesquisar um tipo de veiculo pela flag 'Ativo/Inativo' com parametro 'É falso'
Então sistema deve exibir no Grid somente os itens com a flag É falso nao selecionada 

Cenario: Verificar tela de Edicao do itens do dicionario de Tipo de Veículo
Quando pesquisar um tipo de veiculo o item de titulo 'caminhonete'
E clicar em editar no grid Tipo de Veiculo
Então sistema deve exibir tela de edicao com os campos preenchidos 
E exibir o botao 'Excluir'

Cenario: Verificar Alteracao de um item no dicionario de Tipo de Veículo
Quando alterar a flag Ativo para Inativo de um tipo de veiculo
E clicar em finalizar 
Então sistema deve alterar os items e atualizar o Grid

Cenario: Verificar Excluir item no dicionario de Tipo de Veículo com usuario gtiAdm
Quando clicar em excluir um um tipo de veiculo
Então sistema deve excluir o item e atualizar o grid

Cenario: Verificar Excluir item no dicionario de Tipo de Veículo com usuario nao adm
Quando logar com usuario 'naianal' senha 'teste' dento do modulo do sipai
E clicar em dicionario
E clicar em Dicionario Tipo de Veículo
E clicar em editar no grid metodo de pesca
Então sistema nao deve exibir opcao de 'Excluir'