#language: pt
#utf-8
@abaEnvolvidosSubAbaDadosFuncionais
Funcionalidade: Verificar sub aba Dados Funcionais dos envolvidos na ocorrencia

#UserStory- 44490-SIPAI-Criar sub-aba Dados Funcionais para Envolvidos

#Sprint 10
#SIPAI
#Eduardo Amorim

#Story

#COMO técnico QUERO informar o envolvido na ocorrência ambiental
#PARA detalhar melhor o envolvido na ocorrência Ambiental

Cenario: Verificar sub-aba de Dados Funcionais

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
E clicar na sub aba Dados Funcionais
Então deve apresentar a sub aba a interface da tela com os campos: Empresa - Endereço - Município - Cep - Ponto de Referência - Telefone DDD - Número
E deve exibir os botões Finalizar - Atualizar -Excluir - Retornar - Ajuda

Cenario: Verificar preencher os campos da sub aba Dados Funcionais 

Dado que tenha acessado o sigam
E logado no sistema com usuario 'gtiAdm' e senha 'a'
E entrado no módulo do SIPAI
E no menu Vistoria
Quando clicar em editar uma vistoria ambiental para uma Área Protegida que o Órgão gestor seja a Fundação Florestal
E clicar na aba ocorrência 
E clicar em editar uma ocorrência do tipo ambiental
E clicar na sub aba envolvidos
E clicar em editar pessoa Fisica
E clicar na sub aba Dados Funcionais
E preencher os campos: Empresa 'GlobalWeb' - Endereço 'Rua das Nações' - Município 'São Paulo' - Cep '02852-909' - Ponto de Referência 'Logo ali'- Telefone DDD '011' - Número '95214-5214'
E clicar em Atualizar
Então sistema deve apresentar a mensagem 'Dados salvos com sucesso'

Cenario: Verificar Excluir registro da sub aba Dados Funcionais

Dado que tenha acessado o sigam
E logado no sistema com usuario 'gtiAdm' e senha 'a'
E entrado no módulo do SIPAI
E no menu Vistoria
Quando clicar em editar uma vistoria ambiental para uma Área Protegida que o Órgão gestor seja a Fundação Florestal
E clicar na aba ocorrência 
E clicar em editar uma ocorrência do tipo ambiental
E clicar na sub aba envolvidos
E clicar em editar pessoa Fisica 
E clicar na sub aba Dados Funcionais
E clicar em Excluir Dados Funcionais
E clicar em sim no alerta que deve ter a msg 'Deseja excluir os Dados Funcionais do Envolvido?'
Então sistema deve excluir o registro de dados Funcionais

