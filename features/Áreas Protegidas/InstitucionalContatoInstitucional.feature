#language: pt
#utf-8

@contatoInstitucionalInstitucional

Funcionalidade: Verificar Contato institucional na aba Institucinal da Área Protegida


#SIPAI
#Eduardo Amorim

Cenario: Verificar tela de Contato Institucional

Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
E ter acessado o menu Portal
E ter acessado o menu Tabelas Organizacionais
E ter clicado em Unidade
E ter clicado na inclusão de uma Unidade
E ter preenchido os campos Sigla 'EEEDUAMORIMAP' - Nome da Unidade 'Estação Ecológica Edu Amorim UC' - Órgão 'Instituto de Botânica' - Município 'ADOLFO' - Responsável 'Ariana Araujo Luz' - Unidade Superior 'FF - Fundação Florestal' 
E pesquisar Pela sigla 'EEEDUAMORIMAP'
E clicar em editar Unidade
E pegar o NIS da unidade adicionada
E voltar para tela inicial do SIGAM
E clicar entrar no modulo do SIPAI
E acessar o Menu Área Protegida
E clicar em Adicionar Área Protegida
E buscar pelo NIS da Unidade
E preencher os campos Grupo 'Área Protegida' - Categoria 'Parque Ecológico' - Área '2101' - código 'EEEDUAMORIMAP'
E clicar em Atualizar cadastro da área protegida
Quando clicar na aba Institucinal dentro da área protegida
Então sistema deve exibir a sub aba Contato Institucinal
E deve ter os campos Endereço - Complemento - Bairro - CEP - DDD - Telefone - e-mail - Site - Logo
E deve conter o botões de Atualizar - Ajuda de contato institucional da aba institucional


Cenario: Verificar cadastro de contato institucional

Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
E clicar entrar no modulo do SIPAI
E acessar o Menu Área Protegida
E pesquisar Área protegida pela sigla 'APABOTUCATUCORUMBATAITEJUPA'
E acessar edição da área protegida
Quando clicar na aba Institucinal dentro da área protegida
E preencher os campos Endereço 'Rua dos testes' - Complemento 'sem número' - Bairro 'Jardim automação' - CEP '23564789' - DDD '11' - Telefone '12345678' - e-mail 'teste@test.com' - Site 'tes.com.br' - Logo
E clicar em Atualizar na tela contato institucional
Então sistema deve apresentar msg de 'Dados atualizados com sucesso'
E exibir logo da área protegida no contato institucional
E apresentar o botão de excluir ao lado do nome da imagem do contanto institucional

#Story

#COMO técnico QUERO incluir o Logo da Área Protegida
#PARA que eu possa ter o controle de tal informação, bem como a visualização do logo da Unidade
#Sprint 8

Cenario: Verificar adicionar imagem no formato errado
Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
E clicar entrar no modulo do SIPAI
E acessar o Menu Área Protegida
E pesquisar Área protegida pela sigla 'APABOTUCATUCORUMBATAITEJUPA'
E acessar edição da área protegida
Quando clicar na aba Institucinal dentro da área protegida
E incluir uma imagem no formato invalido na área protegida
Então sistema deve apresentar mensagem 'Arquivo no formato inválido!'