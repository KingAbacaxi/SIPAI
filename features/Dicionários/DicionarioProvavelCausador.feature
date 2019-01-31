#language: pt
#utf-8
@dicBoiProvavelCausador
Funcionalidade: Verificar Dicionário do BOI Provavel Causador




#SIPAI
#Eduardo Amorim



Cenario: Verificar modulo inicial do dicionario BOI Provavel Causador
Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
Quando clicar entrar no modulo do SIPAI
E clicar no menu dicionario
E acessar o Dicionario BOI Provavel Causador
Então Sistema deve exibir interface do dicionario BOI Provavel Causador
E o botao de Adicionar
E o componente de Pesquisa
E o exportador para Excel
E as condicoes de pesquisa 'Título' 'Descrição' 'Ativo/Inativo'

Cenario: Verificar botao de Adicionar
Quando Clicar em Adicionar no dicionario BOI Provavel Causador
Então Sistema deve exibir tela de inclusao para BOI Provavel Causador
E os campos 'Título' 'Ordem' 'Ativo' 'Descrição'
E os botões 'Finalizar' 'Atualizar' 'Retornar' 'Ajuda'
Mas não deve exibir o botão de 'Excluir'

Cenario: Verificar cadastro de um novo item do dicionario de BOI Provavel Causador
Quando Preecher os campos de um novo BOI Provavel Causador titulo 'Indio' ordem '1' Ativo 'sim' descricao 'Indio queimando arvores' 
E clicar em Atualizar
Então sistema deve exibir a mensagem de 'Dados salvos com sucesso'

Cenario: Verificar Grid do dicionario de BOI Provavel Causador
Quando incluir um novo item no dicionario de BOI Provavel Causador
E clicar em Finalizar
Então Sistema deve atualizar o Grid com as colunas Editar 'Ativo' 'Título' 'Descrição'
E exibir altura da lista do grid com default de '300'

Cenario: Verificar pesquisa do dicionario de BOI Provavel Causador para pesquisa de descricao
Quando pesquisar um BOI Provavel Causador pela descricao 'queimando'
Então sistema deve exibir no Grid somente os itens que tenham 'queimando' na descricao 

Cenario: Verificar pesquisa do dicionario de BOI Provavel Causador para pesquisa de titulo
Quando pesquisar um BOI Provavel Causador pelo titulo 'indio'
Então sistema deve exibir no Grid somente os itens que tenham 'indio' no titulo

Cenario: Verificar pesquisa do dicionario de BOI Provavel Causador para pesquisa de itens ativos
Quando pesquisar um BOI Provavel Causador por itens 'Ativo/Inativo' com parametro 'É verdadeiro'
Então sistema deve exibir no Grid somente os itens com a flag Ativo selecionada 

Cenario: Verificar pesquisa do dicionario de BOI Provavel Causador para pesquisa de itens Inativos
Quando pesquisar um BOI Provavel Causador pela flag 'Ativo/Inativo' com parametro 'É falso'
Então sistema deve exibir no Grid somente os itens com a flag É falso nao selecionada 

Cenario: Verificar tela de Edicao do itens do dicionario de BOI Provavel Causador
Quando pesquisar um BOI Provavel Causador o item de titulo 'indio'
E clicar em editar no grid BOI Provavel Causador
Então sistema deve exibir tela de edicao com os campos preenchidos 
E exibir o botao 'Excluir'

Cenario: Verificar Alteracao de um item no dicionario de BOI Provavel Causador
Quando alterar a flag Ativo para Inativo de um BOI Provavel Causador
E clicar em finalizar 
Então sistema deve alterar os items e atualizar o Grid

Cenario: Verificar Excluir item no dicionario de BOI Provavel Causador com usuario gtiAdm
Quando clicar em excluir um um BOI Provavel Causador
Então sistema deve excluir o item e atualizar o grid

Cenario: Verificar Excluir item no dicionario de BOI Provavel Causador com usuario nao adm
Quando logar com usuario 'naianal' senha 'teste' dento do modulo do sipai
E clicar no menu dicionario
E acessar o Dicionario BOI Provavel Causador
E editar no grid BOI Provavel Causador
Então sistema nao deve exibir opcao de 'Excluir'