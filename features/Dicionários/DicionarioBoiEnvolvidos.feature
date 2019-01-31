#language: pt
#utf-8
@dicBoiEnvolvidos
Funcionalidade: Verificar Dicionário do BOI Envolvidos




#SIPAI
#Eduardo Amorim



Cenario: Verificar modulo inicial do dicionario BOI Envolvidos
Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
Quando clicar entrar no modulo do SIPAI
E clicar no menu dicionario
E acessar o Dicionario BOI Envolvidos
Então Sistema deve exibir interface do dicionario BOI Envolvidos
E o botao de Adicionar
E o componente de Pesquisa
E o exportador para Excel
E as condicoes de pesquisa 'Título' 'Descrição' 'Ativo/Inativo'

Cenario: Verificar botao de Adicionar
Quando Clicar em Adicionar no dicionario BOI Envolvidos
Então Sistema deve exibir tela de inclusao para BOI Envolvidos
E os campos 'Título' 'Ordem' 'Ativo' 'Descrição'
E os botões 'Finalizar' 'Atualizar' 'Retornar' 'Ajuda'
Mas não deve exibir o botão de 'Excluir'

Cenario: Verificar cadastro de um novo item do dicionario de BOI Envolvidos
Quando Preecher os campos de um novo BOI Envolvidos titulo 'Policia droniaria' ordem '1' Ativo 'sim' descricao 'Policia que usa drones' 
E clicar em Atualizar
Então sistema deve exibir a mensagem de 'Dados salvos com sucesso'

Cenario: Verificar Grid do dicionario de BOI Envolvidos
Quando incluir um novo item no dicionario de BOI Envolvidos
E clicar em Finalizar
Então Sistema deve atualizar o Grid com as colunas Editar 'Ativo' 'Título' 'Descrição'
E exibir altura da lista do grid com default de '300'

Cenario: Verificar pesquisa do dicionario de BOI Envolvidos para pesquisa de descricao
Quando pesquisar um BOI Envolvidos pela descricao 'drone'
Então sistema deve exibir no Grid somente os itens que tenham 'drone' na descricao 

Cenario: Verificar pesquisa do dicionario de BOI Envolvidos para pesquisa de titulo
Quando pesquisar um BOI Envolvidos pelo titulo 'policia'
Então sistema deve exibir no Grid somente os itens que tenham 'policia' no titulo

Cenario: Verificar pesquisa do dicionario de BOI Envolvidos para pesquisa de itens ativos
Quando pesquisar um BOI Envolvidos por itens 'Ativo/Inativo' com parametro 'É verdadeiro'
Então sistema deve exibir no Grid somente os itens com a flag Ativo selecionada 

Cenario: Verificar pesquisa do dicionario de BOI Envolvidos para pesquisa de itens Inativos
Quando pesquisar um BOI Envolvidos pela flag 'Ativo/Inativo' com parametro 'É falso'
Então sistema deve exibir no Grid somente os itens com a flag É falso nao selecionada 

Cenario: Verificar tela de Edicao do itens do dicionario de BOI Envolvidos
Quando pesquisar um BOI Envolvidos o item de titulo 'policia'
E clicar em editar no grid BOI Envolvidos
Então sistema deve exibir tela de edicao com os campos preenchidos 
E exibir o botao 'Excluir'

Cenario: Verificar Alteracao de um item no dicionario de BOI Envolvidos
Quando alterar a flag Ativo para Inativo de um BOI Envolvidos
E clicar em finalizar 
Então sistema deve alterar os items e atualizar o Grid

Cenario: Verificar Excluir item no dicionario de BOI Envolvidos com usuario gtiAdm
Quando clicar em excluir um um BOI Envolvidos
Então sistema deve excluir o item e atualizar o grid

Cenario: Verificar Excluir item no dicionario de BOI Envolvidos com usuario nao adm
Quando logar com usuario 'naianal' senha 'teste' dento do modulo do sipai
E clicar no menu dicionario
E acessar o Dicionario BOI Envolvidos
E editar no grid BOI Envolvidos
Então sistema nao deve exibir opcao de 'Excluir'