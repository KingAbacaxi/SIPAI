#language: pt
#utf-8

@controlePermissaoAreaProtegida

Funcionalidade: Verificar Controle de permissões de Área Protegida

#UserStory- 42769-SIPAI-Controlar permissões de Área Protegida

#Sprint 9
#SIPAI
#Eduardo Amorim

#Story

#COMO administrador de Áreas Protegidas QUERO que seja controlada as 
#permissões de acesso e visualização das informações em Áreas Protegidas 
#PARA garantir que os usuários manipulem somente as funções desejadas.

#Abas da área protegida 
#Cadastro - Institucional - Mapa - Abrangência - Equipe - Infraestrutura - Objetivo e Atributos - Proteção
#Pesquisas - Anexos

# perfil código AP_ADMIN
#pode tudo em todas abas


# perfil código AP_GERENCIAL
#Não pode excluir na tela de cadastro de uma área protegida

# perfil código AP_TECNICO
#Não pode excluir na tela de cadastro de uma área protegida e não pode excluir mapas na tela de mapas

# perfil código AP_CONSULTAINTERNA
#Pode apenas consultar, não pode editar, nem excluir, nem incluir

Esquema do Cenario: Verificar funcionalidades CRUD nas áreas protegidas
Dado que tenha acessado o SIGAM
E logado no sistema com usuario 'gtiAdm' e senha 'a'
E tenha acessado o menu Portal
E tenha acessado o menu Portais
E tenha acessado o menu usuários
E pesquisar o usuario 'edgaro'
E clicar em adicionar
E clicar em pesquisar
E estiver na edição do usuario
E acessar aba acessos
E selecionar o filtro de acessos para 'PERFIL'
E adicionar o perfil '<perfil>'
E finalizar alteração do perfil 
E fazer logoff no sistema
E logado no sistema com usuario 'edgaro' e senha 'a'
Quando acessar o SIPAI
E Acessar o menu de Áreas Protegida
E editar uma área protegida
E na tela de cadastro a permissão for '<perCad>'
E na tela de Institucional a permissão for '<perInst>'
E na tela de Mapa a permissão for '<perMapa>'
E na tela de Abrangência a permissão for '<perAbrang>'
E na tela de Equipe a permissão for '<perEquipe>'
E na tela de Infraestrutura a permissão for '<perInfraestu>'
E na tela de Objetivo e Atributos a permissão for '<perObjtAtrib>'
E na tela de Proteção a permissão for '<perProte>'
E na tela de Pesquisas a permissão for '<perPesqui>'
E na tela de Anexos a permissão for '<perAnexo>'
Então as permições devem está de acordo com o pedido

Exemplos:
|perfil                           |perCad  |perInst |perMapa |perAbrang|perEquipe|perInfraestu|perObjtAtrib|perProte|perPesqui|perAnexo|
|Área Protegida – Administrador   |full    |full    |full    |full     |full     |full        |full        |full    |full     |full    |
|Área Protegida – Gerencial       |noExclui|full    |full    |full     |full     |full        |full        |full    |full     |full    |
|Área Protegida – Técnico         |noExclui|full    |noExclui|full     |full     |full        |full        |full    |full     |full    |
|Área Protegida – Consulta Interna|consulta|consulta|consulta|consulta |consulta |consulta    |consulta    |consulta|consulta|consulta |