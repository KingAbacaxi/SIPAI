#language: pt
#utf-8

@AbaProvidenciaRelatorioVistoria

Funcionalidade: Criar Aba Providência no Relatório de Vistoria Ambiental

#UserStory - 46469 - Criar Aba Providência no Relatório de Vistoria Ambiental


#Sprint 12
#SIPAI
#Renan Sano Ferrari

#Story

#COMO técnico 
#QUERO  informar a Providência na Vistoria Ambiental 
#PARA detalhar melhor a Providência no Relatório da Vistoria Ambiental.

#Feature modificada 26/04/2019 - Renan Sano Ferrari - User 46768 - Incluir Botão Finalizar para Todas as Abas da Vistoria Ambiental

Cenario: Conferir liberação da aba Providencias
    Dado que tenha acessado o SIGAM
    E logado com usuario 'gtiAdm' senha 'a'
    E clicar entrar no modulo do SIPAI
    E clicar em Vistoria Ambiental
    E clicar em Editar registro
    Quando selecionar a opção 'Definição de medidas de reparação' no campo Origem da Ação
    E clicar em Atualizar
    Então o sistema apresenta a nova aba Providencias

Cenario: Conferir aba Providencias
    Quando selecionar a opção 'Definição de medidas de reparação' no campo Origem da Ação
    E clicar em Atualizar
    E clicar na aba Providencias
    Então o sistema apresenta a nova aba com o campo Providências a serem Adotadas
    E o campo Medidas para a Reparação/Recuperação do Dano
    E o botão Finalizar 
    E o botão Atualizar
    E o botão Excluir
    E o botão Retornar
    E o botão Ajuda

Cenario: Conferir obrigatoriedades da aba Providencias
    E selecionar a opção 'Definição de medidas de reparação' no campo Origem da Ação
    E clicar em Atualizar
    E clicar na aba Providencias
    Quando clicar em Atualizar ou Finalizar
    Então o sistema apresenta mensagem de obrigatoriedade frente aos dois campos

Cenario: Conferir inclusão de Providencia
    E selecionar a opção 'Definição de medidas de reparação' no campo Origem da Ação
    E clicar em Atualizar
    E clicar na aba Providencias
    Quando inserir dados no campo Providencias a serem Adotadas
    E inserir dados no campo Medidas para Reparação/Recuperação do Dano
    E clicar em Atualizar
    Então o sistema salva os dados

Cenario: Conferir exclusão de Providencia
    E selecionar a opção 'Definição de medidas de reparação' no campo Origem da Ação
    E clicar em Atualizar
    E clicar na aba Providencias
    Quando clicar em Excluir
    Então o sistema apaga os dados da aba

Cenario: Conferir alteração para diferente de "Definição de medidas de reparação" do campo Origem da Ação 
    E selecionar a opção 'Definição de medidas de reparação' no campo Origem da Ação
    E clicar em Atualizar
    E clicar na aba Providencias
    E inserir dados no campo Providencias a serem Adotadas
    E inserir dados no campo Medidas para Reparação/Recuperação do Dano
    E clicar em Atualizar
    E selecionar aba Identificação
    Quando alterar para diferente de "Definição de medidas de reparação" no campo Origem da Ação
    E selecionar Sim
    Então o sistema apaga o registo da aba Providencia
    E esconde a aba Providencia

Cenario: Conferir botão Finalizar
    E selecionar a opção 'Definição de medidas de reparação' no campo Origem da Ação
    E clicar em Atualizar
    E clicar na aba Providencias
    Quando clicar em Finalizar
    Então o sistema volta para o Grid de Vistorias