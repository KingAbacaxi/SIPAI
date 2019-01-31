#language: pt
#utf-8

Funcionalidade: Verificar tela de incluir atributos para área disponível para restauração

#UserStory- 42649-UserStory-Incluir atributos para Área disponível para restauração

#Sprint 7
#SIPAI
#Eduardo Amorim

#Story

#COMO COMO técnico QUERO que sejam realizados alguns ajustes no mapa da Área disponível para Restauração
#PARA que eu possa incluir atributos importantes nesta camada, bem como verificar as 
#informações no Programa Nascentes

Cenario: Verificar modal de atributos após desenhar um poligono de área para restauração
Dado que tenhar acessado o SIGAM
E feito logim com usuario 'gtiAdm' senha 'a'
E clicardo no modulo do SIPAI
E acessado o menu Áreas Protegidas
E editado uma UC 'Avaré'
E esteja na aba mapa
Quando clicar em Desenhar em Áreas disponível para restauração
E desenhar o poligono
Então o sistema deve apresentar tela de atributos

Cenario: Verificar itens dentro do combo box de Tipo de Vegetação
Quando abrir a seleção de itens do combo box e gravar os ativos
E clicar no Dicionarios de Tipo de Vegetação
E clicar em editar um dos tipos ativos
E desativar o tipo de Vegetação
E grvar a alteração
E voltar no modal de atributos do mapa de area disponível para restauração
E clicar no campo tipo de Vegetação
Então o item desativado não deve esta na lista

Cenario: Verificar inclução de itens no grid de tipo de vegetação
Quando escolher o tipo de vegetação
E clicar em incluir
Então sistema deve atualizar a interface do Grid com os dados do tipo escolhido com as colunas Excluir e Tipo de Vegetação

Cenario: Verificar Exclusão de um tipo de vegetação do grid de atributos
Quando clicar no botão de excluir no grid 
Então Sistema deve atualizar o gird removendo o tipo de vegetação

Cenario: Verificar campos requeridos no modal
Quando clciar em Salvar Atributo sem preencher nenhum campo
Então sistema deve apresentar a mensagem de requerido ao lado do campo Tipo de Vegetação

Cenario: Verificar gravação temporaria do atributo
Quando preencher todos os campos
E clicar em salvar atributo
Então sistema deve gravar temporariamente os dados

Cenario: Verificar exibição dos atributos
Quando clicar no botão de informações
E clicar no poligono de restauração
Então sistema deve exibir o modal do atributo

Cenario: Verificar exportação de shapefile com atributo
Quando exportar o arquivo shapefile
Então sistema deve gravar poligono com atributo