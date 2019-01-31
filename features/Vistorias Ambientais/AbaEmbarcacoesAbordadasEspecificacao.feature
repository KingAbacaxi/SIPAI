#language: pt
#utf-8

Funcionalidade: Verificar aba Embarcações Abordadas na aba Especificações

#UserStory- 43100-UserStory-Criar aba Embarcações Abordadas de Especificação

#Sprint 7
#SIPAI
#Eduardo Amorim

#Story

#COMO agente de fiscalização ambiental QUERO informar as Embarcações Abordadas na Área Protegida
#PARA detalhar melhor o Relatório de Vistoria Ambiental.

Cenario: Verificar aba embarcações Abordados

Dado que tenha acessado o sigam
E logado no sistema com usuario 'gtiAdm' e senha 'a'
E entrado no módulo do SIPAI
E no menu Vistoria
E criado uma vistoria nova
E acessar a aba Especificações na vistoria
Quando clicar na subAba Embarcações Abordados
Então sistema deve apresentar interface 
E deve conte o botão de incluir
E deve conter o botão de Ajuda
E incialmente deve conter a mensagem 'Nenhuma Embarcação Abordada!'

Cenario: Verificar tela de inclusão de um nova Embarcação Abordada

Quando acessar o menu Dicionario 
E o menu Vistoria
E o menu de metodo de pesca
E clicar em incluir
E incluir um metodo de pesca titulo 'Teste pesca' ordem '25' Ativo Descrição 'Teste vistoria ativo'
E incluir um novo metodo de pesca 'Teste pesca 2' ordem '26' Inativo Descrição 'Teste vistoria inativo'
E acessar o menu vistoria
E editar uma vistoria
E clicar na aba Embarcações Abordados - Especificação
E clicar em incluir uma nova embarcação abordada
Então sistema deve exibir tela de inclusão
E o campo Metodo de pesca deve conter os itens ativo do dicionario 'Teste pesca' 
Mas nao deve conter o tipo de veiculo 'Teste pesca 2'
E deve conter o Campo Nome da embarcação com tamanho maximo de '100'
E deve conter o Campo Numero de inscrição com tamanho maximo de '50'
E deve conter o Campo RGP com tamanho maximo de '50'
E deve conter o Campo Porto de Origem com tamanho maximo de '100'
E deve conter o Campo Porto de Destino com tamanho maximo de '100'
E deve conter o Campo Descrição com tamanho maximo de '500'
E deve conter os botões 'Finalizar' - 'Atualizar' - 'Retornar' - 'Excluir' - 'Ajuda'

Cenario: Verificar atualização do GRID apos a inclusão de um nova embarcação abordada

Quando Preencher os dados de uma nova embarcação abordada metodo de pesca 'Teste pesca' Nome da Embarcação 'Barco 12 pes' Número de Inscrição '1254874452' RGP '121ad1212' Porto de Origem 'Santos' Porto de destino 'Ipiranga' Descrição 'JKHhjhsjdhafsd424'
E clicar em Finalizar
Então sistema deve exibir tela inicial da aba de Embarcações Abordadas com GRID
E o Grid Deve conter as colunas Editar - Nome da Embarcação - Número de Inscrição - RGP - Método de Pesca - Porto de Origem - Porto de destino - Excluir
E deve conter no GRID os dados atualizados do nova embarcação abordada metodo de pesca 'Teste pesca' Nome da Embarcação 'Barco 12 pes' Número de Inscrição '1254874452' RGP '121ad1212' Porto de Origem 'Santos' Porto de destino 'Ipiranga'

Cenario: Verificar campos obrigatorios da tela de inclusão de Embarcações abordadas

Quando clica em incluir uma Embarcação abordada
E clica em Atualizar
Então sistema deve apresentar a mensagem de Requerido ao lado dos campos 'Nome da Embarcaão' - 'Número de Inscrição' - 'RGP' - 'Metodo de Pesca'

Cenario: Verificar edição de uma Embarcação abordada

Quando clicar em editar uma Embarcação abordada
E alterar o metodo de pesca
E finalizar alteração
Então sistema deve apresentar os campos alterados no Grid 

Cenario: Verificar exclusão de um item do grid de veiculos abordados
Quando incluir uma embarcação abordada metodo de pesca 'Teste pesca' Nome da Embarcação 'Barco 15 pes' Número de Inscrição '12548454555' RGP '1fdgfdg21ad1212' Porto de Origem 'Santos' Porto de destino 'SHELL' Descrição 'Ja foi'
E incluir mais uma embarcação abordada metodo de pesca 'Teste pesca' Nome da Embarcação 'Barco 21 pes' Número de Inscrição '125455' RGP '1fdgfdg' Porto de Origem 'Santos' Porto de destino 'Ale' Descrição 'Ja foi'
E clicar em Excluir em um dos itens 
Então sistema deve atualizar o grid retirando a embarcação