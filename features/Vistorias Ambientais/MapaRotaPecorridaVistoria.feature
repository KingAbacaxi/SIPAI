#language: pt
#utf-8
@mapaRotaPecorridaVistoria
Funcionalidade: Verificar Mapa Rota Pecorrida na Vistoria

#UserStory- 43453-UserStory-Criar Mapa Rota Percorrida

#Sprint 9
#SIPAI
#Eduardo Amorim

#Story

#COMO vistoriador da Área QUERO desenhar o mapa de Rota Percorrida da área vistoriada
#PARA que possa ser visualizada cartograficamente


Cenario: Verificar Grid de Mapa Rota Percorrida

Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
E clicar entrar no modulo do SIPAI
E ter aceesado o menu de Vistoria Ambiental
Quando clicar em Editar uma Vistoria
E acessar aba Mapa da Vistoria
Então sistema deve apresentar Grid com as colunas Desenhar - Tipo - Número de Itens - Área Calculada - Download
E conter os botçoes de Ajudar - Excluir Mapa

Cenario: Verificar Tela de desenho do Mapa Rota Percorrida

Quando clicar em desenhar no Mapa Rota Percorrida no mapa de Vistoria
Então sistema deve apresentar tela de desenho do poligóno e deve ser centralizado pelas Coordenadas Preenchidas na aba Identificação
E deve conter no cabeçalho Logo do módulo - Nome do Tipo Rota Percorrida - Nome da Área Protegida - Opções e informações de Importação - Opção Sair do Mapa
E deve apresentar na legenda as camadas de Municipio - Área Protegida - Desenhando Rota Percorrida
E caso tenha desenhado deve conter tambem as camadas Zonada de amortecimento - Rota Pecorrida - Área Fiscalizada
E deve conter as opções do mapa Movimentação - Desenho - Linha - Ponto - Remover - Salvar - info

Cenario: Verificar Tela de Atributos do mapa de Rota Percorrida

Quando desenhar o poligono de Rota Percorrida da Vistoria
Então sistema deve apresentar tela de Atributos com o Título 'Edição de:Rota Percorrida' a msg 'Insira as informações de Rota Percorrida'
E deve exibir o campo Observações
E o botão de Salvar Atributo 

Cenario: Verificar gravar poligono de Rota Percorrida sem preencher atributo

Quando clicar em salvar Atributos sem preencher os dados de observação no Rota Percorrida
E clicar em Fechar mapa de Rota Percorrida
Então sistema deve gravar o poligono e atualizar o Grid do mapa de Rota Percorrida

Cenario: Verificar gravar poligono de Rota Percorrida preenchendo o atributo

Quando preencher o campo observações 'acesso pela mata' atributo do poligono do mapa Rota Percorrida
E clicar em Salvar Atributo no mapa 
E finalizar o desenho clicando em fechar o mapa
Então sistema deve gravar o poligono 

Cenario: Verificar opção de Remover poligono do mapa de Rota Percorrida

Quando clicar em desenhar Rota Percorrida que já foi denhado 
E clicar sobre o poligono já desenhado
E clicar em Remover
Então sistema deve apresentar mensagem de confirmação

Cenario: Verificar opção não na confirmação de Remover poligono do mapa de Rota Percorrida

Quando clicar em não remover o poligono de Rota Percorrida
Então sistema deve manter o poligono desenhado

Cenario: Verificar opção sim na confirmação de Remover poligono do mapa de Rota Percorrida

Quando clicar em sim remover o poligono de Rota Percorrida
Então sistema deve apagar o poligono desenhado

Cenario: Verificar emportaçãoção do shapefile do Rota Percorrida

Quando clicar na opção de shapefile para download do Rota Percorrida
Então sistema deve realizar o download

Cenario: Verificar importação do shapefile do Rota Percorrida

Quando clicar na opção de Escolher aquivo shapefile do mapa de Rota Percorrida
E clciar em importar
Então sistema deve realizar a importação do poligono para o mapa

Cenario: Verificar o Excluir todos os mapas da vitoria ambiental

Quando clicar na opção de excluir todos os mapas da vistoria ambiental
Então sistema deve apresentar tela de confirmação de excluir todos os mapas

Cenario: Verificar opção não para Excluir todos os mapas da vistoria ambiental

Quando clicar na opção não de excluir todos os mapas da Vistoria ambiental
Então sistema deve manter os mapas

Cenario: Verificar opção sim para Excluir todos os mapas da vistoria ambiental

Quando clicar na opção sim de excluir todos os mapas da Vistoria ambiental
Então sistema deve apagar todos os mapas
