#language: pt
#utf-8

Funcionalidade: Verificar criação do módulo de Vistorias

#UserStory- 42765-UserStory-Criar módulo de Vistorias

#Sprint 7
#SIPAI
#Eduardo Amorim

#Story

#COMO técnico QUERO que seja criado o módulo de Relatório de Vistoria Ambienta
#PARA que eu possa ter acesso às informações já cadastradas, bem como acesso à inclusão de outras.

Cenario: Verificar módulo de vistoria
Dado que esteja no sigam
E logado no sistema com usuario 'gtiAdm' e senha 'a'
E tenha acessado o SIPAI
Quando clicar no modulo de Visotria Ambiental
Então sistema deve exibir tela do módulo de Vistorias
E deve ter os botões de 'Adicionar' 'Pesquisa' e 'Excel'

Esquema do Cenario: Verificar grid de vistoria
Quando clicar em Pesquisa
Então sistema deve apresentar Grid com os '<coluna>'

Exemplos:
|coluna|
|Edição|
|NIS|
|Número do Relatório|
|Data da Ação|
|Área Protegida|
|Órgão Gestor|
|Origem da Ação|
|Registro de Ocorrência|

Esquema do Cenario: Verificar filtros de pesquisa
Quando clicar na opcao '<filtro>'
E preencher o paramentro '<valor>'
E clicar em Adicionar
E clicar em Pesquisar
Então sistema deve trazer o valor da pesquisa de acordo com os filtros

Exemplos:
|filtro                |valor|
|NIS                   |254121|
|Número do Relatório   |1548978/2018|
|Área Protegida        |Estação Ecológica de Valinhos|
|Órgão Gestor          |Fundação Florestal|
|Data da Ação          |12/12/2018|
|Origem da Ação        |Denúncia|
|Registro de Ocorrência|Verdadeiro|
|Forma de Atuação      |Vistoria| 

Cenario: Verificar exportador em excel
Quando clicar no botão do Excel
Então sostema deve gerar um excel com todas a vistorias em resumo como GRID