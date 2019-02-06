#language: pt
#utf-8
@abaEnvolvidos
Funcionalidade: Verificar aba envolvidos

#UserStory- 44202-SIPAI-Criar sub-aba Envolvidos

#Sprint 10
#SIPAI
#Eduardo Amorim

#Story

#COMO técnico QUERO informar o envolvido na ocorrência ambiental
#PARA detalhar melhor as ocorrências


Cenario: Verificar sub-aba Envolvidos 

Dado que tenha acessado o sigam
E logado no sistema com usuario 'gtiAdm' e senha 'a'
E entrado no módulo do SIPAI
E no menu Vistoria
E ter criado uma vistoria ambiental para uma Área Protegida que o Órgão gestor seja a Fundação Florestal
Quando criar uma ocorrência do tipo ambiental
Então deve exibir a sub-Aba Envolvidos
E na sub-aba deve conter o botão de Adicionar um novo envolvido
E exibir a mensagem 'Nenhum Envolvido'



