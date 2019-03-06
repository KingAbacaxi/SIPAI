#language: pt
#utf-8
@dicCadInfracoesAIA
Funcionalidade: Verificar Dicionário do Cadastro de infrações AIA do SIGAM




#SIPAI
#Eduardo Amorim
#feature de alterações do Dicionario, conforme:
#UserStory 44269-SIPAI-Ajustar Dicionário Infrações AIA 


Cenario: Verificar ajustes no dicionário de infrações AIA

Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
E acessado o menu Portal
E acessado o menu Tabela Fiscalicação
Quando clicar no menu Infração
E clicar em novo
Então sistema deve apresentar os novos campos Norma - Especificação da Norma - Código Enquadramento SIOPM - Tipificação Penal

Cenario: Verificar campos Obrigatorios no dicionario de infracões AIA

Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
E acessado o menu Portal
E acessado o menu Tabela Fiscalicação
Quando clicar no menu Infração
E clicar em Atualizar sem preencher os campos de Infração AIA
Então Sistema deve apresentar a mensagem de Obrigatório nos campos Norma - Especificação da Norma - Código Enquadramento SIOPM

Cenario: Verificar edição de uma infração com apresentação dos campos em branco

Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
E acessado o menu Portal
E acessado o menu Tabela Fiscalicação
Quando clicar no menu Infração
E clicar em editar uma infração já existente
Então Sistema deve trazer os novos campos da infração aia em branco Norma - Especificação da Norma - Código Enquadramento SIOPM

Cenario: Verificar preencher os novos campos da Infração AIA

Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
E acessado o menu Portal
E acessado o menu Tabela Fiscalicação
Quando clicar no menu Infração
E clicar em editar uma infração já existente
E preencher os campos Norma 'Caça a Animal' - Especificação da Norma 'Caça indefica de especie ameaçada' - Código Enquadramento SIOPM '123445'- Tipificação Penal 'lei 345 do código penal paragrafo 13'
E clicar em Finalizar infração AIA
Então sistema deve gravar infracão AIA

Cenario: Verificar exclusão de Infração AIA

Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
E acessado o menu Portal
E acessado o menu Tabela Fiscalicação
Quando clicar no menu Infração
E clicar em editar uma infração já alterado anteriormente
E clicar em excluir infração aia
E aceitar a mensagem de alerta da exclução do aia
Então sistema deve excluir o registro da infração do grid