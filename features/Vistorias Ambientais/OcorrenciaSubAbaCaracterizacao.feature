#language: pt
#utf-8
@OcorrenciaSubAbaCaracterizacao

Funcionalidade: Verificar sub-aba Caracterização da Area dentro da Ocorrência da Vistoria

#UserStory- 44057-SIPAI-Criar sub-aba Caracterização da Área

#Sprint 11
#SIPAI
#Renan Sano Ferrari

#Story
#COMO técnico 
#QUERO informar a Caracterização da Área na Vistoria Ambiental
#PARA detalhar melhor a Caracterização da Área na Ocorrência “Ambiental” ou “Não Ambiental”.


Cenario: Verificar tela de Especificação para ocorrência com ACIA
    Dado que tenha acessado o sigam
    E logado no sistema com usuario 'gtiAdm' e senha 'a'
    E entrado no módulo do SIPAI
    E acessar menu Vistoria Ambiental
    E clicar em Adicionar uma nova vistoria
    E preencher os campos da Vistoria Área Protegida FF '' - Dt Inicio ação '' - Hr Inicio ação '' - dt fim ação '' - hr fim ação '' - Origem da Ação '' - Registro Ocorrência 'Sim' - Área Fiscalizada 'Dentro' - Municipio '' - Endereço '' - Relatorio '' - latitude '' - Longitude ''
    E clicar em Atualizar Vistoria Ambiental
    E clicar na aba Ocorrência
    E clicar em criar uma Ocorrência do tipo Ambiental
    E preencher os campos da Ocorrência ''
    E clicar em Atualizar
    E preencher os campos Classe ocorrencia '' - Tipo ocorrencia '' - Área ocorrencia '' - Especificacao local ocorrencia '' - latitude '' - Longitude '' - Descricao ocorrencia ''
    Quando Clicar em Atualizar
    Então o sistema apresenta apresenta as abas Identificação - Especificação - Caracterização da Área - Apreensões - Providências - Envolvidos - Mapa - Anexos - Denúncia

Cenario: Verificar tela de Especificação para ocorrência sem ACIA
    Dado que tenha acessado o sigam
    E logado no sistema com usuario 'gtiAdm' e senha 'a'
    E entrado no módulo do SIPAI
    E acessar menu Vistoria Ambiental
    E clicar em Adicionar uma nova vistoria
    E preencher os campos da Vistoria Área Protegida '' - Dt Inicio ação '' - Hr Inicio ação '' - dt fim ação '' - hr fim ação '' - Origem da Ação '' - Registro Ocorrência 'Sim' - Área Fiscalizada 'Dentro' - Municipio '' - Endereço '' - Relatorio '' - latitude '' - Longitude ''
    E clicar em Atualizar Vistoria Ambiental
    E clicar na aba Ocorrência
    E clicar em criar uma Ocorrência do tipo Não Ambiental
    E preencher os campos da Ocorrência ''
    E clicar em Atualizar
    E preencher os campos Classe ocorrencia '' - Tipo ocorrencia '' - Área ocorrencia '' - Especificacao local ocorrencia '' - latitude '' - Longitude '' - Descricao ocorrencia ''
    Quando Clicar em Atualizar
    Então o sistema apresenta as abas Identificação - Especificação - Caracterização da Área - Apreensões - Providências - Envolvidos - Mapa - Anexos - Denúncia

Cenario: Conferir obrigatoriedades dos campos
    Dado que tenha acessado o sigam
    E logado no sistema com usuario 'gtiAdm' e senha 'a'
    E entrado no módulo do SIPAI
    E acessar menu Vistoria Ambiental
    E clicar em Adicionar uma nova vistoria
    E preencher os campos da Vistoria Área Protegida '' - Dt Inicio ação '' - Hr Inicio ação '' - dt fim ação '' - hr fim ação '' - Origem da Ação '' - Registro Ocorrência 'Sim' - Área Fiscalizada 'Dentro' - Municipio '' - Endereço '' - Relatorio '' - latitude '' - Longitude ''
    E clicar em Atualizar Vistoria Ambiental
    E clicar na aba Ocorrência
    E clicar em criar uma Ocorrência do tipo Não Ambiental
    E preencher os campos da Ocorrência ''
    E clicar em Atualizar
    E preencher os campos Classe ocorrencia '' - Tipo ocorrencia '' - Área ocorrencia '' - Especificacao local ocorrencia '' - latitude '' - Longitude '' - Descricao ocorrencia ''
    E Clicar em Atualizar
    Quando selecionar a aba Caracterização da área
    E clicar em Atualizar
    Então o sistema apresenta mensagem de Requerido! nos campos - Carecterística da Área - Tipo de Área - Bioma - Tipo de Vegetação - Estágio Sucessional - Área Degradada ha

Cenario: Conferir obrigatoriedades quando selecionado Não se aplica
    Dado que tenha acessado o sigam
    E logado no sistema com usuario 'gtiAdm' e senha 'a'
    E entrado no módulo do SIPAI
    E acessar menu Vistoria Ambiental
    E clicar em Adicionar uma nova vistoria
    E preencher os campos da Vistoria Área Protegida '' - Dt Inicio ação '' - Hr Inicio ação '' - dt fim ação '' - hr fim ação '' - Origem da Ação '' - Registro Ocorrência 'Sim' - Área Fiscalizada 'Dentro' - Municipio '' - Endereço '' - Relatorio '' - latitude '' - Longitude ''
    E clicar em Atualizar Vistoria Ambiental
    E clicar na aba Ocorrência
    E clicar em criar uma Ocorrência do tipo Não Ambiental
    E preencher os campos da Ocorrência ''
    E clicar em Atualizar
    E preencher os campos Classe ocorrencia '' - Tipo ocorrencia '' - Área ocorrencia '' - Especificacao local ocorrencia '' - latitude '' - Longitude '' - Descricao ocorrencia ''
    E Clicar em Atualizar
    E selecionar a aba Caracterização da área
    Quando selecionar a opção Não se aplica frente ao campo Tipo de área
    E clicar em Atualizar
    Então o sistema apresenta mensagem de inclusão com sucesso

Cenario: Conferir apresentação dos campos vindo do dicionário Característica da área
    Dado que tenha acessado o sigam
    E logado no sistema com usuario 'gtiAdm' e senha 'a'
    E entrado no módulo do SIPAI
    E passar por Dicionários
    E Vistoria Ambiental
    E clicar em Característica da área
    E clicar em Novo
    E preencher campos - Título - Ordem - Descrição
    E selecionar campo Ativo
    E clicar em Finalizar
    E acessar menu Vistoria Ambiental
    E clicar em Adicionar uma nova vistoria
    E preencher os campos da Vistoria Área Protegida '' - Dt Inicio ação '' - Hr Inicio ação '' - dt fim ação '' - hr fim ação '' - Origem da Ação '' - Registro Ocorrência 'Sim' - Área Fiscalizada 'Dentro' - Municipio '' - Endereço '' - Relatorio '' - latitude '' - Longitude ''
    E clicar em Atualizar Vistoria Ambiental
    E clicar na aba Ocorrência
    E clicar em criar uma Ocorrência do tipo Não Ambiental
    E preencher os campos da Ocorrência ''
    E clicar em Atualizar
    E preencher os campos Classe ocorrencia '' - Tipo ocorrencia '' - Área ocorrencia '' - Especificacao local ocorrencia '' - latitude '' - Longitude '' - Descricao ocorrencia ''
    E Clicar em Atualizar
    E selecionar a aba Caracterização da área
    Quando selecionar as opções de Característica da área
    Então o sistema apresenta os dados cadastrados no dicionário anteriormente

Cenario: Conferir apresentação dos campos vindo do dicionário Estágio Sucessional
    Dado que tenha acessado o sigam
    E logado no sistema com usuario 'gtiAdm' e senha 'a'
    E entrado no módulo do SIPAI
    E passar por Dicionários
    E Vistoria Ambiental
    E clicar em Estágio Sucessional
    E clicar em Novo
    E preencher campos - Título - Ordem - Descrição
    E selecionar campo Ativo
    E clicar em Finalizar
    E acessar menu Vistoria Ambiental
    E clicar em Adicionar uma nova vistoria
    E preencher os campos da Vistoria Área Protegida '' - Dt Inicio ação '' - Hr Inicio ação '' - dt fim ação '' - hr fim ação '' - Origem da Ação '' - Registro Ocorrência 'Sim' - Área Fiscalizada 'Dentro' - Municipio '' - Endereço '' - Relatorio '' - latitude '' - Longitude ''
    E clicar em Atualizar Vistoria Ambiental
    E clicar na aba Ocorrência
    E clicar em criar uma Ocorrência do tipo Não Ambiental
    E preencher os campos da Ocorrência ''
    E clicar em Atualizar
    E preencher os campos Classe ocorrencia '' - Tipo ocorrencia '' - Área ocorrencia '' - Especificacao local ocorrencia '' - latitude '' - Longitude '' - Descricao ocorrencia ''
    E Clicar em Atualizar
    E selecionar a aba Caracterização da área
    Quando selecionar as opções de Estágio Sucessional
    Então o sistema apresenta os dados cadastrados no dicionário anteriormente

Cenario: Conferir apresentação dos campos vindo do dicionário Tipo de Área
    Dado que tenha acessado o sigam
    E logado no sistema com usuario 'gtiAdm' e senha 'a'
    E passar por Denuncia
    E clicar em Dicionário Geral
    E clicar em Novo
    E preencher Ordem
    E incluir código do dicionário 'Tipo área'
    E preencher Nome
    E clicar em Finalizar
    E entrado no módulo do SIPAI
    E acessar menu Vistoria Ambiental
    E clicar em Adicionar uma nova vistoria
    E preencher os campos da Vistoria Área Protegida '' - Dt Inicio ação '' - Hr Inicio ação '' - dt fim ação '' - hr fim ação '' - Origem da Ação '' - Registro Ocorrência 'Sim' - Área Fiscalizada 'Dentro' - Municipio '' - Endereço '' - Relatorio '' - latitude '' - Longitude ''
    E clicar em Atualizar Vistoria Ambiental
    E clicar na aba Ocorrência
    E clicar em criar uma Ocorrência do tipo Não Ambiental
    E preencher os campos da Ocorrência ''
    E clicar em Atualizar
    E preencher os campos Classe ocorrencia '' - Tipo ocorrencia '' - Área ocorrencia '' - Especificacao local ocorrencia '' - latitude '' - Longitude '' - Descricao ocorrencia ''
    E Clicar em Atualizar
    E selecionar a aba Caracterização da área
    Quando selecionar as opções de Tipo de Área
    Então o sistema apresenta os dados cadastrados no dicionário anteriormente

Cenario: Conferir apresentação dos campos vindo do dicionário Tipo de Vegetação
    Dado que tenha acessado o sigam
    E logado no sistema com usuario 'gtiAdm' e senha 'a'
    E passar por Portal
    E passar por Tabelas Licenciamento
    E clicar em Tipo de Vegetação
    E clicar em Novo
    E preencher Categoria
    E preencher Nome da Vegetação
    E selecionar situação Ativa
    E clicar em Atualizar
    E entrado no módulo do SIPAI
    E acessar menu Vistoria Ambiental
    E clicar em Adicionar uma nova vistoria
    E preencher os campos da Vistoria Área Protegida '' - Dt Inicio ação '' - Hr Inicio ação '' - dt fim ação '' - hr fim ação '' - Origem da Ação '' - Registro Ocorrência 'Sim' - Área Fiscalizada 'Dentro' - Municipio '' - Endereço '' - Relatorio '' - latitude '' - Longitude ''
    E clicar em Atualizar Vistoria Ambiental
    E clicar na aba Ocorrência
    E clicar em criar uma Ocorrência do tipo Não Ambiental
    E preencher os campos da Ocorrência ''
    E clicar em Atualizar
    E preencher os campos Classe ocorrencia '' - Tipo ocorrencia '' - Área ocorrencia '' - Especificacao local ocorrencia '' - latitude '' - Longitude '' - Descricao ocorrencia ''
    E Clicar em Atualizar
    E selecionar a aba Caracterização da área
    Quando selecionar as opções de Tipo de Vegetação
    Então o sistema apresenta os dados cadastrados no dicionário anteriormente