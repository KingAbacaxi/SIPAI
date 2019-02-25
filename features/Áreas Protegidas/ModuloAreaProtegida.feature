#language: pt
#utf-8
@moduloAreaProtegida

Funcionalidade: Verificar funcionamento da básico do modulo de área protegida

#automação do caminho básico domodulo de área protegida
#Eduardo

Cenario: Verificar módulo Área Protegida

Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
E clicar entrar no modulo do SIPAI
Quando acessar o Menu Área Protegida
Então sistema deve exibir modulo de Áreas Protegidas com o Título 'Áreas Protegidas'
E o componente de pesquisa
E os botões de Adicionar - Pesquisar - Excel - Altura
E o Grid com as colunas Editar - Ativa - Sigla - Área Protegida - Grupo - órgão Gestor


Cenario: Verificar Criação de uma área Protegida

Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
E ter acessado o menu Portal
E ter acessado o menu Tabelas Organizacionais
E ter clicado em Unidade
E ter clicado na inclusão de uma Unidade
E ter preenchido os campos Sigla 'EEEDUAMORIMUC' - Nome da Unidade 'Estação Ecológica Edu Amorim UC' - Órgão 'Instituto de Botânica' - Município 'ADOLFO' - Responsável 'Ariana Araujo Luz' - Unidade Superior 'FF - Fundação Florestal' 
E pesquisar Pela sigla 'EEEDUAMORIMUC'
E clicar em editar Unidade
E pegar o NIS da unidade adicionada
Quando voltar para tela inicial do SIGAM
E clicar entrar no modulo do SIPAI
E acessar o Menu Área Protegida
E clicar em Adicionar Área Protegida
E buscar pelo NIS da Unidade
E preencher os campos Grupo 'Área Protegida' - Categoria 'Parque Ecológico' - Área '2101' - código 'EEEDUAMORIMUC'
E clicar em Atualizar cadastro da área protegida
Então sistema deve exibir a msg 'Dados atualizado com sucesso' no cadastro da área protegida

Cenario: Verificar Exclusão de uma área protegida mas continuação como Unidade

Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
E clicar entrar no modulo do SIPAI
E acessar o Menu Área Protegida
Quando pesquisar Área protegida pela sigla 'EEEDUAMORIMUC'
E acessar edição da área protegida
E clicar em excluir área protegida
Então sistema deve desvincular a especialização de unidade 'EEEDUAMORIMUC'
Mas deve permaner a Unidade ativa 
