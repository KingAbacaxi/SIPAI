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