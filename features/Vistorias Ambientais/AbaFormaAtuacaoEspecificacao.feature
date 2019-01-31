#language: pt
#utf-8

Funcionalidade: Verificar aba Forma de Atuação de Especificação

#UserStory- 42772-UserStory-Criar aba Forma de Atuação de Especificação

#Sprint 7
#SIPAI
#Eduardo Amorim

#Story

#COMO técnico QUERO que seja criada a aba Forma de Atuação dentro da aba Especificação
#PARA poder incluir as informações de Forma de Atuação básico do RVA, bem como acessar as
#demais informações relacionadas à sua Especificação

Cenario: Verificar aba Especificações

Dado que tenhar acessado o SIGAM
E feito logim com usuario 'gtiAdm' senha 'a'
E clicado no modulo do SIPAI
E acessar as vistorias
E clicar em editar vistorias
Quando clicar na aba Especificação
Então Sistema deve exibir as abas 'Forma de Atuação' - 'Veículos Abordados' - 'Embarcações Abordadas'
E deve vim previamente selecionada aba Forma de Atuação

Cenario: Verificar campos da aba Forma de Atuação

Quando estiver na aba Forma de Atuação
Então sistema deve conter os campos 'Tipo de Ação' - 'Unidade' - 'Quantidade'
E o campo Unidade deve conter as opções 'Km percorridos' - 'Horas'
E o botão incluir e Ajuda

Cenario: Verificar campo de seleção Tipo de Ação

Quando acessar o dicionario Tipo de Ação
E incluir um item ativo no dicionario 'teste automatizado' - '10' - 'descrição do teste automatizado'
E incluir um item inativo no dicionario 'Test inativo' - '11' - 'descrição do teste automatizado inativo'
E acessar a edição de uma vistoria
E acessar aba Especificação 
Então o campo Tipo de ação deve conte o item 'teste Automatizado'
Mas o campo Tipo de Ação nao deve conter o item 'Test inativo'

Cenario: Verificar inclusão de forma de atuação

Quando preencher os campos 'teste automatizado' - 'Km percorridos' - '120,15'
E clicar em incluir
Então sistema deve gravar os dados 
E apresentar o Grid com as colunas Excluir - 'Tipo de Ação' - 'Unidade' - 'Quantidade'

Cenario: Verificar campos obrigatorios

Quando clicar em incluir sem preencher os campos
Então sistema deve apresentar a mensagem de Requerido ao lados dos campos 'Tipo de Ação' - 'Unidade' - 'Quantidade'

Cenario: Verificar exclusão de itens do GRID

Quando incluir uma forma de atuação 'teste automatizado' - 'Horas' - '999,99'
E excluir um dos itens
Então sistema deve retirar esse item do GRID 

