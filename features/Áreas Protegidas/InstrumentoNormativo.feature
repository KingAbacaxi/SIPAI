#language: pt
#utf-8
@adicionarInstrumentoNormativo
Funcionalidade: Verificar Adicionar instrumento Normativo

#UserStory- 42986-SIPAI-Adicionar Instrumento Normativo

#Sprint 9
#SIPAI
#Eduardo Amorim

#Story

#COMO técnico QUERO informar o Instrumento Normativo na Área Protegida 
#PARA detalhar melhor o Ato Normativo


Cenario: Verificar adicionar Instrumento Normativo quando não tem dados

Dado Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
E clicar entrar no modulo do SIPAI
E ter acessado o menu do Áreas Protegidas
E estar na edição de uma área Protegida
Quando clicar na aba Institucional
Então sistema deve exibir a opção de Incluir Instrumento Normativo
Mas se não tiver nenhum dado incluido deve apresentar a msg 'Nenhum Instrumento Normativo'

Cenario: Verificar tela de inclução de Instrumento Normativo 

Quando clicar em incluir Instrumento Normativo
Então Sistema deve exibir tela de cadastro de instrumento Normativo
E os campos Data Documento - Data Publicação
E as listagens Finalidade - Tipo de Documento - Instrumento de Publicação
E os campos Número - Área Documento
E o campo de Arquivo para instrumento Normativo
E os botões Finalizar - Atualizar - Retornar - Ajuda

Cenario: Verificar campos obrigatorios de instrumento normativo

Quando estiver na tela de edição de instrumento normativo
E clicar em atualizar
Então sistema deve apresentar a mensagem de requerido nos campos Data Documento	- Data Publicação - Finalidade - Tipo de Documento - Número - Instrumento de Publicação - Arquivo 

Cenario: Verificar listagem para o campo Finalidade

Quando incluir um novo item no dicionario de Área Protegida com o código 'FINALIDADE'
E preencher a nova Finalidade Ordem '10' - Ativo - código 'normativoAuto' - Nome 'Normativo Automatizado' - Descrição 'Normativo Automatizado de testes'
E finalizar a inclusão da finalidade
E acessar a aba Institucional dentro de uma área protegida 
E acessar a inclusão de Instrumento Normativo 
Então no campo Finalidade deve constar o item 'Normativo Automatizado'

Cenario: Verificar listagem para o campo TIPO de DOCUMENTO

Quando incluir um novo item no dicionario de Área Protegida com o código 'TIPO DOCUMENTO Automatizado'
E preencher o novo Tipo de documento Ordem '10' - Ativo - código 'TIPODOCUMENTOAuto' - Nome 'Tipo Documento Automatizado' - Descrição 'Tipo Documento Automatizado de testes'
E finalizar a inclusão da Tipo de documento
E acessar a aba Institucional dentro de uma área protegida 
E acessar a inclusão de Instrumento Normativo 
Então no campo Tipo de Documento deve constar o item 'Tipo Documento Automatizado'

Cenario: Verificar listagem para o campo Instrumento Publicação

Quando incluir um novo item no dicionario de Área Protegida com o código 'INSTRUMENTO PUBLICITARIO'
E preencher o novo Instrumento Publicação Ordem '10' - Ativo - código 'TIPODOCUMENTOAuto' - Nome 'INSTRUMENTO PUBLICITARIO Automatizado' - Descrição 'INSTRUMENTO PUBLICITARIO Automatizado de testes'
E finalizar a inclusão da Instrumento Publicação
E acessar a aba Institucional dentro de uma área protegida 
E acessar a inclusão de Instrumento Normativo 
Então no campo Tipo de Documento deve constar o item 'INSTRUMENTO PUBLICITARIO Automatizado'

Cenario: Verificar preenchimento de um novo instrumento normativo

Quando clicar em Incluir um novo instrumento normativo
E preencher os campos Data Documento '1600102019' - Data Publicação '2000102019' - Finalidade - 'Normativo Automatizado' - Tipo de Documento 'Tipo Documento Automatizado' - Número - '125' - Instrumento de Publicação - 'INSTRUMENTO PUBLICITARIO Automatizado' - Área DOC 'Não faço idéia'
E incluir arquivo de Instrumentos normativos 
E clicar em finalizar
Então sistema deve gravar os dados de instrumento normativo

Cenario: Verificar GRID de instrumento normativo

Quando estiver na tela de atos normativos dentro da área protegida após ter incluido um instrumento normativo
Então no GRID de instrumentos normativos deve conter as colunas Editar - Data Documento - Finalidade - Tipo de Documento - Número -Instrumento de Policação - Área DOC - Arquivo - Excluir
E deve conter os dados que foram incluidos anteriormente Data Documento '1600102019' - Data Publicação '2000102019' - Finalidade - 'Normativo Automatizado' - Tipo de Documento 'Tipo Documento Automatizado' - Número - '125' - Instrumento de Publicação - 'INSTRUMENTO PUBLICITARIO Automatizado' - Área DOC 'Não faço idéia'

Cenario: Verificar edição de instrumento normativo 

Quando clicar em editar instrumento normativo 
Então sistema deve apresentar capos previamente preenchidos

Cenario: Verificar alteração nos dados de instrumento normativo

Quando Estiver na edição de instrumentos normativos
E editar o campo Número de Instrumentos normativos para '999'
E clicar em finalizar
Então sistema deve atualizar os dados do grid de instrumento normativo 

Cenario: Verificar exclução do instrumento Normativo 

Quando clicar em excluir instrumento normativo do grid
Então sistema deve excluir o registro do grid


Cenario: Verificar Listagens do cadastro de instrumento Normativos para itens inativos

Quando acessar o dicionario de Área Protegida dicionario Geral
E inativar os itens Finalidade 'Normativo Automatizado' - Tipo de Documento 'Tipo Documento Automatizado' - Intrumento PUBLICITARIO 'INSTRUMENTO PUBLICITARIO Automatizado'
E retornar na aba Institucional da edição de uma área protegida
E clicar em incluir um Instrumento Normativo
Então não se deve aparecer na listagem de Finalidade 'Normativo Automatizado'
E não se deve aparecer na listagem de Tipo de Documento 'Tipo Documento Automatizado'
E não se deve aparecer na listagem de Intrumento PUBLICITARIO 'INSTRUMENTO PUBLICITARIO Automatizado'