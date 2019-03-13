#language: pt
#utf-8
@dicOcorrenciaAmbiental
Funcionalidade: Verificar Dicionário de Ocorrência Ambiental



#Sprint 11
#SIPAI
#Eduardo Amorim

#UserStory 45189-SIPAI-Criar Dicionário de Ocorrência Ambiental 

#Story

#COMO Dicionário de Ocorrência Ambientaltécnico QUERO que seja criado o dicionário de Classe Infração (Nível 1)
#PARA que seja possível ter o controle da ocorrência ambiental sempre quando precisar


Cenario: Verificar modulo inicial do dicionario Vistoria Ambiental Ocorrência Ambiental
Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
Quando clicar entrar no modulo do SIPAI
E clicar no menu dicionario
E acessar o Dicionario Vistoria Ambiental Ocorrência Ambiental
Então Sistema deve exibir interface do dicionario Vistoria Ambiental Ocorrência Ambiental
E o botao de Adicionar
E o componente de Pesquisa
E o exportador para Excel
E as condicoes de pesquisa 'Ativo/Inativo' 'Classe da Ocorrência Ambiental' 'Tipo de Ocorrência Ambiental' 'Norma' 'Especificação da Norma'

Cenario: Verificar botao de novo do Dicionario de Ocorrência Ambiental

Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
E clicar entrar no modulo do SIPAI
E clicar no menu dicionario
E acessar o Dicionario Vistoria Ambiental Ocorrência Ambiental
Quando Clicar em Adicionar no dicionario Vistoria Ambiental Ocorrência Ambiental
Então Sistema deve exibir tela de inclusao para Vistoria Ambiental Ocorrência Ambiental
E os campos Ordem - Ativo - Classe da Ocorrência Ambiental - Tipo de Ocorrência Ambiental - Norma - Especificação da Norma - Descrição da Norma - Classe Denúncia - Tipo Denúncia
E os botões Finalizar  - Atualizar - Retornar - Ajuda
Mas não deve exibir o botão de Excluir

Cenario: Verificar listagem do campo Classe de Ocorrência ambiental

Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
E acessado o menu Portal
E acessado o menu Tabela Fiscalicação
E clicar em Classe Infração Nivel 1
E clicar para adicionar um Novo Classe Infração Nivel 1
E Preencher os campos Classe Infração '' - código Classe Infração '' - Ordem '' - Descrição '' - Ativo 'sim'
E incluir um tipo infração ao GRID ''
E clicar em Atualizar Classe infração nivel 1
E Preencher os campos Classe Infração '' - código Classe Infração '' - Ordem '' - Descrição '' - Ativo 'nao'
E incluir um tipo infração ao GRID ''
Quando voltar para tela de home do SIGAM
E clicar entrar no modulo do SIPAI
E clicar no menu dicionario
E acessar o Dicionario Vistoria Ambiental Ocorrência Ambiental
E Clicar em Adicionar no dicionario Vistoria Ambiental Ocorrência Ambiental
E clicar na listagem do campo Classe de Ocorrência Ambiental
Então sistema deve exibir na listagem o item ativo que foi cadastrado no dicionario de classe da Infração ''
Mas não deve exibi na listagem o item inativo '' que foi cadastrado no dicionario de classe da Infração

Cenario: Verificar listagem do campo Tipo de Ocorrência ambiental

Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
E acessado o menu Portal
E acessado o menu Tabela Fiscalicação
E clicar em Tipo de Infração Nível 2
E clicar para adicionar um Novo Tipo de Infração Nivel 2
E Preencher os campos Tipo Infração '' - código Tipo Infração '' - Ordem '' - Descrição '' - Ativo 'Sim'
E incluir uma infração ao GRID ''
E clicar em Atualizar
E clicar para adicionar um Novo Tipo de Infração Nivel 2
E Preencher os campos Tipo Infração '' - código Tipo Infração '' - Ordem '' - Descrição '' - Ativo 'Nao'
E incluir uma infração ao GRID ''
E clicar em Atualizar
Quando voltar para tela de home do SIGAM
E clicar entrar no modulo do SIPAI
E clicar no menu dicionario
E acessar o Dicionario Vistoria Ambiental Ocorrência Ambiental
E Clicar em Adicionar no dicionario Vistoria Ambiental Ocorrência Ambiental
E clicar na listagem do campo Tipo de Ocorrência Ambiental
Então sistema deve exibir na listagem o item ativo que foi cadastrado no dicionario de Tipo da Infração ''
Mas não deve exibi na listagem o item inativo '' que foi cadastrado no dicionario de Tipo da Infração

Cenario: Verificar listagem do campo Classe Denúncia

Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
E clicar no menu Denúncia
E clicar no menu Dicionarios
E clicar na sub aba Classe Denúncia
E clicar em novo item do dicionario Classe Denúncia
E preencher os campos da Classe da Denúncia Categoria '' - Código da Classe '' - Ativo 'Sim' - Ordem '' - Nome da Classe ''
E finalizar o cadastro do Dicionario Classe da Denúncia
E clicar em novo item do dicionario Classe Denúncia
E preencher os campos da Classe da Denúncia Categoria '' - Código da Classe '' - Ativo 'Nao' - Ordem '' - Nome da Classe ''
E finalizar o cadastro do Dicionario Classe da Denúncia
Quando voltar para tela de home do SIGAM
E clicar entrar no modulo do SIPAI
E clicar no menu dicionario
E acessar o Dicionario Vistoria Ambiental Ocorrência Ambiental
E Clicar em Adicionar no dicionario Vistoria Ambiental Ocorrência Ambiental
E clicar na listagem do campo Classe Denúncia
Então sistema deve exibir na listagem o item ativo que foi cadastrado no dicionario de Classe Denúncia ''
Mas não deve exibi na listagem o item inativo '' que foi cadastrado no dicionario de Classe Denúncia

Cenario: Verificar listagem do campo Tipo Denúncia

Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
E clicar no menu Denúncia
E clicar no menu Dicionarios
E clicar na sub aba Tipo Denúncia
E clicar em novo item do dicionario Tipo Denúncia
E Preencher os campos do Tipo da Denúncia Classe do Relacionamento '' - Código do Tipo de Relacionamento '' - Ordem de Apresentação '' - Prazo '' - Nome do Tipo de Relacionamento '' - Ativo 'Sim'
E finalizar o cadastro do Dicionario Tipo da Denúncia
E clicar em novo item do dicionario Tipo Denúncia
E Preencher os campos do Tipo da Denúncia Classe do Relacionamento '' - Código do Tipo de Relacionamento '' - Ordem de Apresentação '' - Prazo '' - Nome do Tipo de Relacionamento '' - Ativo 'Nao'
E finalizar o cadastro do Dicionario Tipo da Denúncia
Quando voltar para tela de home do SIGAM
E clicar entrar no modulo do SIPAI
E clicar no menu dicionario
E acessar o Dicionario Vistoria Ambiental Ocorrência Ambiental
E Clicar em Adicionar no dicionario Vistoria Ambiental Ocorrência Ambiental
E clicar na listagem do campo Classe Denúncia
Então sistema deve exibir na listagem o item ativo que foi cadastrado no dicionario de Tipo Denúncia ''
Mas não deve exibi na listagem o item inativo '' que foi cadastrado no dicionario de Tipo Denúncia

Cenario: Verificar cadastro de um novo item do dicionario de Vistoria Ambiental Ocorrência Ambiental

Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
E clicar entrar no modulo do SIPAI
E clicar no menu dicionario
E acessar o Dicionario Vistoria Ambiental Ocorrência Ambiental
Quando Clicar em Adicionar no dicionario Vistoria Ambiental Ocorrência Ambiental
E Preecher os campos de um novo Vistoria Ambiental Ocorrência Ambiental ordem '1' - Ativo 'sim' - Classe da Ocorrência Ambiental '' - Tipo de Ocorrência Ambiental '' - Norma '' - Especificação da Norma '' - Descrição da Norma '' - Classe Denúncia '' - Tipo Denúncia ''
E clicar em Atualizar dicionario de Vistoria Ambiental Ocorrência Ambiental
Então sistema deve exibir a mensagem de 'Dados salvos com sucesso' dicionario de Vistoria Ambiental Ocorrência Ambiental

Cenario: Verificar Grid do dicionario de Vistoria Ambiental Ocorrência Ambiental

Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
E clicar entrar no modulo do SIPAI
E clicar no menu dicionario
E acessar o Dicionario Vistoria Ambiental Ocorrência Ambiental
Então Sistema deve Apresentar o Grid com as colunas Editar - Ativo - Classe Ocorrência Ambiental - Tipo de Ocorrência Ambiental - Enquadramento Legal - Excluir
E exibir altura da lista do grid com default de '300'

Cenario: Verificar pesquisa do dicionario de Vistoria Ambiental Ocorrência Ambiental para Classe Ocorrência Ambiental

Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
E clicar entrar no modulo do SIPAI
E clicar no menu dicionario
E acessar o Dicionario Vistoria Ambiental Ocorrência Ambiental
Quando pesquisar um Vistoria Ambiental Ocorrência Ambiental pela Classe Ocorrência Ambiental ''
Então sistema deve exibir no Grid somente os itens que tenham '' na Classe Ocorrência Ambiental

Cenario: Verificar pesquisa do dicionario de Vistoria Ambiental Ocorrência Ambiental para pesquisa de Tipo de Ocorrência Ambiental

Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
E clicar entrar no modulo do SIPAI
E clicar no menu dicionario
E acessar o Dicionario Vistoria Ambiental Ocorrência Ambiental
Quando pesquisar um Vistoria Ambiental Ocorrência Ambiental pelo Tipo de Ocorrência Ambiental ''
Então sistema deve exibir no Grid somente os itens que tenham '' Tipo de Ocorrência Ambiental

Cenario: Verificar pesquisa do dicionario de Vistoria Ambiental Ocorrência Ambiental para pesquisa de itens ativos

Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
E clicar entrar no modulo do SIPAI
E clicar no menu dicionario
E acessar o Dicionario Vistoria Ambiental Ocorrência Ambiental
Quando pesquisar um Vistoria Ambiental Ocorrência Ambiental por itens 'Ativo/Inativo' com parametro 'É verdadeiro'
Então sistema deve exibir no Grid somente os itens com a flag Ativo selecionada 

Cenario: Verificar pesquisa do dicionario de Vistoria Ambiental Ocorrência Ambiental para pesquisa de itens Inativos

Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
E clicar entrar no modulo do SIPAI
E clicar no menu dicionario
E acessar o Dicionario Vistoria Ambiental Ocorrência Ambiental
Quando pesquisar um Vistoria Ambiental Ocorrência Ambiental pela flag 'Ativo/Inativo' com parametro 'É falso'
Então sistema deve exibir no Grid somente os itens com a flag É falso nao selecionada 

Cenario: Verificar tela de Edicao do itens do dicionario de Vistoria Ambiental Ocorrência Ambiental

Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
E clicar entrar no modulo do SIPAI
E clicar no menu dicionario
E acessar o Dicionario Vistoria Ambiental Ocorrência Ambiental
Quando pesquisar um Vistoria Ambiental Ocorrência Ambiental o item pelo Tipo de Ocorrência Ambiental ''
E clicar em editar no grid Vistoria Ambiental Ocorrência Ambiental
Então sistema deve exibir tela de edicao com os campos preenchidos 
E exibir o botao 'Excluir'

Cenario: Verificar Alteracao de um item no dicionario de Vistoria Ambiental Ocorrência Ambiental

Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
E clicar entrar no modulo do SIPAI
E clicar no menu dicionario
E acessar o Dicionario Vistoria Ambiental Ocorrência Ambiental
E pesquisar um Vistoria Ambiental Ocorrência Ambiental o item pelo Tipo de Ocorrência Ambiental ''
E clicar em editar no grid Vistoria Ambiental Ocorrência Ambiental
Quando alterar a flag Ativo para Inativo de um Vistoria Ambiental Ocorrência Ambiental
E clicar em finalizar  dicionario de Vistoria Ambiental Ocorrência Ambiental
Então sistema deve alterar os items e atualizar o Grid dicionario de Vistoria Ambiental Ocorrência Ambiental

Cenario: Verificar Excluir item no dicionario de Vistoria Ambiental Ocorrência Ambiental com usuario gtiAdm
Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
E clicar entrar no modulo do SIPAI
E clicar no menu dicionario
E acessar o Dicionario Vistoria Ambiental Ocorrência Ambiental
E pesquisar um Vistoria Ambiental Ocorrência Ambiental o item pelo Tipo de Ocorrência Ambiental ''
E clicar em editar no grid Vistoria Ambiental Ocorrência Ambiental
Quando clicar em excluir um um Vistoria Ambiental Ocorrência Ambiental
Então sistema deve excluir o item e atualizar o grid

Cenario: Verificar Excluir item no dicionario de Vistoria Ambiental Ocorrência Ambiental com usuario nao adm

Quando logar com usuario 'naianal' senha 'teste' dento do modulo do sipai
E clicar no menu dicionario
E acessar o Dicionario Vistoria Ambiental Ocorrência Ambiental
E editar no grid Vistoria Ambiental Ocorrência Ambiental
Então sistema nao deve exibir opcao de 'Excluir'