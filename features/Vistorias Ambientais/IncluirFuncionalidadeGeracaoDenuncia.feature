#language: pt
#utf-8

@ocorrenciaSubAbaAnexos

Funcionalidade: Incluir funcionalidades na geração de Denúncia da Vistoria Ambiental

#UserStory- 45409 - Incluir funcionalidades na geração de Denúncia (Vistoria Ambiental)


#Sprint 12
#SIPAI
#Renan Sano Ferrari

#Story

#COMO técnico 
#QUERO incluir algumas funcionalidades na interface de geração de Denúncia
#PARA que seja possível remover registro, incluir providência automaticamente e arquivos na Denúncia aberta.

#BDD ajustado 11/04/2019 por Renan Sano - mudança por conta da User 46770-SIPAI-Incluir o Anexo da Vistoria Ambiental dentro do Processos

Cenario: Conferir geração automatica providencia
    Dado que tenha acessado o sigam
    E logado no sistema com usuario 'gtiAdm' e senha 'a'
    E entrado no módulo do SIPAI
    E no menu Vistoria
    E ter criado uma vistoria ambiental para uma Área Protegida que o Órgão gestor seja a Fundação Florestal
    E criar uma ocorrência
    E atualizar dados da aba Identificação
    E cadastrar dados da aba Especificação
    E cadastrar dados da aba Caracterização da Área
    E clicar na aba Denúncia
    Quando clicar em Gerar Denúncia 
    E selecionar o NIS apresentado
    E clicar em Ocorrências do menu
    E pesquisar pelo NIS da Denuncia
    E editar Denuncia
    E selecionar a aba Providencias 
    Então o sistema apresenta a tabela contendo o cadastro da providencia com o código da situação Inicial e a data limite de 7 dias

Cenario: Conferir exclusão de uma denuncia e providencia automática
    Dado que tenha acessado o sigam
    E logado no sistema com usuario 'gtiAdm' e senha 'a'
    E entrado no módulo do SIPAI
    E no menu Vistoria
    E ter criado uma vistoria ambiental para uma Área Protegida que o Órgão gestor seja a Fundação Florestal
    E criar uma ocorrência
    E atualizar dados da aba Identificação
    E cadastrar dados da aba Especificação
    E cadastrar dados da aba Caracterização da Área
    E clicar na aba Denúncia
    E clicar em Gerar Denúncia 
    E selecionar o NIS apresentado
    Quando clicar em Excluir
    E selecionar Sim
    E clicar em Ocorrências do menu
    E pesquisar pelo NIS da Denuncia
    E editar Denuncia
    E selecionar a aba Providencias 
    Então o sistema apresenta a tabela contendo o cadastro da providencia com o código Cancelada e a data limite de 15 dias

Cenario: Conferir Aba de Mapa migrado automaticamente
    Dado que tenha acessado o sigam
    E logado no sistema com usuario 'gtiAdm' e senha 'a'
    E entrado no módulo do SIPAI
    E no menu Vistoria
    E ter criado uma vistoria ambiental para uma Área Protegida que o Órgão gestor seja a Fundação Florestal
    E criar uma ocorrência
    E atualizar dados da aba Identificação
    E cadastrar dados da aba Especificação
    E cadastrar dados da aba Caracterização da Área
    E clicar na aba Denúncia
    Quando clicar em Gerar Denúncia 
    E selecionar o NIS apresentado
    E clicar em Ocorrências do menu
    E pesquisar pelo NIS da Denuncia
    E editar Denuncia
    E selecionar a aba Mapa 
    Então o sistema apresenta a aba mapa com o Grid de cadastro de poligonos
    E todos os polígonos da ocorrencia à denuncia mas sem migrar os atributos do mapa

Cenario: Conferir Aba de Anexos migrado automaticamente
    Dado que tenha acessado o sigam
    E logado no sistema com usuario 'gtiAdm' e senha 'a'
    E entrado no módulo do SIPAI
    E no menu Vistoria
    E ter criado uma vistoria ambiental para uma Área Protegida que o Órgão gestor seja a Fundação Florestal
    E criar uma ocorrência
    E atualizar dados da aba Identificação
    E cadastrar dados da aba Especificação
    E cadastrar dados da aba Caracterização da Área
    E clicar na aba Denúncia
    Quando clicar em Gerar Denúncia 
    E selecionar o NIS apresentado
    E clicar em Ocorrências do menu
    E pesquisar pelo NIS da Denuncia
    E editar Denuncia
    E selecionar a aba Anexos 
    Então o sistema apresenta todos arquivos da Ocorrencia à Denuncia
    E também é apresentado o PDF do Acia gerado na ocorrencia 

Cenário: conferir inclusão do extrato da Vistoria Ambiental para aba Anexos do Processo SIGAM quando tem AIA
    Dado que tenha acessado o sigam
    E logado no sistema com usuario 'gtiAdm' e senha 'a'
    E entrado no módulo do SIPAI
    E no menu Vistoria
    E ter criado uma vistoria ambiental para uma Área Protegida que o Órgão gestor seja a Fundação Florestal
    E criar uma ocorrência
    E atualizar dados da aba Identificação inclusive Número AIA ou Número AIA-e
    Quando clicar em Finalizar da aba Identificação
    E clicar em SIGAM
    E clicar em Processos
    E pesquisar pelo numero do AIA 
    E Editar o Processo em questão
    E selecionar a aba Anexos
    Então o sistema apresenta o GRID contendo o pdf 
