#language: pt
#utf-8
@dicOcorrenciaNaoAmbiental
Funcionalidade: Verificar Dicionário de Ocorrência Não Ambiental



#Sprint 11
#SIPAI
#Eduardo Amorim

#UserStory 45190-SIPAI-Criar Dicionário Tipo de Ocorrência Não Ambiental 

#Story

#COMO técnico QUERO que seja criado o dicionário de Ocorrência Não Ambiental
#PARA  que seja possível ter o controle da ocorrência não ambiental sempre quando precisar


Cenario: Verificar modulo inicial do dicionario Vistoria Ambiental Ocorrência Não Ambiental
Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
Quando clicar entrar no modulo do SIPAI
E clicar no menu dicionario
E acessar o Dicionario Vistoria Ambiental Ocorrência Não Ambiental
Então Sistema deve exibir interface do dicionario Vistoria Ambiental Ocorrência Não Ambiental
E o botao de Adicionar
E o componente de Pesquisa
E o exportador para Excel
E as condicoes de pesquisa 'Ativo/Inativo' 'Código' 'Tipo'

Cenario: Verificar botao de novo do Dicionario de Ocorrência Não Ambiental

Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
E clicar entrar no modulo do SIPAI
E clicar no menu dicionario
E acessar o Dicionario Vistoria Ambiental Ocorrência Não Ambiental
Quando Clicar em Adicionar no dicionario Vistoria Ambiental Ocorrência Não Ambiental
Então Sistema deve exibir tela de inclusao para Vistoria Ambiental Ocorrência Não Ambiental
E os campos Ordem - Ativo - Classe da Ocorrência Não Ambiental - Tipo de Ocorrência Não Ambiental - Descrição 
E os botões Finalizar  - Atualizar - Retornar - Ajuda
Mas não deve exibir o botão de Excluir

Cenario: Verificar cadastro de um novo item do dicionario de Vistoria Ambiental Ocorrência Não Ambiental

Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
E clicar entrar no modulo do SIPAI
E clicar no menu dicionario
E acessar o Dicionario Vistoria Ambiental Ocorrência Não Ambiental
Quando Clicar em Adicionar no dicionario Vistoria Ambiental Ocorrência Não Ambiental
E Preecher os campos de um novo Vistoria Ambiental Ocorrência Não Ambiental ordem '1' - Ativo 'sim' - Classe da Ocorrência Não Ambiental '' - Tipo de Ocorrência Não Ambiental '' - Descrição da Norma ''
E clicar em Atualizar dicionario de Vistoria Ambiental Ocorrência Não Ambiental
Então sistema deve exibir a mensagem de 'Dados salvos com sucesso' dicionario de Vistoria Ambiental Ocorrência Não Ambiental

Cenario: Verificar Grid do dicionario de Vistoria Ambiental Ocorrência Não Ambiental

Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
E clicar entrar no modulo do SIPAI
E clicar no menu dicionario
E acessar o Dicionario Vistoria Ambiental Ocorrência Não Ambiental
Então Sistema deve Apresentar o Grid com as colunas Editar - Ativo - Classe Ocorrência Não Ambiental - Tipo de Ocorrência Não Ambiental - Excluir
E exibir altura da lista do grid com default de '300'

Cenario: Verificar pesquisa do dicionario de Vistoria Ambiental Ocorrência Não Ambiental para Classe Ocorrência Não Ambiental

Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
E clicar entrar no modulo do SIPAI
E clicar no menu dicionario
E acessar o Dicionario Vistoria Ambiental Ocorrência Não Ambiental
Quando pesquisar um Vistoria Ambiental Ocorrência Não Ambiental pela Classe Ocorrência Não Ambiental ''
Então sistema deve exibir no Grid somente os itens que tenham '' na Classe Ocorrência Não Ambiental

Cenario: Verificar pesquisa do dicionario de Vistoria Ambiental Ocorrência Não Ambiental para pesquisa de Tipo de Ocorrência Não Ambiental

Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
E clicar entrar no modulo do SIPAI
E clicar no menu dicionario
E acessar o Dicionario Vistoria Ambiental Ocorrência Não Ambiental
Quando pesquisar um Vistoria Ambiental Ocorrência Não Ambiental pelo Tipo de Ocorrência Não Ambiental ''
Então sistema deve exibir no Grid somente os itens que tenham '' Tipo de Ocorrência Não Ambiental

Cenario: Verificar pesquisa do dicionario de Vistoria Ambiental Ocorrência Não Ambiental para pesquisa de itens ativos

Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
E clicar entrar no modulo do SIPAI
E clicar no menu dicionario
E acessar o Dicionario Vistoria Ambiental Ocorrência Não Ambiental
Quando pesquisar um Vistoria Ambiental Ocorrência Não Ambiental por itens 'Ativo/Inativo' com parametro 'É verdadeiro'
Então sistema deve exibir no Grid somente os itens com a flag Ativo selecionada 

Cenario: Verificar pesquisa do dicionario de Vistoria Ambiental Ocorrência Não Ambiental para pesquisa de itens Inativos

Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
E clicar entrar no modulo do SIPAI
E clicar no menu dicionario
E acessar o Dicionario Vistoria Ambiental Ocorrência Não Ambiental
Quando pesquisar um Vistoria Ambiental Ocorrência Não Ambiental pela flag 'Ativo/Inativo' com parametro 'É falso'
Então sistema deve exibir no Grid somente os itens com a flag É falso nao selecionada 

Cenario: Verificar tela de Edicao do itens do dicionario de Vistoria Ambiental Ocorrência Não Ambiental

Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
E clicar entrar no modulo do SIPAI
E clicar no menu dicionario
E acessar o Dicionario Vistoria Ambiental Ocorrência Não Ambiental
Quando pesquisar um Vistoria Ambiental Ocorrência Não Ambiental o item pelo Tipo de Ocorrência Não Ambiental ''
E clicar em editar no grid Vistoria Ambiental Ocorrência Não Ambiental
Então sistema deve exibir tela de edicao com os campos preenchidos 
E exibir o botao 'Excluir'

Cenario: Verificar Alteracao de um item no dicionario de Vistoria Ambiental Ocorrência Não Ambiental

Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
E clicar entrar no modulo do SIPAI
E clicar no menu dicionario
E acessar o Dicionario Vistoria Ambiental Ocorrência Não Ambiental
E pesquisar um Vistoria Ambiental Ocorrência Não Ambiental o item pelo Tipo de Ocorrência Não Ambiental ''
E clicar em editar no grid Vistoria Ambiental Ocorrência Não Ambiental
Quando alterar a flag Ativo para Inativo de um Vistoria Ambiental Ocorrência Não Ambiental
E clicar em finalizar  dicionario de Vistoria Ambiental Ocorrência Não Ambiental
Então sistema deve alterar os items e atualizar o Grid dicionario de Vistoria Ambiental Ocorrência Não Ambiental

Cenario: Verificar Excluir item no dicionario de Vistoria Ambiental Ocorrência Não Ambiental com usuario gtiAdm
Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
E clicar entrar no modulo do SIPAI
E clicar no menu dicionario
E acessar o Dicionario Vistoria Ambiental Ocorrência Não Ambiental
E pesquisar um Vistoria Ambiental Ocorrência Não Ambiental o item pelo Tipo de Ocorrência Não Ambiental ''
E clicar em editar no grid Vistoria Ambiental Ocorrência Não Ambiental
Quando clicar em excluir um um Vistoria Ambiental Ocorrência Não Ambiental
Então sistema deve excluir o item e atualizar o grid

Cenario: Verificar Excluir item no dicionario de Vistoria Ambiental Ocorrência Não Ambiental com usuario nao adm

Quando logar com usuario 'naianal' senha 'teste' dento do modulo do sipai
E clicar no menu dicionario
E acessar o Dicionario Vistoria Ambiental Ocorrência Não Ambiental
E editar no grid Vistoria Ambiental Ocorrência Não Ambiental
Então sistema nao deve exibir opcao de 'Excluir'