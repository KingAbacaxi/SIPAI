#language: pt
#utf-8
@abaEnvolvidosSubAbaDadosPessoais
Funcionalidade: Verificar sub aba dados Pessoais dos Envolvidos na ocorrencia

#UserStory- 44488-SIPAI-Criar sub-aba Dados Pessoais para Envolvidos


#Sprint 10
#SIPAI
#Eduardo Amorim

#Story

#COMO técnico QUERO informar os Dados Pessoais dos envolvidos
#PARA detalhar melhor o envolvido na ocorrência Ambiental

Cenario: Verificar sub aba Envolvidos

Dado que tenha acessado o sigam
E logado no sistema com usuario 'gtiAdm' e senha 'a'
E entrado no módulo do SIPAI
E no menu Vistoria
E ter criado uma vistoria ambiental para uma Área Protegida que o Órgão gestor seja a Fundação Florestal
Quando criar uma ocorrência do tipo ambiental
E clicar na sub aba envolvidos
E clicar em Adicionar um Novo Envolvidos
Então Sistema deve exibir campo CPF ou CNPJ 
E o botão de confirmar - retornar

Cenario: Verificar inclusão de envolvido com cpf errado

Dado que tenha acessado o sigam
E logado no sistema com usuario 'gtiAdm' e senha 'a'
E entrado no módulo do SIPAI
E no menu Vistoria
E ter criado uma vistoria ambiental para uma Área Protegida que o Órgão gestor seja a Fundação Florestal
Quando criar uma ocorrência do tipo ambiental
E clicar na sub aba envolvidos
E clicar em Adicionar um Novo Envolvidos
E preencher o campo com cpf Inaválido
E clicar em confirmar cpf
Então sistema deve apresentar msg 'CPF/CNPJ Inválido'

Cenario: Verificar tela de inclusão para pessoa Fisica 

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
Então sistema deve exibir tela de inclusão de pessoa envolvida 
E deve conter os campos Nome/Razão Social - RG - UF - Menor de 18 anos - Nome do Pai - Nome da Mãe - Nacionalidade - Naturalidade - UF Naturalidade 
E sexo femenino Masculino - Data de nascimento - Cútis - Estado Civil - profissão - Condição - Endereço - Municipio - UF do municipio - CEP 
E Ponto de referencia - Telefone DDD Número - E-Mail
E os botões de Finalizar - Atualizar - Excluir - Retornar - Ajuda na inclusão de pessoa fisica envolvida

Cenario: Verificar inclusão para pessoa Fisica 

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
Então sistema deve exibir msg 'Dados salvos com sucesso'
E sistema deve liberar as aba Dados Funcionais - Versão do Envolvido

Cenario: Verificar tela de inclusão para pessoa Juridica

Dado que tenha acessado o sigam
E logado no sistema com usuario 'gtiAdm' e senha 'a'
E entrado no módulo do SIPAI
E no menu Vistoria
E ter criado uma vistoria ambiental para uma Área Protegida que o Órgão gestor seja a Fundação Florestal
Quando criar uma ocorrência do tipo ambiental
E clicar na sub aba envolvidos
E clicar em Adicionar um Novo Envolvidos
E preencher o campo com cnpj Válido novo
E clicar em confirmar cnpj
Então sistema deve exibir tela de inclusão de pessoa envolvida 
E deve conter os campos Nome/Razão Social - Outro Documento - Número - UF - Condição - Endereço - Municipio - UF do municipio - CEP 
E Ponto de referencia - Telefone DDD Número - E-Mail
E os botões de Finalizar - Atualizar - Excluir - Retornar - Ajuda na inclusão de pessoa juridica envolvida

Cenario: Verificar inclusão para pessoa Juridica

Dado que tenha acessado o sigam
E logado no sistema com usuario 'gtiAdm' e senha 'a'
E entrado no módulo do SIPAI
E no menu Vistoria
E ter criado uma vistoria ambiental para uma Área Protegida que o Órgão gestor seja a Fundação Florestal
Quando criar uma ocorrência do tipo ambiental
E clicar na sub aba envolvidos
E clicar em Adicionar um Novo Envolvidos
E preencher o campo com cnpj Válido novo
E clicar em confirmar cnpj
E preencher os campos Nome/Razão Social 'GlobalWEB' - Outro Documento 'Inscrição estadual' - Número '5454545454545' - UF 'SP' - Condição 'Ativa' - Endereço 'Rua dos trilhos' 
E Municipio 'SÃO PAULO'- UF do municipio 'SP' - CEP '12478-541'- Ponto de referencia 'RIO'- Telefone DDD '011' Número '12457-5124' - E-Mail 'empresa@teste.com'
E clicar em Atualizar Pessoa Fisica Juridica
Então sistema deve exibir msg 'Dados salvos com sucesso'
E sistema deve liberar a aba Versão do Envolvido
Mas não deve liberar a aba Dados Funcionais

Cenario: Verificar inclusão de envolvido já incluído

Dado que tenha acessado o sigam
E logado no sistema com usuario 'gtiAdm' e senha 'a'
E entrado no módulo do SIPAI
E no menu Vistoria
E ter criado uma vistoria ambiental para uma Área Protegida que o Órgão gestor seja a Fundação Florestal
Quando criar uma ocorrência do tipo ambiental
E clicar na sub aba envolvidos
E clicar em Adicionar um Novo Envolvidos
E preencher o campo com cnpj que já foi incluido nesta ocorrencia
E clicar em confirmar cnpj
Então sistema deve exibir a mensagem 'Esta pessoa já está relacionada'

Cenario: Verificar campos Obrigatórios de Pessoa Fisica

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
E clicar em Finalizar
Então sistema deve apresentar mensagem de requerido nos campos: Condição - Nome/ Razão Social - RG - UF - Nome da Mãe - Endereço - Município - Estado - CEP

Cenario: Verificar campo Obrigatorios de Pessoa Juridica

Dado que tenha acessado o sigam
E logado no sistema com usuario 'gtiAdm' e senha 'a'
E entrado no módulo do SIPAI
E no menu Vistoria
E ter criado uma vistoria ambiental para uma Área Protegida que o Órgão gestor seja a Fundação Florestal
Quando criar uma ocorrência do tipo ambiental
E clicar na sub aba envolvidos
E clicar em Adicionar um Novo Envolvidos
E preencher o campo com CNPJ Válido novo
E clicar em confirmar CNPJ
E clicar em Finalizar
Então sistema deve apresentar mensagem de requerido nos campos: Condição - Nome/ Razão Social - UF - Endereço - Município - Estado - CEP


Cenario: Verificar excluir Pessoa Fisica

Dado que tenha acessado o sigam
E logado no sistema com usuario 'gtiAdm' e senha 'a'
E entrado no módulo do SIPAI
E no menu Vistoria
E ter criado uma vistoria ambiental para uma Área Protegida que o Órgão gestor seja a Fundação Florestal
Quando criar uma ocorrência do tipo ambiental
E clicar na sub aba envolvidos
E clicar em Editar uma pessoa Fisica envolvida
E clicar em excluir a pessoa Fisica envolvida
E clicar em sim quando o sistema apresentar alerta com a mensagem 'Deseja excluir os Dados Pessoais do Envolvido'
Então sistema deve apagar a pessoa fisica do GRID de envolvidos

Cenario: Verificar excluir Pessoa Juridica

Dado que tenha acessado o sigam
E logado no sistema com usuario 'gtiAdm' e senha 'a'
E entrado no módulo do SIPAI
E no menu Vistoria
E ter criado uma vistoria ambiental para uma Área Protegida que o Órgão gestor seja a Fundação Florestal
Quando criar uma ocorrência do tipo ambiental
E clicar na sub aba envolvidos
E clicar em Editar uma pessoa juridica envolvida
E clicar em excluir a pessoa juridica envolvida
E clicar em sim quando o sistema apresentar alerta com a mensagem 'Deseja excluir os Dados Pessoais do Envolvido'
Então sistema deve apagar a pessoa juridica do GRID de envolvidos

Cenario: Verificar inclusão de Pesso Fisica já cadastrada no Sigam

Dado que tenha acessado o sigam
E logado no sistema com usuario 'gtiAdm' e senha 'a'
E entrado no módulo do SIPAI
E no menu Vistoria
E ter criado uma vistoria ambiental para uma Área Protegida que o Órgão gestor seja a Fundação Florestal
Quando criar uma ocorrência do tipo ambiental
E clicar na sub aba envolvidos
E clicar em Adicionar um Novo Envolvidos
E preencher o campo com cpf Válido que já foi utilizado no sigam
E clicar em confirmar cpf
Então sistema deve carregar os campos já preenchidos: Nome/Razão Social 'Pessoa Automatizadora' - RG '45.983.457.6' - UF 'AM' - Nome do Pai 'José inacio avores' - Nome da Mãe 'Maria aparecida dos lares' - Nacionalidade 'Brasil' - Naturalidade 'Maringarau' - UF Naturalidade 'PA'
E sexo Masculino - Data de nascimento '1501202009' - Estado Civil 'Solteiro' - profissão 'Testes' - Endereço 'Rua das Moscas' - Municipio 'MANAUS' - UF do municipio 'AM' - CEP '45123-457' 
E Ponto de referencia 'Minha casa' - Telefone DDD '120' Número '4561-1236' - E-Mail 'teste@tes.com'


Cenario: Verificar inclusão para pessoa Juridica ja casdastrada no sigam

Dado que tenha acessado o sigam
E logado no sistema com usuario 'gtiAdm' e senha 'a'
E entrado no módulo do SIPAI
E no menu Vistoria
E ter criado uma vistoria ambiental para uma Área Protegida que o Órgão gestor seja a Fundação Florestal
Quando criar uma ocorrência do tipo ambiental
E clicar na sub aba envolvidos
E clicar em Adicionar um Novo Envolvidos
E preencher o campo com cnpj Válido que já foi utilizado
E clicar em confirmar cnpj
Então sistema deve carregar os campos já preenchidos: Nome/Razão Social 'GlobalWEB' - Outro Documento 'Inscrição estadual' - Número '5454545454545' - UF 'SP' - Condição 'Ativa' - Endereço 'Rua dos trilhos' 
E Municipio 'SÃO PAULO'- UF do municipio 'SP' - CEP '12478-541'- Ponto de referencia 'RIO'- Telefone DDD '011' Número '12457-5124' - E-Mail 'empresa@teste.com'
