#language: pt
#utf-8

Funcionalidade: Verificar tela de incluir anexo nas vistorias ambientais

#UserStory- 42649-UserStory-Incluir atributos para Área disponível para restauração

#Sprint 9
#SIPAI
#Eduardo Amorim

#Story

#COMO técnico QUERO associar anexos ao Relatório de Vistoria Ambiental
#PARA que os documentos relacionados ao RVA possam ser guardados e acessados posteriormente

Cenario: Verificar aba anexo na vistoria quando não se tem arquivo anexado

Dado que tenhar acessado o SIGAM
E feito logim com usuario 'gtiAdm' senha 'a'
E clicardo no modulo do SIPAI
E acessado as Vistorias ambientais
E tiver na edição de uma vistoria
Quando clicar na aba anexo
Então sistema deve exibir a mensagem 'Nenhum Documento ou Arquivo Anexado'
E deve conter o botão de anexar aquivos

Cenario: Verificar tela de inclusão de anexo na vistoria

Quando clicar em Incluir anexo
Então sistema deve mostrar tela de inclusão do anexo da vistoria com o título 'Atualização de Anexo'
E deve conter os campos - Data do Anexo - Título do Anexo - Tipo de Documento - Reponsável - Nome do Arquivo - Descrição - Escolher arquivo 
E deve conter os botões - Finalizar - Atualizar - Retornar - Ajuda

Cenário: Verificar listagem do campo Tipo de Documento para itens inativos

Quando Alterar Acessar o dicionario de Tipo de Anexo das Vistorias ambientais
E alterar para inativo a flag de ativo de um dos itens 
E voltar para tela de inclusão de anexo da vistoria ambiental
E clicar na listagem do campo Tipo de Documento
Então não deve conter o item que foi inativado no dicionario

Cenario: Verificar campos requeridos ao tentar salvar sem preencher os campos

Quando clicar em Atualizar sem preencher nenhum dos campos da tela de anexo de vistoria
Então sistema deve apresentar mensagem de 'Requerido' ao lado dos campos - Título do anexo - Tipo de Documento - Reponsável  - Arquivo para carregar

Cenario: Verificar mensagem ao tentar grvar anexo sem anexar aquivo 

Quando preencher os campos de anexo da vistoria Título do Anexo 'Anexo automatizado' - Tipo de Documento 'Documentos institucionais' - Reponsável 'Eduardo'
E clicar em Atualizar
Então Sistema deve apresentar a mensagem no anexo da vistoria 'É necessário incluir umanexo para poder criar o relatório'

Cenario: Verificar preenchimento dos campos Detalhes da Extensão após carregar anexo

Quando preencher os campos de anexo da vistoria anexando arquivo
Então sistema deve preencher os campos Extensão - Tamanho - Data

Cenario: Verificar Atualização do Grid apos a inclusão de um anexo na vistoria ambiental

Quando preencher todos os campo com anexo na tela de incusão de anexo da vistoria Ambiental
E clicar em Finalizar
Então sistema deve atualizar o Grid com os valor do Anexo nas colunas Editar - Título - Data - Nome Original - Tipo de Documento - Extenção - KB - Excluir

Cenario: Verificar Edição do anexo da vistoria

Quando clicar em editar anexo no Grid de Vistoria ambiental
E alterar o Título do anexo para 'Anexo automatizado Editado'
E clicar em Atualizar
Então sistema deve mostrar mensagem 'Dados salvos com sucesso'

Cenario: Verificar Exclusão do anexo da Vistoria ambiental

Quando clicar em Excluir no grid de anexo da vistoria ambiental
Então sistema deve retirar o item do Grid de anexo da vistoria ambiental

