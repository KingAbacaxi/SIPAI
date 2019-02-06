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


Cenario: Verificar aba Ocorrencias na Vistoria Ambiental que não tenha ocorrecia

Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
E clicar entrar no modulo do SIPAI
E ter acessado o menu de Vistoria Ambiental
Quando clicar em Editar uma Vistoria que não tenha ocorrecia
E clicar na Aba Ocorrencias
Então sistema deve apresentar mensagem 'Nenhuma Ocorrência'
E as opçãos em Adicionar Ocorrência Ambiental - Não Ambiental
E os botões de Incluir e Ajuda

