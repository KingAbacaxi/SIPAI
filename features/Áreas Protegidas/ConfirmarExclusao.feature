#language: pt
#UTF-8

#UserStory: 46766-SIPAI-Incluir Mensagem de Excluir para Áreas Protegidas
#Bruno Spinelli
#Sprint 13
#25/04/2019

#COMO técnico
#QUERO que sejam inclusas mensagens de confirmação de exclusão no Módulo Área Protegidas
#PARA que possa facilitar o usuário na tomada de decisão na exclusão do registro.

Funcionalidade: Mensagem de confirmação do botão excluir
    Cenário: Usuário clicar no botão excluir em Edificações
        Dado acessado o SIGAM
        E ter clicado em logar
        E logado com usuario 'gtiAdm' e senha 'a'
        E acessado o SIPAI
        E acessado as Áreas Protegidas
        E ter clicado em editar uma área protegida
        E ter acessado a aba Infraestrutura
        E ter acessado a sub-aba Edificações
        E ter preenchido os campos da edificação - Edificação: "Edificação 03" - Descrição: "teste1" - Situação de Conservação: "Estado Razoável" - Quantidade: "7"
        E clicado em adicionar edificação
        Quando clicar em Excluir no grid na linha - "Edificação 03" - "teste" - "Estado Razoável" - "7"
        Então sistema deve abrir mensagem
        E mensagem deve conter o texto: "Você confirma a exclusão deste Registro?"
        E mensagem deve conter o botão "OK"
        E mensagem deve conter o botão "Cancelar"
    Cenário: Usuário confirmar exclusão em Edificações
        Dado acessado o SIGAM
        E ter clicado em logar
        E logado com usuario 'gtiAdm' e senha 'a'
        E acessado o SIPAI
        E acessado as Áreas Protegidas
        E ter clicado em editar uma área protegida
        E ter acessado a aba Infraestrutura
        E ter acessado a sub-aba Edificações
        E ter preenchido os campos da edificação - Edificação: "Edificação 03" - Descrição: "teste" - Situação de Conservação: "Estado Razoável" - Quantidade: "7"
        E clicado em adicionar edificação
        E clicado em Excluir no grid na linha - "Edificação 03" - "teste" - "Estado Razoável" - "7"
        Quando clicar em "OK"
        Então sistema deve fechar mensagem
        E sistema deve excluir da grid os dados na linha - "Edificação 03" - "teste" - "Estado Razoável" - "7"
    Cenário: Usuário cancelar exclusão em Edificações
        Dado acessado o SIGAM
        E ter clicado em logar
        E logado com usuario 'gtiAdm' e senha 'a'
        E acessado o SIPAI
        E acessado as Áreas Protegidas
        E ter clicado em editar uma área protegida
        E ter acessado a aba Infraestrutura
        E ter acessado a sub-aba Edificações
        E ter preenchido os campos da edificação - Edificação: "Edificação 03" - Descrição: "teste" - Situação de Conservação: "Estado Razoável" - Quantidade: "7"
        E clicado em adicionar edificação
        E clicado em Excluir no grid na linha - "Edificação 03" - "teste" - "Estado Razoável" - "7"
        Quando clicar em "Cancelar"
        Então sistema deve fechar mensagem
        E sistema deve manter na grid os dados na linha - "Edificação 03" - "teste" - "Estado Razoável" - "7"
    Cenário: Usuário clicar no botão excluir em Extruturas de comunicação
        Dado acessado o SIGAM
        E ter clicado em logar
        E logado com usuario 'gtiAdm' e senha 'a'
        E acessado o SIPAI
        E acessado as Áreas Protegidas
        E ter clicado em editar uma área protegida
        E ter acessado a aba Infraestrutura
        E ter acessado a sub-aba Extruturas de comunicação
        E ter preenchido os campos da estrutura de comunicação - Estrutura de comunicação: "Estrutura de comunicação 3" - Descrição: "teste" - Situação de Conservação: "Estado Razoável" - Quantidade: "7"
        E clicado em adicionar estrutura
        Quando clicar em Excluir no grid na linha - "Estrutura de comunicação 03" - "teste" - "Estado Razoável" - "7"
        Então sistema deve abrir mensagem
        E mensagem deve conter o texto: "Você confirma a exclusão deste Registro?"
        E mensagem deve conter o botão "OK"
        E mensagem deve conter o botão "Cancelar"
    Cenário: Usuário confirmar exclusão em Extruturas de comunicação
        Dado acessado o SIGAM
        E ter clicado em logar
        E logado com usuario 'gtiAdm' e senha 'a'
        E acessado o SIPAI
        E acessado as Áreas Protegidas
        E ter clicado em editar uma área protegida
        E ter acessado a aba Infraestrutura
        E ter acessado a sub-aba Extruturas de comunicação
        E ter preenchido os campos da estrutura de comunicação - Estrutura de comunicação: "Estrutura de comunicação 03" - Descrição: "teste" - Situação de Conservação: "Estado Razoável" - Quantidade: "7"
        E clicado em adicionar estrutura
        E clicado em Excluir no grid na linha - "Estrutura de comunicação 03" - "teste" - "Estado Razoável" - "7"
        Quando clicar em "OK"
        Então sistema deve fechar mensagem
        E sistema deve excluir da grid os dados na linha - "Estrutura de comunicação 03" - "teste" - "Estado Razoável" - "7"
    Cenário: Usuário cancelar exclusão em Extruturas de comunicação
        Dado acessado o SIGAM
        E ter clicado em logar
        E logado com usuario 'gtiAdm' e senha 'a'
        E acessado o SIPAI
        E acessado as Áreas Protegidas
        E ter clicado em editar uma área protegida
        E ter acessado a aba Infraestrutura
        E ter acessado a sub-aba Extruturas de comunicação
        E ter preenchido os campos da estrutura de comunicação - Estrutura de comunicação: "Estrutura de comunicação 03" - Descrição: "teste" - Situação de Conservação: "Estado Razoável" - Quantidade: "7"
        E clicado em adicionar estrutura
        E clicado em Excluir no grid na linha - "Estrutura de comunicação 03" - "teste" - "Estado Razoável" - "7"
        Quando clicar em "Cancelar"
        Então sistema deve fechar mensagem
        E sistema deve manter na grid os dados na linha - "Estrutura de comunicação 03" - "teste" - "Estado Razoável" - "7"
    Cenário: Usuário clicar no botão excluir em Equipamentos
        Dado acessado o SIGAM
        E ter clicado em logar
        E logado com usuario 'gtiAdm' e senha 'a'
        E acessado o SIPAI
        E acessado as Áreas Protegidas
        E ter clicado em editar uma área protegida
        E ter acessado a aba Infraestrutura
        E ter acessado a sub-aba Equipamentos
        E ter preenchido os campos do equipamento - Equipamento: "Equipamento 03" - Descrição: "teste" - Situação de Conservação: "Mal estado/quebrado" - Quantidade: "7"
        E clicado em adicionar equipamento
        Quando clicar em Excluir no grid na linha - "Equipamento 03" - "teste" - "Mal estado/quebrado" - "7"
        Então sistema deve abrir mensagem
        E mensagem deve conter o texto: "Você confirma a exclusão deste Registro?"
        E mensagem deve conter o botão "OK"
        E mensagem deve conter o botão "Cancelar"
    Cenário: Usuário confirmar exclusão em Equipamentos
        Dado acessado o SIGAM
        E ter clicado em logar
        E logado com usuario 'gtiAdm' e senha 'a'
        E acessado o SIPAI
        E acessado as Áreas Protegidas
        E ter clicado em editar uma área protegida
        E ter acessado a aba Infraestrutura
        E ter acessado a sub-aba Equipamentos
        E ter preenchido os campos do equipamento - Equipamento: "Equipamento 03" - Descrição: "teste" - Situação de Conservação: "Mal estado/quebrado" - Quantidade: "7"
        E clicado em adicionar equipamento
        E clicado em Excluir no grid na linha - "Equipamento 03" - "teste" - "Mal estado/quebrado" - "7"
        Quando clicar em "OK"
        Então sistema deve fechar mensagem
        E sistema deve excluir da grid os dados na linha - "Equipamento 03" - "teste" - "Mal estado/quebrado" - "7"
    Cenário: Usuário cancelar exclusão em Equipamentos
        Dado acessado o SIGAM
        E ter clicado em logar
        E logado com usuario 'gtiAdm' e senha 'a'
        E acessado o SIPAI
        E acessado as Áreas Protegidas
        E ter clicado em editar uma área protegida
        E ter acessado a aba Infraestrutura
        E ter acessado a sub-aba Equipamentos
        E ter preenchido os campos do equipamento - Equipamento: "Equipamento 03" - Descrição: "teste" - Situação de Conservação: "Mal estado/quebrado" - Quantidade: "7"
        E clicado em adicionar equipamento
        E clicado em Excluir no grid na linha - "Equipamento 03" - "teste" - "Mal estado/quebrado" - "7"
        Quando clicar em "Cancelar"
        Então sistema deve fechar mensagem
        E sistema deve manter na grid os dados na linha - "Equipamento 03" - "teste" - "Mal estado/quebrado" - "7"
    Cenário: Usuário clicar no botão excluir em Veículos e Embarcações
        Dado acessado o SIGAM
        E ter clicado em logar
        E logado com usuario 'gtiAdm' e senha 'a'
        E acessado o SIPAI
        E acessado as Áreas Protegidas
        E ter clicado em editar uma área protegida
        E ter acessado a aba Infraestrutura
        E ter acessado a sub-aba Veículos e Embarcações
        E ter preenchido os campos do veículo/embarcação - Veículo/Embarcação: "Trator" - Data da Aquisição: "25/04/2019" - Placa/Registro: "Teste" - Descrição: "Teste1" - Situação de Conservação: "Ótimo estado"
        E clicado em adicionar veículo/embarcação
        Quando clicar em Excluir no grid na linha - "Trator" - "25/04/2019" - "Teste" - "Teste1" - "Ótimo estado"
        Então sistema deve abrir mensagem
        E mensagem deve conter o texto: "Você confirma a exclusão deste Registro?"
        E mensagem deve conter o botão "OK"
        E mensagem deve conter o botão "Cancelar"
    Cenário: Usuário confirmar exclusão em Veículos e Embarcações
        Dado acessado o SIGAM
        E ter clicado em logar
        E logado com usuario 'gtiAdm' e senha 'a'
        E acessado o SIPAI
        E acessado as Áreas Protegidas
        E ter clicado em editar uma área protegida
        E ter acessado a aba Infraestrutura
        E ter acessado a sub-aba Veículos e Embarcações
        E ter preenchido os campos do veículo/embarcação - Veículo/Embarcação: "Trator" - Data da Aquisição: "25/04/2019" - Placa/Registro: "Teste" - Descrição: "Teste1" - Situação de Conservação: "Ótimo estado"
        E clicado em adicionar veículo/embarcação
        E clicado em Excluir no grid na linha - "Trator" - "25/04/2019" - "Teste" - "Teste1" - "Ótimo estado"
        Quando clicar em "OK"
        Então sistema deve fechar mensagem
        E sistema deve excluir da grid os dados na linha - "Trator" - "25/04/2019" - "Teste" - "Teste1" - "Ótimo estado"
    Cenário: Usuário cancelar exclusão em Veículos e Embarcações
        Dado acessado o SIGAM
        E ter clicado em logar
        E logado com usuario 'gtiAdm' e senha 'a'
        E acessado o SIPAI
        E acessado as Áreas Protegidas
        E ter clicado em editar uma área protegida
        E ter acessado a aba Infraestrutura
        E ter acessado a sub-aba Veículos e Embarcações
        E ter preenchido os campos do veículo/embarcação - Veículo/Embarcação: "Trator" - Data da Aquisição: "25/04/2019" - Placa/Registro: "Teste" - Descrição: "Teste1" - Situação de Conservação: "Ótimo estado"
        E clicado em adicionar veículo/embarcação
        E clicado em Excluir no grid na linha - "Trator" - "25/04/2019" - "Teste" - "Teste1" - "Ótimo estado"
        Quando clicar em "Cancelar"
        Então sistema deve fechar mensagem
        E sistema deve manter na grid os dados na linha - "Trator" - "25/04/2019" - "Teste" - "Teste1" - "Ótimo estado"
    Cenário: Usuário clicar no botão excluir em Plano de Fiscalização
        Dado acessado o SIGAM
        E ter clicado em logar
        E logado com usuario 'gtiAdm' e senha 'a'
        E acessado o SIPAI
        E acessado as Áreas Protegidas
        E ter clicado em editar uma área protegida
        E ter acessado a aba Proteção
        E ter acessado a sub-aba Plano de Fiscalização
        E ter clicado em adicionar anexo
        E ter preenchido os campos do anexo - Data do Anexo: "25/04/2019" - Título do Anexo: "Teste" - Tipo de Documento: "Plano de Fiscalização 2" - Responsável: "Teste1" - Descrição: "Teste2" - Arquivo para Carregar
        E ter clicado em finalizar cadastro de anexo
        Quando clicar em Excluir no grid na linha - "Teste" - "25/04/2019" - "Teste" - "Plano de Fiscalização 2" - ".PNG" - "18"
        Então sistema deve abrir mensagem
        E mensagem deve conter o texto: "Você confirma a exclusão deste Registro?"
        E mensagem deve conter o botão "OK"
        E mensagem deve conter o botão "Cancelar"
    Cenário: Usuário confirmar exclusão em Plano de Fiscalização
        Dado acessado o SIGAM
        E ter clicado em logar
        E logado com usuario 'gtiAdm' e senha 'a'
        E acessado o SIPAI
        E acessado as Áreas Protegidas
        E ter clicado em editar uma área protegida
        E ter acessado a aba Proteção
        E ter acessado a sub-aba Plano de Fiscalização
        E ter clicado em adicionar anexo
        E ter preenchido os campos do anexo - Data do Anexo: "25/04/2019" - Título do Anexo: "Teste" - Tipo de Documento: "Plano de Fiscalização 2" - Responsável: "Teste1" - Descrição: "Teste2" - Arquivo para Carregar
        E ter clicado em finalizar cadastro de anexo
        E ter clicado em Excluir no grid na linha - "Teste" - "25/04/2019" - "Teste" - "Plano de Fiscalização 2" - ".PNG" - "18"
        Quando clicar em "OK"
        Então sistema deve fechar mensagem
        E sistema deve excluir da grid os dados na linha - "Teste" - "25/04/2019" - "Teste" - "Plano de Fiscalização 2" - ".PNG" - "18"
    Cenário: Usuário cancelar exclusão em Plano de Fiscalização
        Dado acessado o SIGAM
        E ter clicado em logar
        E logado com usuario 'gtiAdm' e senha 'a'
        E acessado o SIPAI
        E acessado as Áreas Protegidas
        E ter clicado em editar uma área protegida
        E ter acessado a aba Proteção
        E ter acessado a sub-aba Plano de Fiscalização
        E ter clicado em adicionar anexo
        E ter preenchido os campos do anexo - Data do Anexo: "25/04/2019" - Título do Anexo: "Teste" - Tipo de Documento: "Plano de Fiscalização 2" - Responsável: "Teste1" - Descrição: "Teste2" - Arquivo para Carregar
        E ter clicado em finalizar cadastro de anexo
        E ter clicado em Excluir no grid na linha - "Teste" - "25/04/2019" - "Teste" - "Plano de Fiscalização 2" - ".PNG" - "18"
        Quando clicar em "Cancelar"
        Então sistema deve fechar mensagem
        E sistema deve manter na grid os dados na linha - "Teste" - "25/04/2019" - "Teste" - "Plano de Fiscalização 2" - ".PNG" - "18"
    Cenário: Usuário clicar no botão excluir em Operação Corta Fogo
        Dado acessado o SIGAM
        E ter clicado em logar
        E logado com usuario 'gtiAdm' e senha 'a'
        E acessado o SIPAI
        E acessado as Áreas Protegidas
        E ter clicado em editar uma área protegida
        E ter acessado a aba Proteção
        E ter acessado a sub-aba Operação Corta Fogo
        E ter clicado em adicionar anexo
        E ter preenchido os campos do anexo - Data do Anexo: "25/04/2019" - Título do Anexo: "Teste" - Tipo de Documento: "Outros Documentos" - Responsável: "Teste1" - Descrição: "Teste2" - Arquivo para Carregar
        E ter clicado em finalizar cadastro de anexo
        Quando clicar em Excluir no grid na linha - "Teste" - "25/04/2019" - "Teste" - "Outros Documentos" - ".PNG" - "18"
        Então sistema deve abrir mensagem
        E mensagem deve conter o texto: "Você confirma a exclusão deste Registro?"
        E mensagem deve conter o botão "OK"
        E mensagem deve conter o botão "Cancelar"
    Cenário: Usuário confirmar exclusão em Operação Corta Fogo
        Dado acessado o SIGAM
        E ter clicado em logar
        E logado com usuario 'gtiAdm' e senha 'a'
        E acessado o SIPAI
        E acessado as Áreas Protegidas
        E ter clicado em editar uma área protegida
        E ter acessado a aba Proteção
        E ter acessado a sub-aba Operação Corta Fogo
        E ter clicado em adicionar anexo
        E ter preenchido os campos do anexo - Data do Anexo: "25/04/2019" - Título do Anexo: "Teste" - Tipo de Documento: "Outros Documentos" - Responsável: "Teste1" - Descrição: "Teste2" - Arquivo para Carregar
        E ter clicado em finalizar cadastro de anexo
        E ter clicado em Excluir no grid na linha - "Teste" - "25/04/2019" - "Teste" - "Outros Documentos" - ".PNG" - "18"
        Quando clicar em "OK"
        Então sistema deve fechar mensagem
        E sistema deve excluir da grid os dados na linha - "Teste" - "25/04/2019" - "Teste" - "Outros Documentos" - ".PNG" - "18"
    Cenário: Usuário cancelar exclusão em Operação Corta Fogo
        Dado acessado o SIGAM
        E ter clicado em logar
        E logado com usuario 'gtiAdm' e senha 'a'
        E acessado o SIPAI
        E acessado as Áreas Protegidas
        E ter clicado em editar uma área protegida
        E ter acessado a aba Proteção
        E ter acessado a sub-aba Operação Corta Fogo
        E ter clicado em adicionar anexo
        E ter preenchido os campos do anexo - Data do Anexo: "25/04/2019" - Título do Anexo: "Teste" - Tipo de Documento: "Outros Documentos" - Responsável: "Teste1" - Descrição: "Teste2" - Arquivo para Carregar
        E ter clicado em finalizar cadastro de anexo
        E ter clicado em Excluir no grid na linha - "Teste" - "25/04/2019" - "Teste" - "Outros Documentos" - ".PNG" - "18"
        Quando clicar em "Cancelar"
        Então sistema deve fechar mensagem
        E sistema deve manter na grid os dados na linha - "Teste" - "25/04/2019" - "Teste" - "Outros Documentos" - ".PNG" - "18"
    Cenário: Usuário clicar no botão excluir em Anexos
        Dado acessado o SIGAM
        E ter clicado em logar
        E logado com usuario 'gtiAdm' e senha 'a'
        E acessado o SIPAI
        E acessado as Áreas Protegidas
        E ter clicado em editar uma área protegida
        E ter acessado a aba Anexos
        E ter clicado em adicionar anexo
        E ter preenchido os campos do anexo - Data do Anexo: "25/04/2019" - Título do Anexo: "Teste" - Tipo de Documento: "Outros Documentos" - Responsável: "Teste1" - Descrição: "Teste2" - Arquivo para Carregar
        E ter clicado em finalizar cadastro de anexo
        Quando clicar em Excluir no grid na linha - "Teste" - "25/04/2019" - "Teste" - "Outros Documentos" - ".PNG" - "18"
        Então sistema deve abrir mensagem
        E mensagem deve conter o texto: "Você confirma a exclusão deste Registro?"
        E mensagem deve conter o botão "OK"
        E mensagem deve conter o botão "Cancelar"
    Cenário: Usuário confirmar exclusão em Anexos
        Dado acessado o SIGAM
        E ter clicado em logar
        E logado com usuario 'gtiAdm' e senha 'a'
        E acessado o SIPAI
        E acessado as Áreas Protegidas
        E ter clicado em editar uma área protegida
        E ter acessado a aba Anexos
        E ter clicado em adicionar anexo
        E ter preenchido os campos do anexo - Data do Anexo: "25/04/2019" - Título do Anexo: "Teste" - Tipo de Documento: "Outros Documentos" - Responsável: "Teste1" - Descrição: "Teste2" - Arquivo para Carregar
        E ter clicado em finalizar cadastro de anexo
        E ter clicado em Excluir no grid na linha - "Teste" - "25/04/2019" - "Teste" - "Outros Documentos" - ".PNG" - "18"
        Quando clicar em "OK"
        Então sistema deve fechar mensagem
        E sistema deve excluir da grid os dados na linha - "Teste" - "25/04/2019" - "Teste" - "Outros Documentos" - ".PNG" - "18"
    Cenário: Usuário cancelar exclusão em Anexos
        Dado acessado o SIGAM
        E ter clicado em logar
        E logado com usuario 'gtiAdm' e senha 'a'
        E acessado o SIPAI
        E acessado as Áreas Protegidas
        E ter clicado em editar uma área protegida
        E ter acessado a aba Anexos
        E ter clicado em adicionar anexo
        E ter preenchido os campos do anexo - Data do Anexo: "25/04/2019" - Título do Anexo: "Teste" - Tipo de Documento: "Outros Documentos" - Responsável: "Teste1" - Descrição: "Teste2" - Arquivo para Carregar
        E ter clicado em finalizar cadastro de anexo
        E ter clicado em Excluir no grid na linha - "Teste" - "25/04/2019" - "Teste" - "Outros Documentos" - ".PNG" - "18"
        Quando clicar em "Cancelar"
        Então sistema deve fechar mensagem
        E sistema deve manter na grid os dados na linha - "Teste" - "25/04/2019" - "Teste" - "Outros Documentos" - ".PNG" - "18"

