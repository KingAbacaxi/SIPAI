#language: pt
#utf-8
@dicBoiProvavelCausa
Funcionalidade: Verificar Dicionário do BOI Provavel Causa




#SIPAI
#Eduardo Amorim



Cenario: Verificar modulo inicial do dicionario BOI Provavel Causa
Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
Quando clicar entrar no modulo do SIPAI
E clicar no menu dicionario
E acessar o Dicionario BOI Provavel Causa
Então Sistema deve exibir interface do dicionario BOI Provavel Causa
E o botao de Adicionar
E o componente de Pesquisa
E o exportador para Excel
E as condicoes de pesquisa 'Título' 'Descrição' 'Ativo/Inativo'

Cenario: Verificar botao de Adicionar
Quando Clicar em Adicionar no dicionario BOI Provavel Causa
Então Sistema deve exibir tela de inclusao para BOI Provavel Causa
E os campos 'Título' 'Ordem' 'Ativo' 'Descrição'
E os botões 'Finalizar' 'Atualizar' 'Retornar' 'Ajuda'
Mas não deve exibir o botão de 'Excluir'

Cenario: Verificar cadastro de um novo item do dicionario de BOI Provavel Causa
Quando Preecher os campos de um novo BOI Provavel Causa titulo 'Chuva de verão' ordem '1' Ativo 'sim' descricao 'Chuva com raios fortes' 
E clicar em Atualizar
Então sistema deve exibir a mensagem de 'Dados salvos com sucesso'

Cenario: Verificar Grid do dicionario de BOI Provavel Causa
Quando incluir um novo item no dicionario de BOI Provavel Causa
E clicar em Finalizar
Então Sistema deve atualizar o Grid com as colunas Editar 'Ativo' 'Título' 'Descrição'
E exibir altura da lista do grid com default de '300'

Cenario: Verificar pesquisa do dicionario de BOI Provavel Causa para pesquisa de descricao
Quando pesquisar um BOI Provavel Causa pela descricao 'forte'
Então sistema deve exibir no Grid somente os itens que tenham 'forte' na descricao 

Cenario: Verificar pesquisa do dicionario de BOI Provavel Causa para pesquisa de titulo
Quando pesquisar um BOI Provavel Causa pelo titulo 'verão'
Então sistema deve exibir no Grid somente os itens que tenham 'verão' no titulo

Cenario: Verificar pesquisa do dicionario de BOI Provavel Causa para pesquisa de itens ativos
Quando pesquisar um BOI Provavel Causa por itens 'Ativo/Inativo' com parametro 'É verdadeiro'
Então sistema deve exibir no Grid somente os itens com a flag Ativo selecionada 

Cenario: Verificar pesquisa do dicionario de BOI Provavel Causa para pesquisa de itens Inativos
Quando pesquisar um BOI Provavel Causa pela flag 'Ativo/Inativo' com parametro 'É falso'
Então sistema deve exibir no Grid somente os itens com a flag É falso nao selecionada 

Cenario: Verificar tela de Edicao do itens do dicionario de BOI Provavel Causa
Quando pesquisar um BOI Provavel Causa o item de titulo 'verão'
E clicar em editar no grid BOI Provavel Causa
Então sistema deve exibir tela de edicao com os campos preenchidos 
E exibir o botao 'Excluir'

Cenario: Verificar Alteracao de um item no dicionario de BOI Provavel Causa
Quando alterar a flag Ativo para Inativo de um BOI Provavel Causa
E clicar em finalizar 
Então sistema deve alterar os items e atualizar o Grid

Cenario: Verificar Excluir item no dicionario de BOI Provavel Causa com usuario gtiAdm
Quando clicar em excluir um um BOI Provavel Causa
Então sistema deve excluir o item e atualizar o grid

Cenario: Verificar Excluir item no dicionario de BOI Provavel Causa com usuario nao adm
Quando logar com usuario 'naianal' senha 'teste' dento do modulo do sipai
E clicar no menu dicionario
E acessar o Dicionario BOI Provavel Causa
E editar no grid BOI Provavel Causa
Então sistema nao deve exibir opcao de 'Excluir'