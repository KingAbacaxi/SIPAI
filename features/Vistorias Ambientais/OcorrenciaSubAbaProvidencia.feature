#language: pt
#utf-8
@ocorrenciaSubAbaProvidencia
Funcionalidade: Verificar sua aba Providência dentro da Ocorrência da Vistoria

#UserStory- 44201-SIPAI-Criar sub-aba Providências

#Sprint 10
#SIPAI
#Eduardo Amorim

#Story

#COMO técnico QUERO informar a Providência na Vistoria Ambiental 
#PARA detalhar melhor a Providência da Ocorrência “Ambiental”


Cenario: Verificar sub aba Providência da Ocorrência da Vistoria

Dado que tenha acessado o sigam
E logado no sistema com usuario 'gtiAdm' e senha 'a'
E entrado no módulo do SIPAI
E no menu Vistoria
E ter criado uma vistoria ambiental para uma Área Protegida que o Órgão gestor seja a Fundação Florestal
Quando criar uma ocorrência do tipo ambiental
E clicar na sub aba Providência
Então sistema deve exibir os campos Providência a serem Adotadas - Medidas para Reparação/Recuperação do Dano
E exibir os botões de Finaliza - Atualizar - Excluir - Retornar - Ajuda da Providência da vistoria

Cenario: Verificar campos Obrigatórios da Providência da Ocorrência da Vistoria

Dado que tenha acessado o sigam
E logado no sistema com usuario 'gtiAdm' e senha 'a'
E entrado no módulo do SIPAI
E no menu Vistoria
Quando editar a vistoria para Providência
E clicar na sub aba Providência
E clicar em Finalizar Providência da Ocorrência
Então sistema deve exibir mensagem de Requerido nos campos Providência a serem Adotadas - Medidas para Reparação/Recuperação do Dano

Cenario: Verificar inserir dados na aba Providência da Ocorrência da Vistoria

Dado que tenha acessado o sigam
E logado no sistema com usuario 'gtiAdm' e senha 'a'
E entrado no módulo do SIPAI
E no menu Vistoria
E editar a vistoria para Providência
E clicar na sub aba Providência
Quando Preencher os campos da Providência: Providência a serem Adotadas 'Ficar parado' - Medidas para Reparação/Recuperação do Dano 'Fogo'
E clicar em Atualizar Providência da ocorrência
Então sistema deve exibir mensagem 'Dados gravados com sucesso'

Cenario: Verificar botão de excluir

Dado que tenha acessado o sigam
E logado no sistema com usuario 'gtiAdm' e senha 'a'
E entrado no módulo do SIPAI
E no menu Vistoria
E editar a vistoria para Providência
E clicar na sub aba Providência
Quando clicar em Excluir Providência da Ocorrência
E confirmar Alerta 
Então sistema deve apagar os dados - limpar os campos e permanecer na tela