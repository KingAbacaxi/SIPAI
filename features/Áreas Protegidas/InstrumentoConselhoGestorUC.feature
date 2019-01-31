#language: pt
#utf-8
@adicionarInstrumentoConselhoGestor
Funcionalidade: Verificar Adicionar instrumento Conselho Gestor

#UserStory- 44016-SIPAI-Adicionar Instrumento Conselho Gestor

#Sprint 9
#SIPAI
#Eduardo Amorim

#Story

#COMO técnico QUERO informar o Instrumento Conselho Gestor na Área Protegida  
#PARA detalhar melhor o Ato Normativo


Cenario: Verificar adicionar instrumento Conselho Gestor quando não tem dados

Dado Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
E clicar entrar no modulo do SIPAI
E ter acessado o menu do Áreas Protegidas
E estar na edição de uma área Protegida
Quando clicar na aba Institucional
Então sistema deve exibir a opção de Incluir instrumento Conselho Gestor
Mas se não tiver nenhum dado incluido deve apresentar a msg 'Nenhum instrumento Conselho Gestor'

Cenario: Verificar tela de inclução de instrumento Conselho Gestor

Quando clicar em incluir instrumento Conselho Gestor
Então Sistema deve exibir tela de cadastro de instrumento Conselho Gestor
E os campos Data Documento - Data Publicação - Início do Mandato - Fim do MAndato 
E as listagens Tipo de Documento - Instrumento de Publicação
E os campo Número 
E o campo de Arquivo para instrumento Conselho Gestor
E os botões Finalizar - Atualizar - Retornar - Ajuda

Cenario: Verificar campos obrigatorios de instrumento Conselho Gestor

Quando estiver na tela de edição de instrumento Conselho Gestor
E clicar em atualizar
Então sistema deve apresentar a mensagem de requerido nos campos Data Documento - Data Publicação - Início do Mandato - Fim do MAndato - Tipo de Documento - Instrumento de Publicação - campo Número - Arquivo 

Cenario: Verificar listagem para o campo TIPO de DOCUMENTO

Quando incluir um novo item no dicionario de Área Protegida com o código 'TIPO DOCUMENTO Automatizado'
E preencher o novo Tipo de documento Ordem '10' - Ativo - código 'TIPODOCUMENTOAuto' - Nome 'Tipo Documento Automatizado' - Descrição 'Tipo Documento Automatizado de testes'
E finalizar a inclusão da Tipo de documento
E acessar a aba Institucional dentro de uma área protegida 
E acessar a inclusão de instrumento Conselho Gestor 
Então no campo Tipo de Documento deve constar o item 'Tipo Documento Automatizado'

Cenario: Verificar listagem para o campo Instrumento Publicação

Quando incluir um novo item no dicionario de Área Protegida com o código 'INSTRUMENTO PUBLICITARIO'
E preencher o novo Instrumento Publicação Ordem '10' - Ativo - código 'TIPODOCUMENTOAuto' - Nome 'INSTRUMENTO PUBLICITARIO Automatizado' - Descrição 'INSTRUMENTO PUBLICITARIO Automatizado de testes'
E finalizar a inclusão da Instrumento Publicação
E acessar a aba Institucional dentro de uma área protegida 
E acessar a inclusão de instrumento Conselho Gestor 
Então no campo Tipo de Documento deve constar o item 'INSTRUMENTO PUBLICITARIO Automatizado'

Cenario: Verificar preenchimento de um novo instrumento Conselho Gestor

Quando clicar em Incluir um novo instrumento Conselho Gestor
E preencher os campos Data Documento '1600102019' - Data Publicação '2000102019' - Inicio Mandato '2001202013' - Fim Mandato '2001202018' - Tipo de Documento 'Tipo Documento Automatizado' - Número - '125' - Instrumento de Publicação - 'INSTRUMENTO PUBLICITARIO Automatizado' 
E incluir arquivo de Instrumentos normativos 
E clicar em finalizar
Então sistema deve gravar os dados de instrumento Conselho Gestor

Cenario: Verificar GRID de instrumento Conselho Gestor

Quando estiver na tela de atos normativos dentro da área protegida após ter incluido um instrumento Conselho Gestor
Então no GRID de instrumentos normativos deve conter as colunas Editar - Data Documento - Finalidade - Tipo de Documento - Número -Instrumento de Policação - Área DOC - Arquivo - Excluir
E deve conter os dados que foram incluidos anteriormente Data Documento '1600102019' - Data Publicação '2000102019' - Inicio Mandato '2001202013' - Fim Mandato '2001202018' - Tipo de Documento 'Tipo Documento Automatizado' - Número - '125' - Instrumento de Publicação - 'INSTRUMENTO PUBLICITARIO Automatizado' 

Cenario: Verificar edição de instrumento Conselho Gestor 

Quando clicar em editar instrumento Conselho Gestor
Então sistema deve apresentar capos previamente preenchidos

Cenario: Verificar alteração nos dados de instrumento Conselho Gestor

Quando Estiver na edição de instrumentos normativos
E editar o campo Número de Instrumentos normativos para '999'
E clicar em finalizar
Então sistema deve atualizar os dados do grid de instrumento Conselho Gestor 

Cenario: Verificar exclução do instrumento Conselho Gestor 

Quando clicar em excluir instrumento Conselho Gestor do grid
Então sistema deve excluir o registro do grid


Cenario: Verificar Listagens do cadastro de instrumento Conselho Gestor para itens inativos

Quando acessar o dicionario de Área Protegida dicionario Geral
E inativar os itens Tipo de Documento 'Tipo Documento Automatizado' - Intrumento PUBLICITARIO 'INSTRUMENTO PUBLICITARIO Automatizado'
E retornar na aba Institucional da edição de uma área protegida
E clicar em incluir um instrumento Conselho Gestor
Então não se deve aparecer na listagem de Tipo de Documento 'Tipo Documento Automatizado'
E não se deve aparecer na listagem de Intrumento PUBLICITARIO 'INSTRUMENTO PUBLICITARIO Automatizado' 