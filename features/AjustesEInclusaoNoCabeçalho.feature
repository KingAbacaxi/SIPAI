#language: pt
#utf-8

Funcionalidade: Ajustes no Cabeçalho e Inclusão de Campos


#UserStory- 45923 - SIPAI-Ajustes no Cabeçalho e Inclusão de Campos

#Sprint 12
#SIPAI
#Renan Sano Ferrari

#Story

#COMO técnico
#QUERO O que sejam realizados alguns ajustes no Cabeçalho e incluso novos campos Classe e o Tipo da Infração 
#PARA que possa facilitar a adequação das informações.

Cenario: Conferir cabeçalho
Dado que acesse o SIGAM
E clicar em Login
E clicar em Usuário
E inserir Usuário ''
E clicar em Senha
E inserir Senha ''
E clicar em Acesso
E clicar em Processos
E selecionar Sigal AIAe
E clicar em Localizar
E selecionar processo 
Quando selecionar atividade AIAe
Então o sistema apresenta os campos Classe da Infração de forma bloqueada
E Tipo da Infração de forma bloqueada

Cenario: Conferir inclusão do filtro "Classe da Infração"
    Dado que acesse o SIGAM
    E clicar em Login
    E clicar em Usuário
    E inserir Usuário ''
    E clicar em Senha
    E inserir Senha ''
    E clicar em Acesso
    E clicar em Processos
    E selecionar Sigal AIAe
    E clicar em Localizar
    E selecionar processo 
    E selecionar atividade AIAe
    Quando clicar na aba Infração
    E selecionar o campo tipo de Autuado ''
    E selecionar o campo Classe da Infração 
    Então o sistema apresenta o que foi cadastrado no Dicionário Classe Infração Nível 1

Cenario: Conferir inclusão do filtro "Tipo de infração"
    Dado que acesse o SIGAM
    E clicar em Login
    E clicar em Usuário
    E inserir Usuário ''
    E clicar em Senha
    E inserir Senha ''
    E clicar em Acesso
    E clicar em Processos
    E selecionar Sigal AIAe
    E clicar em Localizar
    E selecionar processo 
    E selecionar atividade AIAe
    Quando clicar na aba Infração
    E selecionar o campo tipo de Autuado ''
    E selecionar o campo Classe da Infração ''
    E selecionar o campo 'Tipo de infração'
    Então o sistema apresenta o que foi cadastrado no Dicionário Tipo Infração Nível 2

Cenário: Conferir alteração do campo Descrição
    Dado que acesse o SIGAM
    E clicar em Login
    E clicar em Usuário
    E inserir Usuário ''
    E clicar em Senha
    E inserir Senha ''
    E clicar em Acesso
    E clicar em Processos
    E selecionar Sigal AIAe
    E clicar em Localizar
    E selecionar processo 
    E selecionar atividade AIAe
    Quando clicar na aba Infração
    Então o sistema apresenta o nome do campo modificado Descrição da Infração

