#language: pt
#utf-8
@dicTipoAnexo
Funcionalidade: Verificar Dicionário de Tipo de Anexo

#UserStory- 43773-UserStory-Criar dicionário de Tipo de Anexo

#Sprint 8
#SIPAI
#Eduardo Amorim

#Story

#COMO técnico QUERO que seja criado o dicionário de Tipo de Anexo 
#PARA que seja possível ter o controle dos Tipos de Anexo sempre quando precisar

Cenario: Verificar modulo inicial do dicionario Tipo de Anexo
Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
Quando clicar entrar no modulo do SIPAI
E clicar no menu dicionario
E acessar o Dicionario Tipo de Anexo
Então Sistema deve exibir interface do dicionario Tipo de Anexo
E o botao de Adicionar
E o componente de Pesquisa
E o exportador para Excel
E as condicoes de pesquisa 'Título' 'Descrição' 'Ativo/Inativo'

Cenario: Verificar botao de Adicionar
Quando Clicar em Adicionar no dicionario Tipo de Anexo
Então Sistema deve exibir tela de inclusao para Tipo de Anexo
E os campos 'Título' 'Ordem' 'Ativo' 'Descrição'
E os botões 'Finalizar' 'Atualizar' 'Retornar' 'Ajuda'
Mas não deve exibir o botão de 'Excluir'

Cenario: Verificar cadastro de um novo item do dicionario de Tipo de Anexo
Quando Preecher os campos de um novo Tipo de Anexo titulo 'Documentos institucionais' ordem '1' Ativo 'sim' descricao 'Documentos institucionais' 
E clicar em Atualizar
Então sistema deve exibir a mensagem de 'Dados salvos com sucesso'

Cenario: Verificar Grid do dicionario de Tipo de Anexo
Quando incluir um novo item no dicionario de Tipo de Anexo
E clicar em Finalizar
Então Sistema deve atualizar o Grid com as colunas Editar 'Ativo' 'Título' 'Descrição'
E exibir altura da lista do grid com default de '300'

Cenario: Verificar pesquisa do dicionario de Tipo de Anexo para pesquisa de descricao
Quando pesquisar um Tipo de Anexo pela descricao 'Documentos'
Então sistema deve exibir no Grid somente os itens que tenham 'Documentos' na descricao 

Cenario: Verificar pesquisa do dicionario de Tipo de Anexo para pesquisa de titulo
Quando pesquisar um Tipo de Anexo pelo titulo 'Instituci'
Então sistema deve exibir no Grid somente os itens que tenham 'instituci' no titulo

Cenario: Verificar pesquisa do dicionario de Tipo de Anexo para pesquisa de itens ativos
Quando pesquisar um Tipo de Anexo por itens 'Ativo/Inativo' com parametro 'É verdadeiro'
Então sistema deve exibir no Grid somente os itens com a flag Ativo selecionada 

Cenario: Verificar pesquisa do dicionario de Tipo de Anexo para pesquisa de itens Inativos
Quando pesquisar um Tipo de Anexo pela flag 'Ativo/Inativo' com parametro 'É falso'
Então sistema deve exibir no Grid somente os itens com a flag É falso nao selecionada 

Cenario: Verificar tela de Edicao do itens do dicionario de Tipo de Anexo
Quando pesquisar um Tipo de Anexo o item de titulo 'Documentos'
E clicar em editar no grid Tipo de Anexo
Então sistema deve exibir tela de edicao com os campos preenchidos 
E exibir o botao 'Excluir'

Cenario: Verificar Alteracao de um item no dicionario de Tipo de Anexo
Quando alterar a flag Ativo para Inativo de um Tipo de Anexo
E clicar em finalizar 
Então sistema deve alterar os items e atualizar o Grid

Cenario: Verificar Excluir item no dicionario de Tipo de Anexo com usuario gtiAdm
Quando clicar em excluir um um Tipo de Anexo
Então sistema deve excluir o item e atualizar o grid

Cenario: Verificar Excluir item no dicionario de Tipo de Anexo com usuario nao adm
Quando logar com usuario 'naianal' senha 'teste' dento do modulo do sipai
E clicar no menu dicionario
E acessar o Dicionario Tipo de Anexo
E editar no grid Tipo de Anexo
Então sistema nao deve exibir opcao de 'Excluir'