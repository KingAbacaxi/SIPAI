#language: pt
#utf-8
@mapaAreaFiscalizadaVistoria
Funcionalidade: Verificar Mapa Área Fiscalizada na Vistoria

#UserStory- 43454-UserStory-Criar Mapa Área Fiscalizada


#Sprint 9
#SIPAI
#Eduardo Amorim

#Story

#COMO vistoriador da Área QUERO desenhar o mapa de Área Fiscalizada da área vistoriada
#PARA que possa ser visualizada cartograficamente


Cenario: Verificar Grid de Mapa Área Fiscalizada

Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
E clicar entrar no modulo do SIPAI
E ter aceesado o menu de Vistoria Ambiental
Quando clicar em Editar uma Vistoria
E acessar aba Mapa da Vistoria
Então sistema deve apresentar Grid com as colunas Desenhar - Tipo - Número de Itens - Área Calculada - Download
E conter os botçoes de Ajudar - Excluir Mapa

Cenario: Verificar Tela de desenho do Mapa Área Fiscalizada

Quando clicar em desenhar no Mapa Área Fiscalizada no mapa de Vistoria
Então sistema deve apresentar tela de desenho do poligóno e deve ser centralizado pelas Coordenadas Preenchidas na aba Identificação
E deve conter no cabeçalho Logo do módulo - Nome do Tipo Área Fiscalizada - Nome da Área Protegida - Opções e informações de Importação - Opção Sair do Mapa
E deve apresentar na legenda as camadas de Municipio - Área Protegida - Desenhando Área Fiscalizada
E caso tenha desenhado deve conter tambem as camadas Zonada de amortecimento - Rota Pecorrida - Área Fiscalizada
E deve conter as opções do mapa Movimentação - Desenho - Linha - Ponto - Remover - Salvar - info

Cenario: Verificar Tela de Atributos do mapa de Área Fiscalizada

Quando desenhar o poligono de Área Fiscalizada da Vistoria
Então sistema deve apresentar tela de Atributos com o Título 'Edição de:Área Fiscalizada' a msg 'Insira as informações de Área Fiscalizada'
E deve exibir o campo Observações
E o botão de Salvar Atributo 

Cenario: Verificar gravar poligono de Área Fiscalizada sem preencher atributo

Quando clicar em salvar Atributos sem preencher os dados de observação no Área Fiscalizada
E clicar em Fechar mapa de Área Fiscalizada
Então sistema deve gravar o poligono e atualizar o Grid do mapa de Área Fiscalizada

Cenario: Verificar gravar poligono de Área Fiscalizada preenchendo o atributo

Quando preencher o campo observações 'acesso pela mata' atributo do poligono do mapa Área Fiscalizada
E clicar em Salvar Atributo no mapa 
E finalizar o desenho clicando em fechar o mapa
Então sistema deve gravar o poligono 

Cenario: Verificar opção de Remover poligono do mapa de Área Fiscalizada

Quando clicar em desenhar Área Fiscalizada que já foi denhado 
E clicar sobre o poligono já desenhado
E clicar em Remover
Então sistema deve apresentar mensagem de confirmação

Cenario: Verificar opção não na confirmação de Remover poligono do mapa de Área Fiscalizada

Quando clicar em não remover o poligono de Área Fiscalizada
Então sistema deve manter o poligono desenhado

Cenario: Verificar opção sim na confirmação de Remover poligono do mapa de Área Fiscalizada

Quando clicar em sim remover o poligono de Área Fiscalizada
Então sistema deve apagar o poligono desenhado

Cenario: Verificar emportaçãoção do shapefile do Área Fiscalizada

Quando clicar na opção de shapefile para download do Área Fiscalizada
Então sistema deve realizar o download

Cenario: Verificar importação do shapefile do Área Fiscalizada

Quando clicar na opção de Escolher aquivo shapefile do mapa de Área Fiscalizada
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
