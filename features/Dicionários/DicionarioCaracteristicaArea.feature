#language: pt
#utf-8

@dicCaracteristicaArea

Funcionalidade: Verificar Dicionário Característica da Área

#Sprint 11
#SIPAI
#Renan Sano Ferrari

#UserStory 44052 - Criar Dicionário Característica da Área

#Story

#COMO técnico
#QUERO que seja criado o Dicionário Característica da Área
#PARA que seja possível ter o controle das Característica da Área sempre quando precisar.


Cenario: Verificar modulo inicial do Dicionário Característica da Área

Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
Quando clicar entrar no modulo do SIPAI
E clicar no menu dicionario
E acessar o Dicionário Característica da Área
Então Sistema deve exibir interface do Dicionário Característica da Área
E o botao de Adicionar
E o componente de Pesquisa
E o exportador para Excel
E as condicoes de pesquisa 'Título' 'Descrição' 'Ativo/Inativo'

Cenario: Verificar botao de novo do Dicionário Característica da Área

Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
E clicar entrar no modulo do SIPAI
E clicar no menu dicionario
E acessar o Dicionário Característica da Área
Quando Clicar em Adicionar no Dicionário Característica da Área
Então Sistema deve exibir tela de inclusao para Dicionário Característica da Área
E os campos - Título - Ordem - Situação - Descrição 
E os botões Finalizar  - Atualizar - Retornar - Excluir - Ajuda

Cenario: Verificar cadastro de um novo item do Dicionário Característica da Área

Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
E clicar entrar no modulo do SIPAI
E clicar no menu dicionario
E acessar o Dicionário Característica da Área
Quando Clicar em Adicionar no Dicionário Característica da Área
E Preecher os campos 
E clicar em Atualizar
Então sistema deve exibir a mensagem de 'Dados salvos com sucesso' 

Cenario: Verificar Grid do Dicionário Característica da Área

Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
E clicar entrar no modulo do SIPAI
E clicar no menu dicionario
E acessar o Dicionário Característica da Área
Então Sistema deve Apresentar o Grid com as colunas Editar - Ativo - Título - Descrição

Cenario: Verificar pesquisa do Dicionário Característica da Área

Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
E clicar entrar no modulo do SIPAI
E clicar no menu dicionario
E acessar o Dicionário Característica da Área
Quando selecionar um tipo de pesquisa ''
E clicar em Adicionar
E clicar em Pesquisar
Então o sistema deve exibir no Grid somente os itens que tenham '' na Característica da Área

Cenario: Verificar Excluir item no Dicionário Característica da Área

Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
E clicar entrar no modulo do SIPAI
E clicar no menu dicionario
E acessar o Dicionário Característica da Área
E clicar em editar
Quando clicar em excluir
Então sistema deve excluir o item
E atualizar o grid



