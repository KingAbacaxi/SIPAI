#language: pt
#utf-8
@moduloBoi
Funcionalidade: Verificar Modulo do BOI


#SIPAI
#Eduardo Amorim

#BDD do fluxo principal do modulo do BOI


Cenario: Verifica tela do modulo do BOI

Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
Quando clicar entrar no modulo do SIPAI
E acessar Incêndios Florestais 
Então sistema deve apresentar modulo do 'Cadastro de Boletim de Ocorrência de Incêndio'
E deve exibir o GRID com as colunas Editar - NIS - Número do BOI - Cadastro - Detecção - Área Protegida - Município

Cenario: Verificar componente de pesquisa de BOI

Quando selecionar opção 'NIS' paramentro 'Igaul a' valor '0003' do BOI
E clicar em adicionar 
E clicar em pesquisar
Então sistema deve pesquisar e exibir boletins com os dados no GRID

