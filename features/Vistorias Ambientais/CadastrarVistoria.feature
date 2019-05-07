#language: pt
#utf-8

Funcionalidade: Verificar cadastro de Vistoria

#UserStory- 42766-UserStory-Cadastrar Vistoria

#Sprint 7
#SIPAI
#Eduardo Amorim

#Story

#COMO técnico QUERO que seja possível cadastrar relatórios de vistoria ambiental
#PARA manter o controle e gerenciamento das ocorrências existentes, além de acompanhar RVAs já iniciados
#anteriormente o preenchimento correto das informações


#BDD ajustado 11/04/2019 por Renan Sano Ferrari - mudança por conta da User 46470-Ajustar a Regra que Gera o Número do Relatório na Vistoria Ambiental
#BDD ajustado 30/04/2019 por Bruno Spinelli - mudança por conta da User 46767-SIPAI-Incluir Mensagem Informativa para Registro de Ocorrências
#BDD ajustado 25/04/2019 por Renan Sano Ferrari - mudança por conta da User 46769-SIPAI-Ajustar Relatório de Vistoria Ambiental


Cenario: Verificar Tela inicial do cadastro de Vistoria
Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
E está no modulo do SIPAI
E dentro do modulo de vistoria
Quando clicar em Adicionar
Então Sistema deve exibir tela de Cadastro de Vistorias na aba Identificação com todos campos previamente vazios
E o campo Responsável deve vim com o nome do usuário logado
E o campo unidade deve vim com a Unidade do usuario logado

Cenario: Verificar funcionamento do campo área Protegida
Quando escolher a uc 'Estação Ecológica de Valinhos'
Então Sistema deve preencher os campos Grupo-Categoria-Órgão gestor-Unidade Responsável 

Cenario: Verificar Campos Obrigatorios
Quando clicar em Atualizar sem preencher os campos
Então Sistema deve apresentar a msg de Requerido ao lado dos campos dos campos obrigatorios 

Cenario: Verificar Limite dos campos
Quando preencher o campo data de Início da Ação com letras 'as/sa/asds'
E preencher o campo Hora de Início da Ação com letras 's1:sd'
E preencher o campo data de Término da Ação com letras 'as/sa/asds'
E preencher o campo Hora de Término da Ação com letras 's1:sd'
E preencher o campo Especificação do Local com valor acima de 200 caracteres
E preencher o campo Relatório de Fiscalização com valor acima de 500 caracteres
E preencher o campo Latitude com o valor acima de 18,8 '1234567890123456789,123456789'
E preencher o campo Longitude com o valor acima de 18,8 '1234567890123456789,123456789'
Então sistema não deve deixar gravar os dados

Cenario: Verificar Finalizar com Data de Inicio maior do que a data atual
Quando preencher o campo Data de Início da Ação com data maior do que atual '20/12/2019'
E preencher os demais campos corretamente
E clicar em Finalizar
Então sistema não deve gravar os dados e exibir msg 'Data de início da ação não pode ser maior que a data de cadastro!'

Cenario: Verificar Finalizar com Data de termino e hora de termino menos que a data de inicio
Quando preencher o campo Data de termino maior do que atual '20/12/2010'
E preencher o campo Hora de termino menor que a atual
Então sitema não deve gravar os dados e mostrar a msg 'Data e hora de término da ação não pode ser menor que a data e hora de início da ação!'

Cenario: Verificar opção de Conversor de coordenadas
Quando clicar na opção de Consersor
E preencher os dados de UTM x '7895012' y '3015100' fuso '23'
E clicar em converter 
E fechar o modal 
Então sistema deve preencher latitude e longitude apos a conversão 

Cenario: Verificar Finalizar com os campos preenchidos corretamente
Quando preencher todos os campos corretamente
E clicar em Finalizar
Então sistema deve atualizar o grid com os dados gravados

Cenario: Verificar botão de retornar
Quando clicar em retornar
Então sistema deve retornar para tela do GRID

Cenario: Verificar botão de excluir
Quando clicar em editar uma vistoria já cadastrada
E clicar em excluir
Então sistema deve excluir vistoria e atualizar o grid 

Cenario: Verificar botão de Ajuda
Quando clicar no botão de Ajuda
Então sistema deve exibir tela de ajuda 

Cenario: Verificar na Edição de uma vistoria o cabeçalho os dados
Quando editar uma vistoria
Então o cabeçalho e os demais campos devem está preenchidos automaticamente

Cenário: Verificar inclusão no Grid após cadastro
Quando preencher todos os campos obrigatórios
E clicar em Finalizar
Então o sistema apresenta os cadastro da coluna Número do Relatório na ordem da sequência gerada sequencialmente e zerada essa sequência e realizado uma nova sequência quando o ano é novo


#UserStory: 46767-SIPAI-Incluir Mensagem Informativa para Registro de Ocorrências
#Sprint 13
#25/04/2019

#COMO técnico
#QUERO que seja criado uma mensagem informativa para o campo “Registro de Ocorrência” no caso do usuário selecionar a opção “Não” na aba Identificação do Módulo Vistoria Ambiental
#PARA que possa informar ao usuário caso exista uma ocorrência vinculada a mesma será excluída.

Cenário: Criação de vistoria como registro de ocorrência
Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
E está no modulo do SIPAI
E dentro do modulo de vistoria
E ter clicado em adicionar uma nova vistoria
E ter preenchido os campos da vistoria - Área Protegida 'EE - Estação Ecológica Assis' - Data de Início da Ação - Hora de Início de Ação - Data de Término da Ação - Hora de Término da Ação - Origem da Ação 'Definição de medidas de reparação' - Registro de Ocorrências 'Sim' - Área Fiscalizada na Área Protegida 'Dentro' - Município 'Altair' - Endereço 'teste1' - Especificação do Local 'teste2' - Relatório de Fiscalização 'teste3' - Latitude '1' - Longitude '1'
Quando clicar em Finalizar
Então o sistema deve criar a vistoria
E habilitar a aba Ocorrências
Mas o sistema não deve apresentar a mensagem sobre a aba ocorrência

Cenário: Criação de vistoria que não é registro de ocorrência
Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
E está no modulo do SIPAI
E dentro do modulo de vistoria
E ter clicado em adicionar uma nova vistoria
E ter preenchido os campos da vistoria - Área Protegida 'EE - Estação Ecológica Assis' - Data de Início da Ação - Hora de Início de Ação - Data de Término da Ação - Hora de Término da Ação - Origem da Ação 'Definição de medidas de reparação' - Registro de Ocorrências 'Não' - Área Fiscalizada na Área Protegida 'Dentro' - Município 'Altair' - Endereço 'teste1' - Especificação do Local 'teste2' - Relatório de Fiscalização 'teste3' - Latitude '1' - Longitude '1'
Quando clicar em Finalizar
Então o sistema deve criar a vistoria
Mas o sistema não deve apresentar a mensagem sobre a aba ocorrência
E o sistema não deve habilitar a aba ocorrência
    
Cenário: Atualização de vistoria como registro de ocorrência
Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
E está no modulo do SIPAI
E dentro do modulo de vistoria
E ter clicado em adicionar uma nova vistoria
E ter preenchido os campos da vistoria - Área Protegida 'EE - Estação Ecológica Assis' - Data de Início da Ação - Hora de Início de Ação - Data de Término da Ação - Hora de Término da Ação - Origem da Ação 'Definição de medidas de reparação' - Registro de Ocorrências 'Não' - Área Fiscalizada na Área Protegida 'Dentro' - Município 'Altair' - Endereço 'teste1' - Especificação do Local 'teste2' - Relatório de Fiscalização 'teste3' - Latitude '1' - Longitude '1'
E ter finalizado o cadastro da vistoria
E ter clicado em editar vistoria
E ter alterado o campo Registro de Ocorrências para "Sim"
Quando clicar em Finalizar
Então o sistema deve atualizar a vistoria
E habilitar a aba Ocorrências
Mas o sistema não deve apresentar a mensagem sobre a aba ocorrência
    
Cenário: Atualização de vistoria que deixa de ser registro de ocorrência
Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
E está no modulo do SIPAI
E dentro do modulo de vistoria
E ter clicado em adicionar uma nova vistoria
E ter preenchido os campos da vistoria - Área Protegida 'EE - Estação Ecológica Assis' - Data de Início da Ação - Hora de Início de Ação - Data de Término da Ação - Hora de Término da Ação - Origem da Ação 'Definição de medidas de reparação' - Registro de Ocorrências 'Sim' - Área Fiscalizada na Área Protegida 'Dentro' - Município 'Altair' - Endereço 'teste1' - Especificação do Local 'teste2' - Relatório de Fiscalização 'teste3' - Latitude '1' - Longitude '1'
E ter finalizado o cadastro da vistoria
E ter clicado em editar vistoria
E ter alterado o campo Registro de Ocorrências para "Não"
Quando clicar em Finalizar
Então o sistema deve apresentar a mensagem sobre a aba Ocorrências
E a mensagem deve ter um botão "OK"
E a mensagem deve ter um botão "Cancelar"
    
Cenário: Atualização de vistoria que deixa de ser registro e é confirmada pelo usuário
Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
E está no modulo do SIPAI
E dentro do modulo de vistoria
E ter clicado em adicionar uma nova vistoria
E ter preenchido os campos da vistoria - Área Protegida 'EE - Estação Ecológica Assis' - Data de Início da Ação - Hora de Início de Ação - Data de Término da Ação - Hora de Término da Ação - Origem da Ação 'Definição de medidas de reparação' - Registro de Ocorrências 'Sim' - Área Fiscalizada na Área Protegida 'Dentro' - Município 'Altair' - Endereço 'teste1' - Especificação do Local 'teste2' - Relatório de Fiscalização 'teste3' - Latitude '1' - Longitude '1'
E ter finalizado o cadastro da vistoria
E ter clicado em editar vistoria
E ter alterado o campo Registro de Ocorrências para "Não"
E ter clicado em finalizar cadastro de vistoria
Quando clicar em "OK" na mensagem de Aviso
Então o sistema deve desabilitar a aba Ocorrências
E excluir os dados da aba Ocorrências
E o sistema deve atualizar a vistoria
    
Cenário: Atualização de vistoria que deixa de ser registro e é cancelada pelo usuário
Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
E está no modulo do SIPAI
E dentro do modulo de vistoria
E ter clicado em adicionar uma nova vistoria
E ter preenchido os campos da vistoria - Área Protegida 'EE - Estação Ecológica Assis' - Data de Início da Ação - Hora de Início de Ação - Data de Término da Ação - Hora de Término da Ação - Origem da Ação 'Definição de medidas de reparação' - Registro de Ocorrências 'Sim' - Área Fiscalizada na Área Protegida 'Dentro' - Município 'Altair' - Endereço 'teste1' - Especificação do Local 'teste2' - Relatório de Fiscalização 'teste3' - Latitude '1' - Longitude '1'
E ter finalizado o cadastro da vistoria
E ter clicado em editar vistoria
E ter alterado o campo Registro de Ocorrências para "Não"
E ter clicado em finalizar cadastro de vistoria
Quando clicar em "Cancelar" na mensagem de Aviso
Então o sistema fecha a mensagem
Mas o sistema não deve atualizar a vistoria
E o sistema não deve desabilitar a aba Ocorrências
E o sistema não deve excluir os dados da aba Ocorrências
   
Cenário: Atualização de vistoria que deixa de ser registro logo após sua criação
Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
E está no modulo do SIPAI
E dentro do modulo de vistoria
E ter clicado em adicionar uma nova vistoria
E ter preenchido os campos da vistoria - Área Protegida 'EE - Estação Ecológica Assis' - Data de Início da Ação - Hora de Início de Ação - Data de Término da Ação - Hora de Término da Ação - Origem da Ação 'Definição de medidas de reparação' - Registro de Ocorrências 'Sim' - Área Fiscalizada na Área Protegida 'Dentro' - Município 'Altair' - Endereço 'teste1' - Especificação do Local 'teste2' - Relatório de Fiscalização 'teste3' - Latitude '1' - Longitude '1'
E ter clicado em atualizar vistoria
E ter alterado o campo Registro de Ocorrências para "Não"
Quando clicar em Finalizar
Então o sistema deve apresentar a mensagem sobre a aba Ocorrências
E a mensagem deve ter um botão "OK"
E a mensagem deve ter um botão "Cancelar"
    
Cenário: Usuário ter clicado em alterar o estado de registro porém ter alterádo ele de volta antes de salvar
Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
E está no modulo do SIPAI
E dentro do modulo de vistoria
E ter clicado em adicionar uma nova vistoria
E ter preenchido os campos da vistoria - Área Protegida 'EE - Estação Ecológica Assis' - Data de Início da Ação - Hora de Início de Ação - Data de Término da Ação - Hora de Término da Ação - Origem da Ação 'Definição de medidas de reparação' - Registro de Ocorrências 'Sim' - Área Fiscalizada na Área Protegida 'Dentro' - Município 'Altair' - Endereço 'teste1' - Especificação do Local 'teste2' - Relatório de Fiscalização 'teste3' - Latitude '1' - Longitude '1'
E ter finalizado o cadastro da vistoria
E ter clicado em editar vistoria
E ter alterado o campo Registro de Ocorrências para "Não"
E ter alterado o campo Registro de Ocorrências para "Sim"
Quando clicar em Finalizar
Então o sistema deve atualizar a vistoria
Mas o sistema não deve apresentar a mensagem sobre a aba ocorrência
E o sistema não deve apagar as ocorrências

=======
Cenário: Verificar busca de AIA ou AIAe incorretos
    Quando clicar em editar uma vistoria já cadastrada
    E selecionar a opção Definição de Medidas de Reparação na aba Identificação
    E clicar em AIA ou AIAe
    E preencher com números aleatórios
    Então o sistema apresenta a mensagem AIA não encontrado verifique o número correto

Cenário: Verificar apresentação dos campos Número AIA e Número AIA-e quando selecionado diferente de Definição de Medidas de Reparação
    Quando clicar em editar uma vistoria já cadastrada
    E selecionar opção diferente de Definição de Medidas de Reparação na aba Identificação
    Então o sistema não apresenta os campos Número AIA e Número AIA-e

Cenário: Verificar apresentação dos campos Número AIA e Número AIA-e quando selecionado Definição de Medidas de Reparação
    Quando clicar em editar uma vistoria já cadastrada
    E selecionar a opção Definição de Medidas de Reparação na aba Identificação
    Então o sistema apresenta os campos Número AIA e Número AIA-e

Cenário: Verificar apresentação dos novos campos
    Quando clicar em editar uma vistoria já cadastrada
    E selecionar a opção Definição de Medidas de Reparação na aba Identificação
    E selecionar o campo Número AIA ou Número AIA-e
    E inserir um AIA válido
    Então o sistema apresenta os novos campos Nome do Atuado
    E CPF/CNPJ
    E Classe
    E Tipo
    E Infração
    E Enquadramento

