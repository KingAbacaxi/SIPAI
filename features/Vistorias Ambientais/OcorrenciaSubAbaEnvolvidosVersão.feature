#language: pt
#utf-8
@abaEnvolvidosSubAbaVersao
Funcionalidade: Verificar sub aba Versão dos envolvidos na ocorrencia

#UserStory- 44489-SIPAI-Criar sub-aba Versão do envolvido para Envolvidos


#Sprint 10
#SIPAI
#Eduardo Amorim

#Story

#COMO técnico QUERO informar a Versão do Envolvido
#PARA detalhar melhor o envolvido na ocorrência Ambiental.

Cenario: Verificar tela da sub aba Versão do Envolvido da sub aba Envolvidos

Dado que tenha acessado o sigam
E logado no sistema com usuario 'gtiAdm' e senha 'a'
E entrado no módulo do SIPAI
E no menu Vistoria
E ter criado uma vistoria ambiental para uma Área Protegida que o Órgão gestor seja a Fundação Florestal
Quando criar uma ocorrência do tipo ambiental
E clicar na sub aba envolvidos
E clicar em Adicionar um Novo Envolvidos
E preencher o campo com cpf Válido novo
E clicar em confirmar cpf
E preencher os campos Nome/Razão Social 'Pessoa Automatizadora' - RG '45.983.457.6' - UF 'AM' - Menor de 18 anos ativo - Nome do Pai 'José inacio avores' - Nome da Mãe 'Maria aparecida dos lares' - Nacionalidade 'Brasil' - Naturalidade 'Maringarau' - UF Naturalidade 'PA'
E sexo Masculino - Data de nascimento '1501202009' - Cútis 'Não sei o que é' - Estado Civil 'Solteiro' - profissão 'Testes' - Condição 'ASD' - Endereço 'Rua das Moscas' - Municipio 'MANAUS' - UF do municipio 'AM' - CEP '45123-457' 
E Ponto de referencia 'Minha casa' - Telefone DDD '120' Número '4561-1236' - E-Mail 'teste@tes.com'
E clicar em Atualizar Pessoa Fisica envolvida
E clicar na sub aba Versão do Envolvido
Então sistema deve apresentar o campo Versão do Envolvido
E o botão de anexar o Depoimento do envolvido Assinado
E os botões de Finalizar - Atualizar - Excluir - Retornar - Ajuda na tela de versãod o envolvido

Cenario: Verificar inclusão de uma versão do Envolvido

Dado que tenha acessado o sigam
E logado no sistema com usuario 'gtiAdm' e senha 'a'
E entrado no módulo do SIPAI
E no menu Vistoria
Quando clicar em editar uma vistoria ambiental para uma Área Protegida que o Órgão gestor seja a Fundação Florestal para a versão do envolvido
E clicar na aba ocorrência 
E clicar em editar uma ocorrência do tipo ambiental
E clicar na sub aba envolvidos 
E clicar em editar pessoa Fisica
E clicar na sub aba Versão do Envolvido
E preencher o campo Versão do envolvido 'Tve motivos de cunho pessoal mas publico'
E anexar depoimento do envolvido assinado 
E clicar em Atualizar Registro da versão do envolvido
Então sistema deve apresnetar msg 'Dados salvos com sucesso'

Cenario: Verificar excluir o registro de uma versão do envolvido

Dado que tenha acessado o sigam
E logado no sistema com usuario 'gtiAdm' e senha 'a'
E entrado no módulo do SIPAI
E no menu Vistoria
Quando clicar em editar uma vistoria ambiental para uma Área Protegida que o Órgão gestor seja a Fundação Florestal para a versão do envolvido
E clicar na aba ocorrência 
E clicar em editar uma ocorrência do tipo ambiental
E clicar na sub aba envolvidos 
E clicar em editar pessoa Fisica
E clicar na sub aba Versão do Envolvido
E clicar em excluir versão do envolvido
E clicar em sim no alerta com a msg 'Deseja excluir a Versão do Envolvido?'
Então sistema deve apagar o resgistro de versão do envolvido

Cenario: Verificar anexar arquivo de versão assinado com extensão errada

Dado que tenha acessado o sigam
E logado no sistema com usuario 'gtiAdm' e senha 'a'
E entrado no módulo do SIPAI
E no menu Vistoria
Quando clicar em editar uma vistoria ambiental para uma Área Protegida que o Órgão gestor seja a Fundação Florestal para a versão do envolvido
E clicar na aba ocorrência 
E clicar em editar uma ocorrência do tipo ambiental
E clicar na sub aba envolvidos 
E clicar em editar pessoa Fisica
E clicar na sub aba Versão do Envolvido
E preencher o campo Versão do envolvido 'Tve motivos de cunho pessoal mas publico'
E anexar depoismento assinado com extensão que não seja DOC DOCX ou PDF
E clicar em Finalizar
Então sistema deve apresentar msg 'Arquivo no formato inválido!”'
