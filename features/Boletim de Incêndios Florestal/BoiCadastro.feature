#language: pt
#utf-8
@BoiCadastro
Funcionalidade: Verificar Cadastro do BOI


#SIPAI
#Eduardo Amorim

#BDD do fluxo principal do Cadastro do BOI


Cenario:Verificar tela de cadastro do BOI

Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
Quando clicar entrar no modulo do SIPAI
E acessar Incêndios Florestais
E clicar em Adicionar
Então sistema deve apresentar tela de cadastro de Boletim de Ocorrência de Incêndio 
E deve conter os campos Área Protegida - Data de Detecção - Hora de Detecção - Área Abrangida - Municipio - Caracteristica do Local - Descrição - Coordenadas
E os botões Finalizar - Atualziar - Retornar - Ajuda

Cenario: Verificar cadastro de um BOI
Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
E clicar entrar no modulo do SIPAI
E acessar Incêndios Florestais
E clicar em Adicionar
Quando preencher os campos do BOI UC 'EE - Estação Ecológica Bananal' - DT Cadastro '2001202018' - Hora Detecção '12:35' - Área Abrangida Dentro e Entorno - Município 'BANANAL' - Caracteristica da Área 'Área Suburbana' - Especificação Local 'fechado' - Descrição 'cansei de preencher' - Latitude '-23,45' - Longitude '-53,25' 
E clicar em Atualizar boi
Então Sistema deve Atualizar os campos do Cabeçalho do BOI
E Atualizar os campos NIS - Número do BOI - Grupo - Órgão gestor 

Cenario: Verificar Edição do BOI

Quando clicar em Editar um Boi 
E alterar o campo Área Abrangida Dentro
E clicar em Finalizar Boi
Então sistema deve retornar para tela do Grid do BOI

Cenario: Verificar exclução do BOI

Quando clicar em Editar um Boi 
E clicar em Excluir
E clicar em OK na mensagem de confirmação
Então sistema deve apagar o BOI