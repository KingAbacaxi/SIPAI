#language: pt
#utf-8

@ocorrenciaSubAbaDenuncia
Funcionalidade: Criar sub-aba Denúncia dentro da aba Ocorrências

#UserStory- 44059 - Criar sub-aba Denúncia


#Sprint 12
#SIPAI
#Renan Sano Ferrari

#Story

#COMO técnico 
#QUERO gerar uma denúncia a partir da Ocorrência Ambiental
#PARA que seja associado a Ocorrência

#Feature modificada dia 26/04/2019 - Renan Sano Ferrari - User 46768 - Incluir Botão Finalizar para Todas as Abas da Vistoria Ambiental

Cenario: Verificar sub aba Denúncia na Ocorrência sem Acia
    Dado que tenha acessado o sigam
    E logado no sistema com usuario 'gtiAdm' e senha 'a'
    E entrado no módulo do SIPAI
    E no menu Vistoria
    E ter criado uma vistoria ambiental para uma Área Protegida que o Órgão gestor seja a Fundação Florestal
    E acessar aba Ocorrencias
    Quando criar uma ocorrência do tipo não ambiental
    E clicar na aba Denúncia
    Então o sistema apresenta a Sub aba Denúncia a frase Nenhum Registro Selecionado

Cenario: Verificar sub aba Denúncia na Ocorrência com Acia
    Quando criar uma ocorrência do tipo ambiental
    E clicar na aba Denúncia
    Então o sistema apresenta a Sub aba Denúncia a frase Nenhum Registro Selecionado

Cenario: Verificar apresentação no GRID
    Quando criar uma ocorrência do tipo ambiental
    E Preencher todos os campos
    E clicar na aba Denúncia
    Quando clicar em Gerar Denuncia 
    Então o sistema apresenta o Grid com o Registro
    E a coluna Visualização
    E a coluna NIS
    E a coluna Data do Cadastro
    E a coluna Situação
    E a coluna Classe
    E a coluna Tipo

Cenario: Conferir tentativa de inclusão de Denúncia quando nãp preenchidos campos da aba Especificação
    Quando criar uma ocorrência do tipo ambiental
    E Preencher todos os campos MENOS os campos - Especificação do Local - Descrição da ocorrência
    E clicar na aba Denúncia
    Quando clicar em Gerar Denuncia 
    Então o sistema apresenta a mensagem “Os seguintes campos precisam ser preenchidos: Especificação do Local e Descrição da ocorrência" 

Cenario: Conferir botão Finalizar
    Dado que tenha acessado o sigam
    E logado no sistema com usuario 'gtiAdm' e senha 'a'
    E entrado no módulo do SIPAI
    E no menu Vistoria
    E ter criado uma vistoria ambiental para uma Área Protegida que o Órgão gestor seja a Fundação Florestal
    E acessar aba Ocorrencias
    E criar uma ocorrência do tipo ambiental
    E clicar na aba Denúncia
    Quando clicar em Finalizar
    Então o sistema volta para o Grid de Vistorias