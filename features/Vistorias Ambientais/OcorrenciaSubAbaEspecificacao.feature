#language: pt
#utf-8
@ocorrenciaSubAbaEspecificacao
Funcionalidade: Verificar sua sub-aba especificação dentro da Ocorrência da Vistoria

#UserStory- 44056-SIPAI-Criar sub-aba Especificação 


#Sprint 11
#SIPAI
#Eduardo Amorim

#Story

#COMO técnico QUERO informar a Especificação na Vistoria Ambienta
#PARA  detalhar melhor a Especificação da Ocorrência “Ambiental” ou “Não Ambiental”

Cenario: Verificar tela de Especificação para ocorrência com ACIA

Dado que tenha acessado o sigam
E logado no sistema com usuario 'gtiAdm' e senha 'a'
E entrado no módulo do SIPAI
E no menu Vistoria
E clicar em Adicionar uma nova vistoria
E preencher os campos da Vistoria Área Protegida '' - Dt Inicio ação '' - Hr Inicio ação '' - dt fim ação '' - hr fim ação '' - Origem da Ação '' - Registro Ocorrência 'Sim' - Área Fiscalizada 'Dentro' - Municipio '' - Endereço '' - Relatorio '' - latitude '' - Longitude ''
E clicar em Atualizar Vistoria Ambiental
E clicar na aba Ocorrência
E clicar em criar uma Ocorrência do tipo Ambiental
E preencher o campo Relatório da Ocorrência 'Koritar colocando a flora em risco'
E clicar em Atualizar
Quando clicar na aba Especificação da vistoria Ambiental
Então sistema deve apresentar tela de especificação com os campos Classe da Ocorrência - Tipo de Ocorrência - Enquadramento Legal - Descrição da Norma - Área da ocorrência: Dentro - Entorno - Especificação do local - Latitude - longitude - Descrição da Ocorrência
E o campo Data da constatação deve vim pré preenchido com os dados prenchidos no cadastro da vistoria '' data inicio da ação
E o campo Municipio deve vim pré preenchido com os dados prenchidos no cadastro da vistoria '' Municipio
E o campo Endereço deve vim pré preenchido com os dados prenchidos no cadastro da vistoria ''  Endereço
E deve apresentar na tela de especificação os botões de Finalizar - Atualizar - Excluir - Retornar - Ajuda

Cenario: Verificar campos Obrigatórios na tela de especificação com Acia

Dado que tenha acessado o sigam
E logado no sistema com usuario 'gtiAdm' e senha 'a'
E entrado no módulo do SIPAI
E no menu Vistoria
E editar a vistoria que foi criada para aba especificação
E clicar na aba Ocorrência
E editar Ocorrência do tipo ambiental que foi criada para Especificação
E clicar na aba Especificação da vistoria Ambiental
Quando clicar no botão de Atualizar da aba Especificação
Então sistema deve apresentar a mensagem de requerido em todos os campos da tela

Cenario: Verificar a listagem do campo Classe da Ocorrência para espeficicação na ocorrência do tipo Ambiental

#massa do tipo infração
Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
E acessado o menu Portal
E acessado o menu Tabela Fiscalicação
E clicar em Tipo de Infração Nível 2
E clicar para adicionar um Novo Tipo de Infração Nivel 2
E Preencher os campos Tipo Infração '' - código Tipo Infração '' - Ordem '' - Descrição '' - Ativo ''
E incluir uma infração ao GRID ''
E clicar em Finalizar Tipo de Infração
E clicar para adicionar um Novo Tipo de Infração Nivel 2
E Preencher os campos Tipo Infração '' - código Tipo Infração '' - Ordem '' - Descrição '' - Inativo ''
E incluir uma infração ao GRID ''
E clicar em Finalizar Tipo de Infração
E clicar para adicionar um Novo Tipo de Infração Nivel 2
E Preencher os campos Tipo Infração '' - código Tipo Infração '' - Ordem '' - Descrição '' - Ativo ''
E incluir uma infração ao GRID ''
E clicar em Finalizar Tipo de Infração
#Massa para Classe da Infração
E acessado o menu Portal
E acessado o menu Tabela Fiscalicação
E clicar em Classe Infração Nivel 1
E clicar para adicionar um Novo Classe Infração Nivel 1
E Preencher os campos Classe Infração '' - código Classe Infração '' - Ordem '' - Descrição '' - Ativo ''
E incluir um tipo infração ao GRID ''
E incluir um tipo infração ao GRID ''
E clicar em Finalizar Classe infração nivel 1
E clicar para adicionar um Novo Classe Infração Nivel 1
E Preencher os campos Classe Infração '' - código Classe Infração '' - Ordem '' - Descrição '' - Ativo ''
E incluir um tipo infração ao GRID ''
E incluir um tipo infração ao GRID ''
E clicar em Finalizar Classe infração nivel 1
E clicar para adicionar um Novo Classe Infração Nivel 1
E Preencher os campos Classe Infração '' - código Classe Infração '' - Ordem '' - Descrição '' - Ativo ''
E incluir um tipo infração ao GRID ''
E incluir um tipo infração ao GRID ''
E clicar em Finalizar Classe infração nivel 1
#Massa para Ocorrência ambiental
E clicar no logo do Sigam para Home
E entrado no módulo do SIPAI
E clicar no menu dicionario
E acessar o Dicionario Vistoria Ambiental Ocorrência Ambiental
E Clicar em Adicionar no dicionario Vistoria Ambiental Ocorrência Ambiental
E Preecher os campos de um novo Vistoria Ambiental Ocorrência Ambiental ordem '1' - Ativo 'sim' - Classe da Ocorrência Ambiental '' - Tipo de Ocorrência Ambiental '' - Norma '' - Especificação da Norma '' - Descrição da Norma '' - Classe Denúncia '' - Tipo Denúncia ''
E clicar em Finalizar dicionario de Vistoria Ambiental Ocorrência Ambiental
E Clicar em Adicionar no dicionario Vistoria Ambiental Ocorrência Ambiental
E Preecher os campos de um novo Vistoria Ambiental Ocorrência Ambiental ordem '1' - Ativo 'Nao' - Classe da Ocorrência Ambiental '' - Tipo de Ocorrência Ambiental '' - Norma '' - Especificação da Norma '' - Descrição da Norma '' - Classe Denúncia '' - Tipo Denúncia ''
E clicar em Finalizar dicionario de Vistoria Ambiental Ocorrência Ambiental
#teste da listagem
E no menu Vistoria
E editar a vistoria que foi criada para aba especificação
E clicar na aba Ocorrência
E editar Ocorrência do tipo ambiental que foi criada para Especificação
E clicar na aba Especificação da vistoria Ambiental
Quando clicar na listagem do campo Classe da Ocorrência
Então sistema deve apresentar os itens Ativos cadastrado dicionario de Classe Ocorrência ambiental que estejam ativos para Classe Infração Nivel 1 '' - ''
Mas não deve apresentar o item inativo '' para Classe Infração Nivel 1

Cenario: Verificar listagem do campo Tipo Ocorrência para especificação 

Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
E entrado no módulo do SIPAI
E no menu Vistoria
E editar a vistoria que foi criada para aba especificação
E clicar na aba Ocorrência
E editar Ocorrência do tipo ambiental que foi criada para Especificação
E clicar na aba Especificação da vistoria Ambiental
Quando clicar na listagem de Tipo Ocorrência
Então sistema deve apresentar o itens Ativos para Tipo da Infração que está ativo para a Classe da Infração que está ativo para o dicionario de Ocorrência Ambiental '' - ''
Mas não deve exibir o item inativo do dicionario de Tipo Infração '' para especificação

Cenario: Verificar Cadastro da aba Especificação para Ocorrência com ACIA

Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
E entrado no módulo do SIPAI
E no menu Vistoria
E editar a vistoria que foi criada para aba especificação
E clicar na aba Ocorrência
E editar Ocorrência do tipo ambiental que foi criada para Especificação
E clicar na aba Especificação da vistoria Ambiental
Quando preencher os campos de Especificação Classe da Ocorrência '' - Tipo de Ocorrência '' - Área da ocorrência: Dentro - Entorno - Especificação do local '' - Latitude '' - longitude '' - Descrição da Ocorrência '' - Dt constatação '' - Hr '' - Municipio '' - Endereço '' - Descrição Ocorrência ''
E clicar em Atualizar Especificação
Então sistema deve apresentar mensagem ''

Cenario: Verificar Alteração de dados da aba Especificação para Ocorrência com ACIA

Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
E entrado no módulo do SIPAI
E no menu Vistoria
E editar a vistoria que foi criada para aba especificação
E clicar na aba Ocorrência
E editar Ocorrência do tipo ambiental que foi criada para Especificação
E clicar na aba Especificação da vistoria Ambiental
Quando alterar os dados da aba espeficicação no campo Descrição da Ocorrência ''
E clicar em Atualizar especificação
Então o sistema deve grvar os dados e Apresentar a mensagem ''

Cenario: Verificar tela de Especificação para ocorrência sem ACIA

Dado que tenha acessado o sigam
E logado no sistema com usuario 'gtiAdm' e senha 'a'
E entrado no módulo do SIPAI
E no menu Vistoria
E editar a vistoria que foi criada para aba especificação
E clicar na aba Ocorrência
Quando clicar em criar uma Ocorrência do tipo Não Ambiental
Então sistema deve apresentar tela de Especificação para Ocorrência Não Ambiental
E deve conter os campos Tipo da Ocorrência - Data da constatação - Hora - Área da Ocorrência: Dentro - Entorno - Especificação do Local -Latitude - Longitude - Descrição

Cenario: Verificar o campo Tipo Ocorrência para especificação para ocorrência não ambiental

#massa do tipo infração
Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
E entrado no módulo do SIPAI
E clicar no menu dicionario
E acessar o Dicionario Vistoria Ambiental Ocorrência Não Ambiental
E Clicar em Adicionar no dicionario Vistoria Ambiental Ocorrência Não Ambiental
E Preecher os campos de um novo Vistoria Ambiental Ocorrência Não Ambiental ordem '1' - Ativo 'sim' - Classe da Ocorrência Não Ambiental '' - Tipo de Ocorrência Não Ambiental '' - Descrição da Norma ''
E clicar em Finalizar dicionario de Vistoria Ambiental Ocorrência Não Ambiental
E Clicar em Adicionar no dicionario Vistoria Ambiental Ocorrência Não Ambiental
E Preecher os campos de um novo Vistoria Ambiental Ocorrência Não Ambiental ordem '1' - Ativo 'nao' - Classe da Ocorrência Não Ambiental '' - Tipo de Ocorrência Não Ambiental '' - Descrição da Norma ''
E clicar em Finalizar dicionario de Vistoria Ambiental Ocorrência Não Ambiental
E Clicar em Adicionar no dicionario Vistoria Ambiental Ocorrência Não Ambiental
E Preecher os campos de um novo Vistoria Ambiental Ocorrência Não Ambiental ordem '1' - Ativo 'sim' - Classe da Ocorrência Não Ambiental '' - Tipo de Ocorrência Não Ambiental '' - Descrição da Norma ''
E clicar em Finalizar dicionario de Vistoria Ambiental Ocorrência Não Ambiental
#teste da listagem
E no menu Vistoria
E editar a vistoria que foi criada para aba especificação
E clicar na aba Ocorrência
E editar Ocorrência do tipo não ambiental que foi criada para Especificação
Quando clicar na listagem de Tipo Ocorrência
Então sistema deve apresentar o itens Ativos para Tipo da Infração que está ativo para a Classe da Infração que está ativo para o dicionario de Ocorrência não Ambiental '' - ''
Mas não deve exibir o item inativo do dicionario de Tipo Infração '' para especificação Ocorrência não ambiental


Cenario: Verificar Cadastro da aba Especificação para Ocorrência sem ACIA

Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
E entrado no módulo do SIPAI
E no menu Vistoria
E editar a vistoria que foi criada para aba especificação
E clicar na aba Ocorrência
E editar Ocorrência do tipo não ambiental que foi criada para Especificação
Quando preencher os campos de  Tipo de Ocorrência '' - Área da ocorrência: Dentro - Entorno - Especificação do local '' - Latitude '' - longitude '' - Dt constatação '' - Hr '' - Descrição Ocorrência ''
E clicar em Atualizar Especificação
Então sistema deve apresentar mensagem ''

Cenario: Verificar Alteração de dados da aba Especificação para Ocorrência com ACIA

Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
E entrado no módulo do SIPAI
E no menu Vistoria
E editar a vistoria que foi criada para aba especificação
E clicar na aba Ocorrência
E editar Ocorrência do tipo não ambiental que foi criada para Especificação
E clicar na aba Especificação da vistoria Ambiental
Quando alterar os dados da aba espeficicação no campo Descrição da Ocorrência ''
E clicar em Atualizar especificação
Então o sistema deve grvar os dados e Apresentar a mensagem ''