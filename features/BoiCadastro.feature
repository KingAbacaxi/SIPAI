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
Então sistema deve apresnetar tela de cadastro de Boletim de Ocorrência de Incêndio 
E deve conter os campos Área Protegida - Data de Detecção - Hora de Detecção - Área Abrangida - Municipio - Caracteristica do Local - Descrição - Coordenadas
E os botões Finalizar - Atualziar - Retornar - Ajuda

Cenario: Verificar cadastro de um BOI

Quando preencher os campos do BOI UC '' - DT Cadastro '' - Hora Detecção '' - Área Abrangida Dentro e Entorno - Município 'Guarulhos' - Caracteristica da Área 'Área Florestal' - Especificação Local 'fechado' - Descrição 'cansei de preencher' - Latitude '-23,45' - Longitude '-53,25' 
E clicar em Atualziar
Então Sistema deve Atualizar os campos do Cabeçalho do BOI
E Atualizar os campos NIS - Número do BOI - Grupo - Órgão gestor 

Cenario: Verificar Edição do BOI

Quando clicar em Editar um Boi 
E alterar o campo Área Abrangida Dentro
E clicar em Finalizar 
Então sistema deve Gravar os dados
E retornar para tela do Grid do BOI

Cenario: Verificar exclução do BOI

Quando clicar em Editar um Boi 
E clciar em Excluir
E clicar em OK na mensagem de confirmação
Então sistema deve apagar o BOI