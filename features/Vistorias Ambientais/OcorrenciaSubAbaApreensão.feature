#language: pt
#utf-8
@ocorrenciaSubAbaApreensao
Funcionalidade: Verificar sua sub-aba Apreensões dentro da Ocorrência da Vistoria

#UserStory- 44058-SIPAI-Criar sub-aba Apreensões


#Sprint 10
#SIPAI
#Eduardo Amorim

#Story

#COMO técnico QUERO informar a(s) Apreensão(ões) na Vistoria Ambiental 
#PARA  detalhar melhor a Apreensão na Ocorrência “Ambiental” ou “Não Ambiental”


Cenario: Verificar sub aba Apreenssão na Ocorrência sem Acia

Dado que tenha acessado o sigam
E logado no sistema com usuario 'gtiAdm' e senha 'a'
E entrado no módulo do SIPAI
E no menu Vistoria
E ter criado uma vistoria ambiental para uma Área Protegida que o Órgão gestor seja a Fundação Florestal
Quando criar uma ocorrência do tipo não ambiental
E clicar na aba Apreensões
Então sistema deve exibir tela de Apreenções com a msg 'Nenhuma Apreensão'
E o botão de Adicionar Apreensão

Cenario: Verificar aba de inclusão de uma nova apreensão

Dado que tenha acessado o sigam
E logado no sistema com usuario 'gtiAdm' e senha 'a'
E entrado no módulo do SIPAI
E no menu Vistoria
E ter criado uma vistoria ambiental para uma Área Protegida que o Órgão gestor seja a Fundação Florestal
Quando criar uma ocorrência do tipo não ambiental
E clicar na aba Apreensões
E clicar em Adicionar uma nova apreensão
Então sistema deve ter os campos Item apreendido - Especificação - Unidade - Quantidade - Destinação
E ter os botões de incluir apreensão Finaliza - Atualizar - Excluir - Retornar - Ajuda

Cenario: Verificar inclusão de uma nova apreesão na ocorrencia sem acia

Dado que tenha acessado o sigam
E logado no sistema com usuario 'gtiAdm' e senha 'a'
E entrado no módulo do SIPAI
E no menu Vistoria
E ter criado uma vistoria ambiental para uma Área Protegida que o Órgão gestor seja a Fundação Florestal
Quando criar uma ocorrência do tipo não ambiental
E clicar na aba Apreensões
E clicar em Adicionar uma nova apreensão
E selecionar nos campos Item apreendido 'Gaiola' - Especificação 'Gaiola de captura' - Unidade - 'KM' - Quantidade '20' - Destinação 'Doação'
E clicar em Atualizar Apreensão
Então sistema deve exibir mensagem 'Dados gravados com sucesso'

Cenario: Verificar Grid da tela de Apreensão na ocorrência sem acia

Dado que tenha acessado o sigam
E logado no sistema com usuario 'gtiAdm' e senha 'a'
E entrado no módulo do SIPAI
E no menu Vistoria
E ter criado uma vistoria ambiental para uma Área Protegida que o Órgão gestor seja a Fundação Florestal
Quando criar uma ocorrência do tipo não ambiental
E clicar na aba Apreensões
E clicar em Adicionar uma nova apreensão
E selecionar nos campos Item apreendido 'Gaiola' - Especificação 'Gaiola de captura' - Unidade - 'KM' - Quantidade '20' - Destinação 'Doação'
E clicar em Finalizar Apreensão
Então sistema deve apresentar GRID com as colunas Editar - Intem Apreendido - Especificação - Unidade - Qauntiade - Destinação - Excluir

Cenario: Verificar incluir mais de um itens apreendidos 

Dado que tenha acessado o sigam
E logado no sistema com usuario 'gtiAdm' e senha 'a'
E entrado no módulo do SIPAI
E no menu Vistoria
E ter criado uma vistoria ambiental para uma Área Protegida que o Órgão gestor seja a Fundação Florestal
Quando criar uma ocorrência do tipo não ambiental
E clicar na aba Apreensões
E clicar em Adicionar uma nova apreensão
E selecionar nos campos Item apreendido 'Gaiola' - Especificação 'Gaiola de captura' - Unidade - 'KM' - Quantidade '20' - Destinação 'Doação'
E clicar em Finalizar Apreensão
E clicar em Adicionar uma nova apreensão
E selecionar nos campos Item apreendido 'Armadilha' - Especificação 'Armadilha de captura' - Unidade - 'KM' - Quantidade '10' - Destinação 'Lixão'
E clicar em Finalizar Apreensão
Então sistema deve exibir mensagem 'Dados gravados com sucesso'

Cenario: Verificar alteração de um item apreendido na ocorrência sem acia

Dado que tenha acessado o sigam
E logado no sistema com usuario 'gtiAdm' e senha 'a'
E entrado no módulo do SIPAI
E no menu Vistoria
E ter criado uma vistoria ambiental para uma Área Protegida que o Órgão gestor seja a Fundação Florestal
Quando criar uma ocorrência do tipo não ambiental
E clicar na aba Apreensões
E selecionar nos campos Item apreendido 'Gaiola' - Especificação 'Gaiola de captura' - Unidade - 'KM' - Quantidade '20' - Destinação 'Doação'
E clicar em Finalizar Apreensão
E clicar em Adicionar uma nova apreensão
E selecionar nos campos Item apreendido 'Armadilha' - Especificação 'Armadilha de captura' - Unidade - 'KM' - Quantidade '10' - Destinação 'Lixão'
E clicar em Finalizar Apreensão
E clicar na edição da apreenção no Grid da apreensão 'Gaiola'
E alterar o campo Quantidade para '50'
E clicar em Finalizar Apreensão
Então sistema deve apresentar GRID de apreensão com os dados atualizados

Cenario: Verificar excluir itens apreendidos 

Dado que tenha acessado o sigam
E logado no sistema com usuario 'gtiAdm' e senha 'a'
E entrado no módulo do SIPAI
E no menu Vistoria
E ter criado uma vistoria ambiental para uma Área Protegida que o Órgão gestor seja a Fundação Florestal
Quando criar uma ocorrência do tipo não ambiental
E clicar na aba Apreensões
E selecionar nos campos Item apreendido 'Gaiola' - Especificação 'Gaiola de captura' - Unidade - 'KM' - Quantidade '20' - Destinação 'Doação'
E clicar em Finalizar Apreensão
E clicar em Adicionar uma nova apreensão
E selecionar nos campos Item apreendido 'Armadilha' - Especificação 'Armadilha de captura' - Unidade - 'KM' - Quantidade '10' - Destinação 'Lixão'
E clicar em Finalizar Apreensão
E clicar em excluir o item apreendido 'Armadilha'
Então sistema deve atualizar o GRID deixando apenas o Item apreendido 'Gaiola'

#apreensão com acia
Cenario: Verificar sub aba Apreensão na Ocorrência com Acia

Dado que tenha acessado o sigam
E logado no sistema com usuario 'gtiAdm' e senha 'a'
E entrado no módulo do SIPAI
E no menu Vistoria
E ter criado uma vistoria ambiental para uma Área Protegida que o Órgão gestor seja a Fundação Florestal
Quando criar uma ocorrência do tipo ambiental
E clicar na aba Apreensões
Então sistema deve exibir tela de Apreenções com a msg 'Nenhuma Apreensão'
E o botão de Adicionar Apreensão

Cenario: Verificar aba de inclusão de uma nova apreensão na ocorrência com acia

Dado que tenha acessado o sigam
E logado no sistema com usuario 'gtiAdm' e senha 'a'
E entrado no módulo do SIPAI
E no menu Vistoria
E ter criado uma vistoria ambiental para uma Área Protegida que o Órgão gestor seja a Fundação Florestal
Quando criar uma ocorrência do tipo ambiental
E clicar na aba Apreensões
E clicar em Adicionar uma nova apreensão
Então sistema deve ter os campos Item apreendido - Especificação - Unidade - Quantidade - Destinação
E ter os botões de incluir apreensão Finaliza - Atualizar - Excluir - Retornar - Ajuda

Cenario: Verificar inclusão de uma nova apreesão na ocorrencia com acia

Dado que tenha acessado o sigam
E logado no sistema com usuario 'gtiAdm' e senha 'a'
E entrado no módulo do SIPAI
E no menu Vistoria
E ter criado uma vistoria ambiental para uma Área Protegida que o Órgão gestor seja a Fundação Florestal
Quando criar uma ocorrência do tipo ambiental
E clicar na aba Apreensões
E clicar em Adicionar uma nova apreensão
E selecionar nos campos Item apreendido 'Gaiola' - Especificação 'Gaiola de captura' - Unidade - 'KM' - Quantidade '20' - Destinação 'Doação'
E clicar em Atualizar Apreensão
Então sistema deve exibir mensagem 'Dados gravados com sucesso'

Cenario: Verificar Grid da tela de Apreensão na ocorrência com acia

Dado que tenha acessado o sigam
E logado no sistema com usuario 'gtiAdm' e senha 'a'
E entrado no módulo do SIPAI
E no menu Vistoria
E ter criado uma vistoria ambiental para uma Área Protegida que o Órgão gestor seja a Fundação Florestal
Quando criar uma ocorrência do tipo ambiental
E clicar na aba Apreensões
E clicar em Adicionar uma nova apreensão
E selecionar nos campos Item apreendido 'Gaiola' - Especificação 'Gaiola de captura' - Unidade - 'KM' - Quantidade '20' - Destinação 'Doação'
E clicar em Finalizar Apreensão
Então sistema deve apresentar GRID com as colunas Editar - Intem Apreendido - Especificação - Unidade - Qauntiade - Destinação - Excluir

Cenario: Verificar incluir mais de um itens apreendidos 

Dado que tenha acessado o sigam
E logado no sistema com usuario 'gtiAdm' e senha 'a'
E entrado no módulo do SIPAI
E no menu Vistoria
E ter criado uma vistoria ambiental para uma Área Protegida que o Órgão gestor seja a Fundação Florestal
Quando criar uma ocorrência do tipo ambiental
E clicar na aba Apreensões
E clicar em Adicionar uma nova apreensão
E selecionar nos campos Item apreendido 'Gaiola' - Especificação 'Gaiola de captura' - Unidade - 'KM' - Quantidade '20' - Destinação 'Doação'
E clicar em Finalizar Apreensão
E clicar em Adicionar uma nova apreensão
E selecionar nos campos Item apreendido 'Armadilha' - Especificação 'Armadilha de captura' - Unidade - 'KM' - Quantidade '10' - Destinação 'Lixão'
E clicar em Finalizar Apreensão
Então sistema deve exibir mensagem 'Dados gravados com sucesso'

Cenario: Verificar alteração de um item apreendido na ocorrência com acia

Dado que tenha acessado o sigam
E logado no sistema com usuario 'gtiAdm' e senha 'a'
E entrado no módulo do SIPAI
E no menu Vistoria
E ter criado uma vistoria ambiental para uma Área Protegida que o Órgão gestor seja a Fundação Florestal
Quando criar uma ocorrência do tipo ambiental
E clicar na aba Apreensões
E selecionar nos campos Item apreendido 'Gaiola' - Especificação 'Gaiola de captura' - Unidade - 'KM' - Quantidade '20' - Destinação 'Doação'
E clicar em Finalizar Apreensão
E clicar em Adicionar uma nova apreensão
E selecionar nos campos Item apreendido 'Armadilha' - Especificação 'Armadilha de captura' - Unidade - 'KM' - Quantidade '10' - Destinação 'Lixão'
E clicar em Finalizar Apreensão
E clicar na edição da apreenção no Grid da apreensão 'Gaiola'
E alterar o campo Quantidade para '50'
E clicar em Finalizar Apreensão
Então sistema deve apresentar GRID de apreensão com os dados atualizados

Cenario: Verificar excluir itens apreendidos 

Dado que tenha acessado o sigam
E logado no sistema com usuario 'gtiAdm' e senha 'a'
E entrado no módulo do SIPAI
E no menu Vistoria
E ter criado uma vistoria ambiental para uma Área Protegida que o Órgão gestor seja a Fundação Florestal
Quando criar uma ocorrência do tipo ambiental
E clicar na aba Apreensões
E selecionar nos campos Item apreendido 'Gaiola' - Especificação 'Gaiola de captura' - Unidade - 'KM' - Quantidade '20' - Destinação 'Doação'
E clicar em Finalizar Apreensão
E clicar em Adicionar uma nova apreensão
E selecionar nos campos Item apreendido 'Armadilha' - Especificação 'Armadilha de captura' - Unidade - 'KM' - Quantidade '10' - Destinação 'Lixão'
E clicar em Finalizar Apreensão
E clicar em excluir o item apreendido 'Armadilha'
Então sistema deve atualizar o GRID deixando apenas o Item apreendido 'Gaiola'