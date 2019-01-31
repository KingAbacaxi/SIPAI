#language: pt
#utf-8
@adicionarInstrumentoPlanoManejo
Funcionalidade: Verificar Adicionar Instrumento Plano de Manejo

#UserStory- 44017-SIPAI-Adicionar Instrumento Plano de Manejo

#Sprint 9
#SIPAI
#Eduardo Amorim

#Story

#COMO técnico QUERO informar o Instrumento Plano de Manejo na Área Protegida  
#PARA detalhar melhor o Ato Normativo


Cenario: Verificar adicionar Instrumento Plano de Manejo quando não tem dados

Dado Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
E clicar entrar no modulo do SIPAI
E ter acessado o menu do Áreas Protegidas
E estar na edição de uma área Protegida
Quando clicar na aba Institucional
Então sistema deve exibir a opção de Incluir Instrumento Plano de Manejo
Mas se não tiver nenhum dado incluido deve apresentar a msg 'Nenhum Instrumento Plano de Manejo'

Cenario: Verificar tela de inclução de Instrumento Plano de Manejo

Quando clicar em incluir Instrumento Plano de Manejo
Então Sistema deve exibir tela de cadastro de Instrumento Plano de Manejo
E os campos Data Documento - Data Publicação 
E as listagens Tipo de Documento 
E os campo Número 
E o campo de Arquivo para Instrumento Plano de Manejo
E os botões Finalizar - Atualizar - Retornar - Ajuda

Cenario: Verificar campos obrigatorios de Instrumento Plano de Manejo

Quando estiver na tela de edição de Instrumento Plano de Manejo
E clicar em atualizar
Então sistema deve apresentar a mensagem de requerido nos campos Data Documento - Data Publicação - Tipo de Documento - campo Número - Arquivo 

Cenario: Verificar listagem para o campo TIPO de DOCUMENTO

Quando incluir um novo item no dicionario de Área Protegida com o código 'TIPO DOCUMENTO Automatizado'
E preencher o novo Tipo de documento Ordem '10' - Ativo - código 'TIPODOCUMENTOAuto' - Nome 'Tipo Documento Automatizado' - Descrição 'Tipo Documento Automatizado de testes'
E finalizar a inclusão da Tipo de documento
E acessar a aba Institucional dentro de uma área protegida 
E acessar a inclusão de Instrumento Plano de Manejo 
Então no campo Tipo de Documento deve constar o item 'Tipo Documento Automatizado'

Cenario: Verificar preenchimento de um novo Instrumento Plano de Manejo

Quando clicar em Incluir um novo Instrumento Plano de Manejo
E preencher os campos Data Documento '1600102019' - Data Publicação '2000102019' - Tipo de Documento 'Tipo Documento Automatizado' - Número - '125' 
E incluir arquivo de Instrumentos normativos 
E clicar em finalizar
Então sistema deve gravar os dados de Instrumento Plano de Manejo

Cenario: Verificar GRID de Instrumento Plano de Manejo

Quando estiver na tela de atos normativos dentro da área protegida após ter incluido um Instrumento Plano de Manejo
Então no GRID de instrumentos normativos deve conter as colunas Editar - Data Documento - Finalidade - Tipo de Documento - Número -Instrumento de Policação - Área DOC - Arquivo - Excluir
E deve conter os dados que foram incluidos anteriormente Data Documento '1600102019' - Data Publicação '2000102019' - Tipo de Documento 'Tipo Documento Automatizado' - Número - '125'

Cenario: Verificar edição de Instrumento Plano de Manejo 

Quando clicar em editar Instrumento Plano de Manejo
Então sistema deve apresentar capos previamente preenchidos

Cenario: Verificar alteração nos dados de Instrumento Plano de Manejo

Quando Estiver na edição de instrumentos normativos
E editar o campo Número de Instrumentos normativos para '999'
E clicar em finalizar
Então sistema deve atualizar os dados do grid de Instrumento Plano de Manejo 

Cenario: Verificar exclução do Instrumento Plano de Manejo 

Quando clicar em excluir Instrumento Plano de Manejo do grid
Então sistema deve excluir o registro do grid


Cenario: Verificar Listagens do cadastro de Instrumento Plano de Manejo para itens inativos

Quando acessar o dicionario de Área Protegida dicionario Geral
E inativar os itens Tipo de Documento 'Tipo Documento Automatizado' 
E retornar na aba Institucional da edição de uma área protegida
E clicar em incluir um Instrumento Plano de Manejo
Então não se deve aparecer na listagem de Tipo de Documento 'Tipo Documento Automatizado'