#language: pt
#utf-8
@abaOcorrenciaVistoriaAmbiental
Funcionalidade: Verificar Aba de Ocorrencias na Vistoria Ambiental

#UserStory- 44228-SIPAI-Criar Aba Ocorrência

#Sprint 9
#SIPAI
#Eduardo Amorim

#Story

#COMO técnico QUERO informar a ocorrência se é ambiental ou não ambiental 
#PARA detalhar melhor as ocorrências.

#Feature modificada 26/04/2019 - Renan Sano Ferrari - User 46768 - Incluir Botão Finalizar para Todas as Abas da Vistoria Ambiental


Cenario: Verificar aba Ocorrencias na Vistoria Ambiental que não tenha ocorrecia

    Dado que tenha acessado o SIGAM
    E logado com usuario 'gtiAdm' senha 'a'
    E clicar entrar no modulo do SIPAI
    E ter acessado o menu de Vistoria Ambiental
    Quando clicar em Editar uma Vistoria que não tenha ocorrecia
    E clicar na Aba Ocorrencias
    Então sistema deve apresentar mensagem 'Nenhuma Ocorrência'
    E as opçãos em Adicionar Ocorrência Ambiental - Não Ambiental
    E os botões de Incluir e Ajuda e Finalizar

Cenário: Verificar botão Finalizar
    Dado que tenha acessado o SIGAM
    E logado no sistema com usuario 'gtiAdm' senha 'a'
    E acessado o modulo SIPAI
    E ter entrado no menu de Vistória Ambiental
    E clicar em editar uma Vistoria
    E clicar na aba Ocorrencias
    Quando clicar no Botão Finalizar
    Então o sistema volta para o Grid de Vistorias

