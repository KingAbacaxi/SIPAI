#language: pt
#utf-8
@dicBoiCaracArea
Funcionalidade: Verificar Dicionário do BOI Caracteristica da Área




#SIPAI
#Eduardo Amorim



Cenario: Verificar modulo inicial do dicionario BOI Caracteristica da Área
Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
Quando clicar entrar no modulo do SIPAI
E clicar no menu dicionario
E acessar o Dicionario BOI Caracteristica da Área
Então Sistema deve exibir interface do dicionario BOI Caracteristica da Área
E o botao de Adicionar
E o componente de Pesquisa
E o exportador para Excel
E as condicoes de pesquisa 'Título' 'Descrição' 'Ativo/Inativo'

Cenario: Verificar botao de Adicionar
Quando Clicar em Adicionar no dicionario BOI Caracteristica da Área
Então Sistema deve exibir tela de inclusao para BOI Caracteristica da Área
E os campos 'Título' 'Ordem' 'Ativo' 'Descrição'
E os botões 'Finalizar' 'Atualizar' 'Retornar' 'Ajuda'
Mas não deve exibir o botão de 'Excluir'

Cenario: Verificar cadastro de um novo item do dicionario de BOI Caracteristica da Área
Quando Preecher os campos de um novo BOI Caracteristica da Área titulo 'Área de Alagamento' ordem '1' Ativo 'sim' descricao 'Alagamento causado por chuvas' 
E clicar em Atualizar
Então sistema deve exibir a mensagem de 'Dados salvos com sucesso'

Cenario: Verificar Grid do dicionario de BOI Caracteristica da Área
Quando incluir um novo item no dicionario de BOI Caracteristica da Área
E clicar em Finalizar
Então Sistema deve atualizar o Grid com as colunas Editar 'Ativo' 'Título' 'Descrição'
E exibir altura da lista do grid com default de '300'

Cenario: Verificar pesquisa do dicionario de BOI Caracteristica da Área para pesquisa de descricao
Quando pesquisar um BOI Caracteristica da Área pela descricao 'chuva'
Então sistema deve exibir no Grid somente os itens que tenham 'chuva' na descricao 

Cenario: Verificar pesquisa do dicionario de BOI Caracteristica da Área para pesquisa de titulo
Quando pesquisar um BOI Caracteristica da Área pelo titulo 'Área'
Então sistema deve exibir no Grid somente os itens que tenham 'Área' no titulo

Cenario: Verificar pesquisa do dicionario de BOI Caracteristica da Área para pesquisa de itens ativos
Quando pesquisar um BOI Caracteristica da Área por itens 'Ativo/Inativo' com parametro 'É verdadeiro'
Então sistema deve exibir no Grid somente os itens com a flag Ativo selecionada 

Cenario: Verificar pesquisa do dicionario de BOI Caracteristica da Área para pesquisa de itens Inativos
Quando pesquisar um BOI Caracteristica da Área pela flag 'Ativo/Inativo' com parametro 'É falso'
Então sistema deve exibir no Grid somente os itens com a flag É falso nao selecionada 

Cenario: Verificar tela de Edicao do itens do dicionario de BOI Caracteristica da Área
Quando pesquisar um BOI Caracteristica da Área o item de titulo 'Alagamento'
E clicar em editar no grid BOI Caracteristica da Área
Então sistema deve exibir tela de edicao com os campos preenchidos 
E exibir o botao 'Excluir'

Cenario: Verificar Alteracao de um item no dicionario de BOI Caracteristica da Área
Quando alterar a flag Ativo para Inativo de um BOI Caracteristica da Área
E clicar em finalizar 
Então sistema deve alterar os items e atualizar o Grid

Cenario: Verificar Excluir item no dicionario de BOI Caracteristica da Área com usuario gtiAdm
Quando clicar em excluir um um BOI Caracteristica da Área
Então sistema deve excluir o item e atualizar o grid

Cenario: Verificar Excluir item no dicionario de BOI Caracteristica da Área com usuario nao adm
Quando logar com usuario 'naianal' senha 'teste' dento do modulo do sipai
E clicar no menu dicionario
E acessar o Dicionario BOI Caracteristica da Área
E editar no grid BOI Caracteristica da Área
Então sistema nao deve exibir opcao de 'Excluir'