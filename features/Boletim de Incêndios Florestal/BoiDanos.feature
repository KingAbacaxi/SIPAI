#language: pt
#utf-8
@BoiDanos
Funcionalidade: Verificar Danos do BOI


#SIPAI
#Eduardo Amorim

#BDD do fluxo principal do danos do BOI


Cenario: Verificar Tela de Danos do BOI

Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
Quando clicar entrar no modulo do SIPAI
E acessar Incêndios Florestais
E criar um BOI novo para Danos 
E acessar aba Danos
Então sistema deve apresentar campos Área atingida dentro - Área atingida fora - Bioma Cerrado Mata atlântica- obs
E selecionar os campos Tipo Vegetacao - Outros Danos  - Descrição Outros Danos 
E exibir os botões Atualizar - Ajuda

Cenario: Verificar Preenchimento dos campos de Danos


Quando selecionar nos campos Tipo Vegetacao 'Reflorestamento' - Outros Danos 'TCRA queimado' - Descrição Outros Danos 'Queimado'
E preencher os campos Área atingida dentro '21,6' - Área atingida fora '10,6' - Bioma Cerrado - obs 'automatizado'
E clicar em Atualizar Danos
Então sistema deve exibir a msg 'Dados salvos com sucesso' fazendo a exclusão do boi Danos