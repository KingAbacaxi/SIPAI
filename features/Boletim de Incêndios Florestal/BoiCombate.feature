#language: pt
#utf-8
@BoiCombate
Funcionalidade: Verificar Combate do BOI


#SIPAI
#Eduardo Amorim

#BDD do fluxo principal do Combate do BOI

Cenario: Verificar Tela de combate do BOI

Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
Quando clicar entrar no modulo do SIPAI
E acessar Incêndios Florestais
E criar um BOI novo para combate 
E acessar a Aba Combate do BOI
Então sistema deve exibir campos Extinção do fogo: Combate Direto - Combate Indireto - Extinção Natural
E os campos Nível de acionamento - Início do combate data e hora - Término do combate data e hora - Participação do corpo de bombeiros sim e não
E os campos de seleção Especificação do Combate - Órgãos, Entidades e Empresas Envolvidas Número de pessoas- recursos envolvidos Descrição Quantidade
E os campos Quantidade total de água utilizada no combate - Estimativa total de gastos para o combate - Detelhamento 
E os botoes de Atualizar - Ajuda do combate

Cenario: Verificar preenchimento do combate com o tipo de extinção combate

Quando preencher os campos Extinção do fogo: Combate Direto - Participação do corpo de bombeiros: não
E selecionar os campos Nível de acionamento 'Nível 2' - Especificação do combate 'Combate Aéreo' - Órgãos 'Defesa Civil' Numero '22' - Recursos envolvidos 'Equipamentos' descri 'pá' quant '2'
E preencher os campos Inicio combate Data '2101202018' Hora do combate '12:59' - Término combate Data '2901202018' Hora do combate '12:59'
E preencher os campos Quantidade total de água '1234.541' - Estimativa total de gastos '12453,56' - Detalhamento do combate 'combate fogo'
E clicar em Incluir combate
Então sistema deve exibir a msg 'Dados salvos com sucesso' fazendo a exclusão do boi combate

Cenario: Verificar preenchimento do combate com o tipo de extinção Natural

Quando preencher os campos Extinção do fogo: extinção Natural
E clicar em Incluir combate
Então sistema deve exibir a msg 'Dados salvos com sucesso' fazendo a exclusão do boi combate


