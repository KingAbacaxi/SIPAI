#language: pt
#utf-8
@dicBoiOutrosDados
Funcionalidade: Verificar Dicionário do BOI Outros Danos




#SIPAI
#Eduardo Amorim



Cenario: Verificar modulo inicial do dicionario BOI Outros Danos
Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
Quando clicar entrar no modulo do SIPAI
E clicar no menu dicionario
E acessar o Dicionario BOI Outros Danos
Então Sistema deve exibir interface do dicionario BOI Outros Danos
E o botao de Adicionar
E o componente de Pesquisa
E o exportador para Excel
E as condicoes de pesquisa 'Título' 'Descrição' 'Ativo/Inativo'

Cenario: Verificar botao de Adicionar
Quando Clicar em Adicionar no dicionario BOI Outros Danos
Então Sistema deve exibir tela de inclusao para BOI Outros Danos
E os campos 'Título' 'Ordem' 'Ativo' 'Descrição'
E os botões 'Finalizar' 'Atualizar' 'Retornar' 'Ajuda'
Mas não deve exibir o botão de 'Excluir'

Cenario: Verificar cadastro de um novo item do dicionario de BOI Outros Danos
Quando Preecher os campos de um novo BOI Outros Danos titulo 'Atingir vila ribeira' ordem '1' Ativo 'sim' descricao 'Fogo atingi casas ribeiras a uc' 
E clicar em Atualizar
Então sistema deve exibir a mensagem de 'Dados salvos com sucesso'

Cenario: Verificar Grid do dicionario de BOI Outros Danos
Quando incluir um novo item no dicionario de BOI Outros Danos
E clicar em Finalizar
Então Sistema deve atualizar o Grid com as colunas Editar 'Ativo' 'Título' 'Descrição'
E exibir altura da lista do grid com default de '300'

Cenario: Verificar pesquisa do dicionario de BOI Outros Danos para pesquisa de descricao
Quando pesquisar um BOI Outros Danos pela descricao 'casa'
Então sistema deve exibir no Grid somente os itens que tenham 'casa' na descricao 

Cenario: Verificar pesquisa do dicionario de BOI Outros Danos para pesquisa de titulo
Quando pesquisar um BOI Outros Danos pelo titulo 'vila'
Então sistema deve exibir no Grid somente os itens que tenham 'vila' no titulo

Cenario: Verificar pesquisa do dicionario de BOI Outros Danos para pesquisa de itens ativos
Quando pesquisar um BOI Outros Danos por itens 'Ativo/Inativo' com parametro 'É verdadeiro'
Então sistema deve exibir no Grid somente os itens com a flag Ativo selecionada 

Cenario: Verificar pesquisa do dicionario de BOI Outros Danos para pesquisa de itens Inativos
Quando pesquisar um BOI Outros Danos pela flag 'Ativo/Inativo' com parametro 'É falso'
Então sistema deve exibir no Grid somente os itens com a flag É falso nao selecionada 

Cenario: Verificar tela de Edicao do itens do dicionario de BOI Outros Danos
Quando pesquisar um BOI Outros Danos o item de titulo 'vila'
E clicar em editar no grid BOI Outros Danos
Então sistema deve exibir tela de edicao com os campos preenchidos 
E exibir o botao 'Excluir'

Cenario: Verificar Alteracao de um item no dicionario de BOI Outros Danos
Quando alterar a flag Ativo para Inativo de um BOI Outros Danos
E clicar em finalizar 
Então sistema deve alterar os items e atualizar o Grid

Cenario: Verificar Excluir item no dicionario de BOI Outros Danos com usuario gtiAdm
Quando clicar em excluir um um BOI Outros Danos
Então sistema deve excluir o item e atualizar o grid

Cenario: Verificar Excluir item no dicionario de BOI Outros Danos com usuario nao adm
Quando logar com usuario 'naianal' senha 'teste' dento do modulo do sipai
E clicar no menu dicionario
E acessar o Dicionario BOI Outros Danos
E editar no grid BOI Outros Danos
Então sistema nao deve exibir opcao de 'Excluir'