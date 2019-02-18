#language: pt
#utf-8
@ocorrenciaSubAbaIdentificacao
Funcionalidade: Verificar sua sub-aba identificação dentro da Ocorrência da Vistoria

#UserStory- 44200-SIPAI-Criar sub-aba Identificação


#Sprint 10
#SIPAI
#Eduardo Amorim

#Story

#COMO técnico QUERO visualizar as informações trazidas da Identificação
#PARA qdetalhar melhor o Relatório da Ocorrência “Ambiental”

Cenario: Verificar o não aparecimento da tela da sub aba identificação na geração de ocorrência na vistoria 'Não Ambiental'

Dado que tenha acessado o sigam
E logado no sistema com usuario 'gtiAdm' e senha 'a'
E entrado no módulo do SIPAI
E no menu Vistoria
E ter criado uma vistoria ambiental para uma Área Protegida que o Órgão gestor seja a Fundação Florestal
Quando criar uma ocorrência do tipo não ambiental
Então sistema não deve exibir aba de Identificação

Cenario: Verificar sub aba Identificação na geração de ocorrência na vistoria ambiental 'Ambiental' sem o preenchimento previo da aba equipe 

Dado que tenha acessado o sigam
E logado no sistema com usuario 'gtiAdm' e senha 'a'
E entrado no módulo do SIPAI
E no menu Vistoria
E clicar em editar a Vistoria criada anteriormente
E clicar na aba Ocorrência
Quando clicar em criar uma Ocorrência do tipo Ambiental
Então sistema deve exibir aba Identificação
E deve conter os campos previamente preenchidos Numero do Acia - Data de Emissão - Unidade de Conservação - Grupo - Categoria - Órgão Gestor - Unidade Responsável - Origem da Ação
E deve conter os campos Relatório de Vistoria Ambiental Nº tendo numero e Ano - Data de emissão do relatório que deve ser a data atual
E o campo Relatório da Ocorrência único passível de edição 
E deve conter o GRID Elaborador com os dados do usuario logado que criou a Ocorrência com as colunas Reponsável- Unidade de Origem
E deve conter os botões de Finalziar - Atualizar - Excluir - Retornar - Ajuda na Identificação da ocorrência da vistoria ambiental
Mas não deve conter o GRID Integrantes da UC 
E não deve conter o GRID Gestor com os dados do Gestor da Área Protegida

Cenario: Verificar campos Obrigatórios da sub aba Identificação 

Dado que tenha acessado o sigam
E logado no sistema com usuario 'gtiAdm' e senha 'a'
E entrado no módulo do SIPAI
E no menu Vistoria
E clicar em editar a Vistoria criada anteriormente
E clicar na aba Ocorrência
Quando clicar em editar uma Ocorrência do tipo Ambiental para identificação
E clicar no botão de atualizar na tela de identificação da ocorrência
Então sistema deve apresentar a Mensagem de Requerido ao lado do campo Relatório da Ocorrência

Cenario: Verificar gravação de dados da sub aba Identificação com preenchimento previo da Equipe da Área Protegida e da Equipe da Vistoria

Dado que tenha acessado o sigam
E logado no sistema com usuario 'gtiAdm' e senha 'a'
E entrado no módulo do SIPAI
E no menu Vistoria
E clicar em editar a Vistoria criada anteriormente
E clicar na aba Ocorrência
Quando clicar em criar uma Ocorrência do tipo Ambiental
E preencher o campo Relatório da Ocorrência 'Koritar colocando a flora em risco'
E clicar em Atualizar
Então sistema deve exibir Mensagem 'Dados salvos com sucesso'
E ter atualizado todos os GRIDs Integrantes com as colunas Nome - CPF - Cargo Função - Unidade
E ter Atualizado o GRID Gestor com as colunas Nome - CPF

Cenario: Verificar Alteração no Relatório da Ocorrência da sub aba Identificação

Dado que tenha acessado o sigam
E logado no sistema com usuario 'gtiAdm' e senha 'a'
E entrado no módulo do SIPAI
E no menu Vistoria
E clicar em editar a Vistoria criada anteriormente
E clicar na aba Ocorrência
Quando clicar em editar uma Ocorrência do tipo Ambiental para identificação
E alterar os dados do campos Relatório da Ocorrência 'Koritar colocando a fauna em risco'
E clicar em Finalziar
Então sistema deve gravar os dados e retornar para tela da Ocorrência

Cenario: Verificar Exclusão do registro de identificação da Ocorrência

Dado que tenha acessado o sigam
E logado no sistema com usuario 'gtiAdm' e senha 'a'
E entrado no módulo do SIPAI
E no menu Vistoria
E clicar em editar a Vistoria criada anteriormente
E clicar na aba Ocorrência
Quando clicar em editar uma Ocorrência do tipo Ambiental para identificação
E clicar em excluir Identificação da Ocorrência
E aceitar alerta de Exclusão
Então sistema deve apagar os dados do campo Relatorio da Ocorrência