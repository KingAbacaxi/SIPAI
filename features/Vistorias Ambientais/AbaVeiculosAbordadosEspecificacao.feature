#language: pt
#utf-8

Funcionalidade: Verificar aba Veículos Abordados de Especificação

#UserStory- 42773-UserStory-Criar aba Veículos Abordados de Especificação

#Sprint 7
#SIPAI
#Eduardo Amorim

#Story

#COMO agente de fiscalização ambiental QUERO informar os veículos abordados na Área Protegida
#PARA detalhar melhor o Relatório de Vistoria Ambiental

Cenario: Verificar aba Veículos Abordados

Dado que tenha acessado o sigam
E logado no sistema com usuario 'gtiAdm' e senha 'a'
E entrado no módulo do SIPAI
E no menu Vistoria
E criado uma vistoria nova
E acessar a aba Especificações na vistoria
Quando clicar na subAba Veículos Abordados
Então sistema deve apresentar interface 
E deve conte o botão de incluir
E deve conter o botão de Ajuda
E incialmente deve conter a mensagem 'Nenhum Veículo Abordado!'

Cenario: Verificar tela de inclusão de um novo veículo Abordado

Quando acessar o menu Dicionario 
E o menu Vistoria
E o menu de Tipo de Veículo
E clicar em incluir
E incluir um veículo titulo 'Teste vistoria' ordem '25' Ativo Descrição 'Teste vistoria ativo'
E incluir um novo veículo 'Teste vistoria 2' ordem '26' Inativo Descrição 'Teste vistoria inativo'
E acessar o menu vistoria
E editar uma vistoria
E clicar na aba Veiculos Abordados - Especificação
E clicar em incluir um novo veiculo abordado
Então sistema deve exibir tela de inclusão
E o campo Tipo de Veículo deve conter os itens ativo do dicionario 'Teste vistoria' 
Mas nao deve conter o tipo de veiculo 'Teste vistoria 2'
E deve conter o Campo Modelo com tamanho maximo de '50'
E deve conter o Placa com tamanho maximo de '50'
E deve conter o Origem com tamanho maximo de '100'
E deve conter o Destino com tamanho maximo de '100'
E deve conter o Descrição com tamanho maximo de '500'
E deve conter os botões 'Finalizar' - 'Atualizar' - 'Retornar' - 'Excluir' - 'Ajuda'

Cenario: Verificar atualização do GRID apos a inclusão de um novo veiculo abordado

Quando Preencher os dados de um novo veiculo abordado Tipo de veículo 'Teste vistoria 2' Modelo 'Kia-SOUL' Placa 'amg-3125' Origem 'Desconhecida' Destino 'Meio da mata' Descrição 'Carro para teste de trilhas'
E clicar em Finalizar
Então sistema deve exibir tela inicial da aba de Veículos Abordados com GRID
E o Grid Deve conter as colunas Editar - Tipo de Veículo - Modelo - Placa - Origem - Destino - Excluir
E deve conter no GRID os dados atualizados do novo veículo incluido Tipo de veículo 'Teste vistoria 2' Modelo 'Kia-SOUL' Placa 'amg-3125' Origem 'Desconhecida' Destino 'Meio da mata' Descrição 'Carro para teste de trilhas'

Cenario: Verificar campos obrigatorios da tela de inclusão de veiculos abordados

Quando clica em incluir um veiculo abordado
E clica em Atualizar
Então sistema deve apresentar a mensagem de Requerido ao lado dos campos 'Tipo de Veículo' - 'Modelo' - 'Placa'

Cenario: Verificar edição de um veículo abordado

Quando clicar em editar um veículo abordado
E alterar o Tipo de Veículo 
E finalizar alteração
Então sistema deve apresentar os campos alterados no Grid 

Cenario: Verificar excluisão de um item do grid de veiculos abordados
Quando incluir um veiculo abordado Tipo de veículo 'Teste vistoria 2' Modelo 'Fiat-Touro' Placa 'tmt-3199' Origem 'Desconhecida' Destino 'Meio da mata' Descrição 'Carro para teste de trilhas'
E incluir mais um veiculo abordado Tipo de veículo 'Teste vistoria 2' Modelo 'Ford-Ranger' Placa 'aaa-9925' Origem 'mata' Destino 'mata' Descrição 'Carro para teste de trilhas'
E clicar em Excluir em um dos itens 
Então sistema deve atualizar o grid retirando o veiculo