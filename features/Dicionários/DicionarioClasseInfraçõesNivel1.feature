#language: pt
#utf-8
@dicclasseInfracoesNivel1
Funcionalidade: Verificar Dicionário de Cliasse e Infrações Nível 1



#Sprint 11
#SIPAI
#Eduardo Amorim

#UserStory 44302-SIPAI-Criar Dicionário Classe Infração (Nível 1)

#Story

#COMO técnico QUERO que seja criado o dicionário de Classe Infração (Nível 1)
#PARA  que seja possível ter o controle da Classe da Infração sempre quando precisar

Cenario: Verificar tela de Classe Infração Nivel 1

Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
E acessado o menu Portal
E acessado o menu Tabela Fiscalicação
Quando clicar em Classe Infração Nivel 1
Então sistema deve apresentar componente de pesquisa com as opções 'Ativo/Inativo' - 'Código Classe Infração' - 'Classe Infração' - 'Descrição' 
E os botão de Novo - Pesquisar - Excel - itens no GRID

Cenario: Verificar tela de um novo Classe Infração Nivel 1

Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
E acessado o menu Portal
E acessado o menu Tabela Fiscalicação
E clicar em Classe Infração Nivel 1
Quando clicar para adicionar um Novo Classe Infração Nivel 1
Então sistema deve apresentar tela de cadastro de um novo item Classe Infração Nivel 1 com os campos Classe Infração - Código Classe infração - Ordem - Descrição - Ativo
E o campo de listagem Tipo de Infração com o botão de inclusão contendo na listagem todos os itens ativos da tabela de Tipo de infração ativo ou inativo
E os botões de Finalizar - Atualizar - Retornar - Ajuda na tela de cadastro de Classe Infração Nivel 1

Cenario: Verificar GRID de infrações no cadastro de um novo item do Classe Infração Nivel 1

Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
E acessado o menu Portal
E acessado o menu Tabela Fiscalicação
E clicar em Classe Infração Nivel 1
Quando clicar para adicionar um Novo Classe Infração Nivel 1
E incluir um tipo de infração ao GRID ''
Então sistema deve apresentar GRID com as colunas Excluir - Ativo - Código Tipo Infração - Tipo Infração

Cenario: Verificar opção de Excluir no grid de infrações na inclução de um novo Classe Infração Nivel 1

Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
E acessado o menu Portal
E acessado o menu Tabela Fiscalicação
E clicar em Classe Infração Nivel 1
Quando clicar para adicionar um Novo Classe Infração Nivel 1
E incluir um tipo infração ao GRID ''
E incluir mais um tipo infração ao grid ''
E clicar em excluir o segundo tipo infração incluida
Então sistema deve atualizar o grid retirando os dados do tipo infração excluida

Cenario: Verificar campos obrigatorios no cadastro do Classe Infração Nivel 1

Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
E acessado o menu Portal
E acessado o menu Tabela Fiscalicação
E clicar em Classe Infração Nivel 1
Quando clicar para adicionar um Novo Classe Infração Nivel 1
E clicar em Finalizar cadastro do novo Classe Infração Nivel 1
Então sistema deve apresentar a mensagem de obrigatorio para os campos Classe Infração - Código Classe Infração - Ordem - Tipo de Infração

Cenario: Verificar inclução de um novo Classe Infração Nivel 1

Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
E acessado o menu Portal
E acessado o menu Tabela Fiscalicação
E clicar em Classe Infração Nivel 1
Quando clicar para adicionar um Novo Classe Infração Nivel 1
E Preencher os campos Classe Infração '' - código Classe Infração '' - Ordem '' - Descrição '' - Ativo ''
E incluir um tipo infração ao GRID ''
E clicar em Atualizar Classe infração nivel 1
Então sistema deve apresentar a mensagem '' após ter gravado o novo Classe Infração Nivel 1

Cenario: Verificar tela de edição de um novo Classe Infração Nivel 1 já adicionado

Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
E acessado o menu Portal
E acessado o menu Tabela Fiscalicação
E clicar em Classe Infração Nivel 1
E pesquisar pelo Classe Infração Nivel 1 adicionardo anteriormente ''
Quando clicar em editar a classe de Infração
Então sistema deve apresentar os campos já preenchidos para Classe Infração Nivel 1
E o o botão de excluir deve esta na tela de edição da Classe Infração Nivel 1

Cenario: Verificar Edição do Classe Infração Nivel 1 já adicionardo

Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
E acessado o menu Portal
E acessado o menu Tabela Fiscalicação
E clicar em Classe Infração Nivel 1
E pesquisar pelo Classe Infração Nivel 1 adicionardo anteriormente ''
Quando clicar em editar o Tipo de Infração
E adicionar mais um tipo Infração ao seu grid
E clicar em Finalizar Classe Infração Nivel 1
Então sistema deve gravar os dados e atualizar o grid de Classe Infração Nivel 1

Cenario: Verificar Exclusão do Classe Infração Nivel 1 já adicionado

Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
E acessado o menu Portal
E acessado o menu Tabela Fiscalicação
E clicar em Classe Infração Nivel 1
E pesquisar pelo Classe Infração Nivel 1 adicionardo anteriormente ''
Quando clicar em editar a Classe Infração Nivel 1
E clicar em Excluir o Classe Infração Nivel 1
E aceitar o alerta de exclução 
Então sistema deve atualizar os dados do grid do Classe Infração Nivel 1 retirando os dados excluidos