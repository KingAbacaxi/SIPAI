#language: pt
#utf-8
@dictipoInfracaoNivel2
Funcionalidade: Verificar Dicionário Tipo de Infração Nivel 2

#UserStory- 44303-SIPAI-Criar Dicionário Tipo Infração (Nível 2)

#Sprint 11
#SIPAI
#Eduardo Amorim

#Story

#COMO técnico QUERO que seja criado o dicionário de Tipo Infração (Nível 2)
#PARA que seja possível ter o controle do Tipo Infração sempre quando precisar


Cenario: Verificar tela de Tipo de Infração Nivel 2

Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
E acessado o menu Portal
E acessado o menu Tabela Fiscalicação
Quando clicar em Tipo de Infração Nível 2
Então sistema deve apresentar componente de pesquisa com as opções 'Ativo/Inativo' - 'Tipo Infração' - 'Código Tipo Infração' - 'Descrição' 
E os botão de Novo - Pesquisar - Excel - itens no GRID

Cenario: Verificar tela de um novo Tipo de Infração Nivel 2

Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
E acessado o menu Portal
E acessado o menu Tabela Fiscalicação
E clicar em Tipo de Infração Nível 2
Quando clicar para adicionar um Novo Tipo de Infração Nivel 2
Então sistema deve apresentar tela de cadastro de um novo item de infração nivel 2 com os campos Tipo infração - Código Tipo infração - Ordem - Descrição 
E o campo de listagem Infrações com o botão de inclusão contendo na listagem todos os itens ativos da tabela de infração ativo ou inativo
E os botões de Finalizar - Atualizar - Retornar - Ajuda na tela de cadastro de infração nivel 2

Cenario: Verificar GRID de infrações no cadastro de um novo item do tipo de infração nivel 2

Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
E acessado o menu Portal
E acessado o menu Tabela Fiscalicação
E clicar em Tipo de Infração Nível 2
Quando clicar para adicionar um Novo Tipo de Infração Nivel 2
E incluir uma infração ao GRID ''
Então sistema deve apresentar GRID com as colunas Excluir - Ativo - ID da Infração - Código da Infração - Normal - Especificação da Norma - Descrição da Infração 

Cenario: Verificar opção de Excluir no grid de infrações na inclução de um novo tipo de Infração nivel 2

Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
E acessado o menu Portal
E acessado o menu Tabela Fiscalicação
E clicar em Tipo de Infração Nível 2
Quando clicar para adicionar um Novo Tipo de Infração Nivel 2
E incluir uma infração ao GRID ''
E incluir mais uma infração ao grid ''
E clicar em excluir a segunda infração incluida
Então sistema deve atualizar o grid retirando os dados da infração excluir

Cenario: Verificar campos obrigatorios no cadastro do Tipo de Infração nivel 2

Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
E acessado o menu Portal
E acessado o menu Tabela Fiscalicação
E clicar em Tipo de Infração Nível 2
Quando clicar para adicionar um Novo Tipo de Infração Nivel 2
E clicar em Finalizar cadastro do novo tipo de infração nivel 2
Então sistema deve apresentar a mensagem de obrigatorio para os campos Tipo Infração - Código Tipo Infração - Ordem - Infração

Cenario: Verificar inclução de um novo Tipo de Infração Nivel 2

Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
E acessado o menu Portal
E acessado o menu Tabela Fiscalicação
E clicar em Tipo de Infração Nível 2
Quando clicar para adicionar um Novo Tipo de Infração Nivel 2
E Preencher os campos Tipo Infração '' - código Tipo Infração '' - Ordem '' - Descrição '' - Ativo ''
E incluir uma infração ao GRID ''
E clicar em Atualizar
Então sistema deve apresentar a mensagem '' após ter gravado o novo tipo de infração nivel 2

Cenario: Vertificar tela de edição de um tipod e infração nivel 2 já adicionado

Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
E acessado o menu Portal
E acessado o menu Tabela Fiscalicação
E clicar em Tipo de Infração Nível 2
E pesquisar pelo Tipo de infração nivel 2 adicionardo anteriormente ''
Quando clicar em editar o Tipo de Infração
Então sistema deve apresentar os campos já preenchidos para o tipod e infração nivel 2
E o o botão de excluir deve estpa na tela de edição do tipod e infração nivel 2

Cenario: Verificar Edição do tipo de Infração nivel 2 já adicionardo

Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
E acessado o menu Portal
E acessado o menu Tabela Fiscalicação
E clicar em Tipo de Infração Nível 2
E pesquisar pelo Tipo de infração nivel 2 adicionardo anteriormente ''
Quando clicar em editar o Tipo de Infração
E adicionar mais uma Infração ao seu grid
E clicar em Finalizar
Então sistema deve gravar os dados e atualizar o grid

Cenario: Verificar Exclusão do tipo de Infração nivel 2 já adicionado

Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
E acessado o menu Portal
E acessado o menu Tabela Fiscalicação
E clicar em Tipo de Infração Nível 2
E pesquisar pelo Tipo de infração nivel 2 adicionardo anteriormente ''
Quando clicar em editar o Tipo de Infração
E clicar em Excluir o tipo de infração nivel 2
E aceitar o alerta de exclução 
Então sistema deve atualizar os dados do grid do tipo de infração nivel 2 retirando os dados excluidos