#language: pt
#utf-8
@ocorrenciaSubAbaAnexos
Funcionalidade: Verificar sua sub-aba Anexos dentro da Ocorrência da Vistoria

#UserStory- 44199-SIPAI-Criar sub-aba Anexos


#Sprint 10
#SIPAI
#Eduardo Amorim

#Story

#COMO técnico QUERO associar anexos à Ocorrência 
#PARA que os documentos relacionados à Ocorrências com ACIA e/ou Ocorrência sem ACIA possam ser guardados e acessados posteriormente


Cenario: Verificar sub aba Anexos na Ocorrência sem Acia

Dado que tenha acessado o sigam
E logado no sistema com usuario 'gtiAdm' e senha 'a'
E entrado no módulo do SIPAI
E no menu Vistoria
E ter criado uma vistoria ambiental para uma Área Protegida que o Órgão gestor seja a Fundação Florestal
Quando criar uma ocorrência do tipo não ambiental
E clicar na aba Apreensões
Então sistema deve exibir tela de Anexos com a msg 'Nenhuma Documento ou Arquivo Anexado'
E o botão de Adicionar Anexos

Cenario: Verificar aba de inclusão de uma nova Anexos

Dado que tenha acessado o sigam
E logado no sistema com usuario 'gtiAdm' e senha 'a'
E entrado no módulo do SIPAI
E no menu Vistoria
E ter criado uma vistoria ambiental para uma Área Protegida que o Órgão gestor seja a Fundação Florestal
Quando criar uma ocorrência do tipo não ambiental
E clicar na aba Apreensões
E clicar em Adicionar uma nova Anexos
Então sistema deve ter os campos Data do Anexo - Título do Anexo - Tipo de Documento - Responsável - Nome do Arquivo - Descrição - Arquivo para Carregar
E ter os botões de incluir Anexos Finaliza - Atualizar - Retornar - Ajuda

Cenario: Verificar inclusão de uma nova Anexos na ocorrencia sem acia

Dado que tenha acessado o sigam
E logado no sistema com usuario 'gtiAdm' e senha 'a'
E entrado no módulo do SIPAI
E no menu Vistoria
E ter criado uma vistoria ambiental para uma Área Protegida que o Órgão gestor seja a Fundação Florestal
Quando criar uma ocorrência do tipo não ambiental
E clicar na aba Apreensões
E clicar em Adicionar uma nova Anexos
E selecionar nos campos Data do Aenxo '1500202019' - Titulo do Anexo 'Anexo Automatizado' - Tipo de Documento 'Imagem' - Responsável 'Edu' - Descrição 'Descrição do teste'
E anexar aquivo para ocorrencia sem acia na vistoria ambinetal
E clicar em Finalizar Anexos
Então sistema deve exibir mensagem 'Dados salvos com sucesso'

Cenario: Verificar Grid da tela de Anexos na ocorrência sem acia

Dado que tenha acessado o sigam
E logado no sistema com usuario 'gtiAdm' e senha 'a'
E entrado no módulo do SIPAI
E no menu Vistoria
E ter criado uma vistoria ambiental para uma Área Protegida que o Órgão gestor seja a Fundação Florestal
Quando criar uma ocorrência do tipo não ambiental
E clicar na aba Apreensões
E selecionar nos campos Data do Aenxo '1500202019' - Titulo do Anexo 'Anexo Automatizado' - Tipo de Documento 'Imagem' - Responsável 'Edu' - Descrição 'Descrição do teste'
E anexar aquivo para ocorrencia sem acia na vistoria ambinetal
E clicar em Finalizar Anexos
Então sistema deve apresentar GRID com as colunas Editar - Arquivo - Data - Nome Original - Tipo de Documento - Extensão - KB - Excluir

Cenario: Verificar incluir mais de um Anexo

Dado que tenha acessado o sigam
E logado no sistema com usuario 'gtiAdm' e senha 'a'
E entrado no módulo do SIPAI
E no menu Vistoria
E ter criado uma vistoria ambiental para uma Área Protegida que o Órgão gestor seja a Fundação Florestal
Quando criar uma ocorrência do tipo não ambiental
E clicar na aba Apreensões
E selecionar nos campos Data do Aenxo '1500202019' - Titulo do Anexo 'Anexo Automatizado' - Tipo de Documento 'Imagem' - Responsável 'Edu' - Descrição 'Descrição do teste'
E anexar aquivo para ocorrencia sem acia na vistoria ambinetal
E clicar em Finalizar Anexos
E clicar na aba Apreensões
E selecionar nos campos Data do Aenxo '1000202019' - Titulo do Anexo 'Anexo Automatizado 2' - Tipo de Documento 'Imagem' - Responsável 'Edu' - Descrição 'Descrição do teste'
E anexar aquivo para ocorrencia sem acia na vistoria ambinetal
E clicar em Finalizar Anexos
Então sistema deve atualizar o grid com os dois registros de anexo

Cenario: Verificar alteração de um item apreendido na ocorrência sem acia

Dado que tenha acessado o sigam
E logado no sistema com usuario 'gtiAdm' e senha 'a'
E entrado no módulo do SIPAI
E no menu Vistoria
E ter criado uma vistoria ambiental para uma Área Protegida que o Órgão gestor seja a Fundação Florestal
Quando criar uma ocorrência do tipo não ambiental
E clicar na aba Apreensões
E selecionar nos campos Data do Aenxo '1500202019' - Titulo do Anexo 'Anexo Automatizado' - Tipo de Documento 'Imagem' - Responsável 'Edu' - Descrição 'Descrição do teste'
E anexar aquivo para ocorrencia sem acia na vistoria ambinetal
E clicar em Finalizar Anexos
E clicar na aba Apreensões
E selecionar nos campos Data do Aenxo '1000202019' - Titulo do Anexo 'Anexo Automatizado 2' - Tipo de Documento 'Imagem' - Responsável 'Edu' - Descrição 'Descrição do teste'
E anexar aquivo para ocorrencia sem acia na vistoria ambinetal
E clicar em Finalizar Anexos
E clicar na edição da apreenção no Grid da Anexo 'Anexo Automatizado'
E alterar o campo Quantidade para '50'
E clicar em Finalizar Anexo
Então sistema deve apresentar GRID de Anexos com os dados atualizados

Cenario: Verificar excluir itens apreendidos 

Dado que tenha acessado o sigam
E logado no sistema com usuario 'gtiAdm' e senha 'a'
E entrado no módulo do SIPAI
E no menu Vistoria
E ter criado uma vistoria ambiental para uma Área Protegida que o Órgão gestor seja a Fundação Florestal
Quando criar uma ocorrência do tipo não ambiental
E clicar na aba Apreensões
E selecionar nos campos Data do Aenxo '1500202019' - Titulo do Anexo 'Anexo Automatizado' - Tipo de Documento 'Imagem' - Responsável 'Edu' - Descrição 'Descrição do teste'
E anexar aquivo para ocorrencia sem acia na vistoria ambinetal
E clicar em Finalizar Anexos
E clicar na aba Apreensões
E selecionar nos campos Data do Aenxo '1000202019' - Titulo do Anexo 'Anexo Automatizado 2' - Tipo de Documento 'Imagem' - Responsável 'Edu' - Descrição 'Descrição do teste'
E anexar aquivo para ocorrencia sem acia na vistoria ambinetal
E clicar em Finalizar Anexos
E clicar em excluir o item apreendido 'Anexo Automatizado 2'
Então sistema deve atualizar o GRID deixando apenas o Item Aenxado 'Anexo Automatizado'

#Anexo com acia
Cenario: Verificar sub aba Anexos na Ocorrência com Acia

Dado que tenha acessado o sigam
E logado no sistema com usuario 'gtiAdm' e senha 'a'
E entrado no módulo do SIPAI
E no menu Vistoria
E ter criado uma vistoria ambiental para uma Área Protegida que o Órgão gestor seja a Fundação Florestal
Quando criar uma ocorrência do tipo ambiental
E clicar na aba Apreensões
Então sistema deve exibir tela de Anexos com a msg 'Nenhuma Documento ou Arquivo Anexado'
E o botão de Adicionar Anexos

Cenario: Verificar aba de inclusão de uma nova Anexos na Ocorrência com Acia

Dado que tenha acessado o sigam
E logado no sistema com usuario 'gtiAdm' e senha 'a'
E entrado no módulo do SIPAI
E no menu Vistoria
E ter criado uma vistoria ambiental para uma Área Protegida que o Órgão gestor seja a Fundação Florestal
Quando criar uma ocorrência do tipo ambiental
E clicar na aba Apreensões
E clicar em Adicionar uma nova Anexos
Então sistema deve ter os campos Data do Anexo - Título do Anexo - Tipo de Documento - Responsável - Nome do Arquivo - Descrição - Arquivo para Carregar
E ter os botões de incluir Anexos Finaliza - Atualizar - Retornar - Ajuda

Cenario: Verificar inclusão de uma nova Anexos na Ocorrência com Acia

Dado que tenha acessado o sigam
E logado no sistema com usuario 'gtiAdm' e senha 'a'
E entrado no módulo do SIPAI
E no menu Vistoria
E ter criado uma vistoria ambiental para uma Área Protegida que o Órgão gestor seja a Fundação Florestal
Quando criar uma ocorrência do tipo ambiental
E clicar na aba Apreensões
E clicar em Adicionar uma nova Anexos
E selecionar nos campos Data do Aenxo '1500202019' - Titulo do Anexo 'Anexo Automatizado' - Tipo de Documento 'Imagem' - Responsável 'Edu' - Descrição 'Descrição do teste'
E anexar aquivo para ocorrencia sem acia na vistoria ambinetal
E clicar em Finalizar Anexos
Então sistema deve exibir mensagem 'Dados salvos com sucesso'

Cenario: Verificar Grid da tela de Anexos na Ocorrência com Acia

Dado que tenha acessado o sigam
E logado no sistema com usuario 'gtiAdm' e senha 'a'
E entrado no módulo do SIPAI
E no menu Vistoria
E ter criado uma vistoria ambiental para uma Área Protegida que o Órgão gestor seja a Fundação Florestal
Quando criar uma ocorrência do tipo ambiental
E clicar na aba Apreensões
E selecionar nos campos Data do Aenxo '1500202019' - Titulo do Anexo 'Anexo Automatizado' - Tipo de Documento 'Imagem' - Responsável 'Edu' - Descrição 'Descrição do teste'
E anexar aquivo para ocorrencia sem acia na vistoria ambinetal
E clicar em Finalizar Anexos
Então sistema deve apresentar GRID com as colunas Editar - Arquivo - Data - Nome Original - Tipo de Documento - Extensão - KB - Excluir

Cenario: Verificar incluir mais de um Anexo na Ocorrência com Acia

Dado que tenha acessado o sigam
E logado no sistema com usuario 'gtiAdm' e senha 'a'
E entrado no módulo do SIPAI
E no menu Vistoria
E ter criado uma vistoria ambiental para uma Área Protegida que o Órgão gestor seja a Fundação Florestal
Quando criar uma ocorrência do tipo ambiental
E clicar na aba Apreensões
E selecionar nos campos Data do Aenxo '1500202019' - Titulo do Anexo 'Anexo Automatizado' - Tipo de Documento 'Imagem' - Responsável 'Edu' - Descrição 'Descrição do teste'
E anexar aquivo para ocorrencia sem acia na vistoria ambinetal
E clicar em Finalizar Anexos
E clicar na aba Apreensões
E selecionar nos campos Data do Aenxo '1000202019' - Titulo do Anexo 'Anexo Automatizado 2' - Tipo de Documento 'Imagem' - Responsável 'Edu' - Descrição 'Descrição do teste'
E anexar aquivo para ocorrencia sem acia na vistoria ambinetal
E clicar em Finalizar Anexos
Então sistema deve atualizar o grid com os dois registros de anexo

Cenario: Verificar alteração de um item apreendido na Ocorrência com Acia

Dado que tenha acessado o sigam
E logado no sistema com usuario 'gtiAdm' e senha 'a'
E entrado no módulo do SIPAI
E no menu Vistoria
E ter criado uma vistoria ambiental para uma Área Protegida que o Órgão gestor seja a Fundação Florestal
Quando criar uma ocorrência do tipo ambiental
E clicar na aba Apreensões
E selecionar nos campos Data do Aenxo '1500202019' - Titulo do Anexo 'Anexo Automatizado' - Tipo de Documento 'Imagem' - Responsável 'Edu' - Descrição 'Descrição do teste'
E anexar aquivo para ocorrencia sem acia na vistoria ambinetal
E clicar em Finalizar Anexos
E clicar na aba Apreensões
E selecionar nos campos Data do Aenxo '1000202019' - Titulo do Anexo 'Anexo Automatizado 2' - Tipo de Documento 'Imagem' - Responsável 'Edu' - Descrição 'Descrição do teste'
E anexar aquivo para ocorrencia sem acia na vistoria ambinetal
E clicar em Finalizar Anexos
E clicar na edição da apreenção no Grid da Anexo 'Anexo Automatizado'
E alterar o campo Quantidade para '50'
E clicar em Finalizar Anexo
Então sistema deve apresentar GRID de Anexos com os dados atualizados

Cenario: Verificar excluir itens apreendidos na Ocorrência com Acia

Dado que tenha acessado o sigam
E logado no sistema com usuario 'gtiAdm' e senha 'a'
E entrado no módulo do SIPAI
E no menu Vistoria
E ter criado uma vistoria ambiental para uma Área Protegida que o Órgão gestor seja a Fundação Florestal
Quando criar uma ocorrência do tipo ambiental
E clicar na aba Apreensões
E selecionar nos campos Data do Aenxo '1500202019' - Titulo do Anexo 'Anexo Automatizado' - Tipo de Documento 'Imagem' - Responsável 'Edu' - Descrição 'Descrição do teste'
E anexar aquivo para ocorrencia sem acia na vistoria ambinetal
E clicar em Finalizar Anexos
E clicar na aba Apreensões
E selecionar nos campos Data do Aenxo '1000202019' - Titulo do Anexo 'Anexo Automatizado 2' - Tipo de Documento 'Imagem' - Responsável 'Edu' - Descrição 'Descrição do teste'
E anexar aquivo para ocorrencia sem acia na vistoria ambinetal
E clicar em Finalizar Anexos
E clicar em excluir o item apreendido 'Anexo Automatizado 2'
Então sistema deve atualizar o GRID deixando apenas o Item Aenxado 'Anexo Automatizado'