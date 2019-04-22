#language: pt
#utf-8

@dicEstagioSucessional

Funcionalidade: Verificar Dicionário de Estágio Sucessional

#Sprint 11
#SIPAI
#Renan Sano Ferrari

#UserStory 44054 - Criar Dicionário Estágio Sucessional

#Story

#COMO técnico
#QUERO que seja criado o dicionário de Estágio Sucessional
#PARA que seja possível ter o controle do Estágio Sucessional sempre quando precisar.


Cenario: Verificar modulo inicial do Dicionario Estágio Sucessional

Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
Quando clicar entrar no modulo do SIPAI
E clicar no menu dicionario
E acessar o Dicionario de Estágio Sucessional
Então Sistema deve exibir interface do Dicionario de Estágio Sucessional
E o botao de Adicionar
E o componente de Pesquisa
E o exportador para Excel
E as condicoes de pesquisa 'Título' 'Descrição' 'Ativo/Inativo'

Cenario: Verificar botao de novo do Dicionario Estágio Sucessional

Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
E clicar entrar no modulo do SIPAI
E clicar no menu dicionario
E acessar o Dicionario Estágio Sucessional
Quando Clicar em Adicionar no Dicionario Estágio Sucessional
Então Sistema deve exibir tela de inclusao para Dicionario Estágio Sucessional
E os campos - Título - Ordem - Descrição 
E os botões Finalizar  - Atualizar - Retornar - Excluir - Ajuda

Cenario: Verificar cadastro de um novo item do Dicionario Estágio Sucessional

Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
E clicar entrar no modulo do SIPAI
E clicar no menu dicionario
E acessar o Dicionario Estágio Sucessional
Quando Clicar em Adicionar no Dicionario Estágio Sucessional
E Preecher os campos 
E clicar em Atualizar
Então sistema deve exibir a mensagem de 'Dados salvos com sucesso' 

Cenario: Verificar Grid do Dicionario Estágio Sucessional

Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
E clicar entrar no modulo do SIPAI
E clicar no menu dicionario
E acessar o Dicionario Estágio Sucessional
Então Sistema deve Apresentar o Grid com as colunas Editar - Ativo - Título - Descrição

Cenario: Verificar pesquisa do Dicionario Estágio Sucessional

Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
E clicar entrar no modulo do SIPAI
E clicar no menu dicionario
E acessar o Dicionario Estágio Sucessional
Quando selecionar um tipo de pesquisa ''
E clicar em Adicionar
E clicar em Pesquisar
Então o sistema deve exibir no Grid somente os itens que tenham '' no Estágio Sucessional

Cenario: Verificar Excluir item no Dicionario Estágio Sucessional

Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
E clicar entrar no modulo do SIPAI
E clicar no menu dicionario
E acessar o Dicionario Estágio Sucessional
E clicar em editar
Quando clicar em excluir
Então sistema deve excluir o item
E atualizar o grid


