#language: pt
#utf-8
@BoiEspecificacao
Funcionalidade: Verificar Espeficicação do BOI


#SIPAI
#Eduardo Amorim

#BDD do fluxo principal do especificação do BOI


Cenario: Verificar Tela de especificação do BOI

Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
Quando clicar entrar no modulo do SIPAI
E acessar Incêndios Florestais
E criar um BOI novo 
E acessar a Aba Espeficicação do BOI
Então Sistema deve apresentar os campos Detecção de Incendio - Provável Causa do Incendio - Provável Causador - Caracteristica da Ocorrencia - Observações
E os botãos de Atualizar - Ajuda

Cenario: Verificar Preenchimento dos campos de Especificação

Quando estiver na edição do Boi 
E acessar a Aba Espeficicação do BOI
E selecionar nso campos Detecção de Incendio 'Vistorias Mata' - Provável Causa do Incendio 'Desconhecida' - Provável Causador 'Outros'
E preencher os campos de especificação Caracteristica da Ocorrencia Fogo rateiro - Observações 'Muito fogo'
E clicar em Atualizar especificação
Então sistema deve exibir a msg 'Dados salvos com sucesso'