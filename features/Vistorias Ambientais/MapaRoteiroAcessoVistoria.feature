#language: pt
#utf-8
@mapaRoteiroAcessoVistoria
Funcionalidade: Verificar Mapa Roteiro de Acesso

#UserStory- 43452-UserStory-Criar Mapa Roteiro de Acesso

#Sprint 9
#SIPAI
#Eduardo Amorim

#Story

#COMO vistoriador da Área QUERO desenhar o mapa de roteiro de acesso da área vistoriada
#PARA que possa ser visualizada cartograficamente


Cenario: Verificar Grid de Mapa Roteiro de Acesso

Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
E clicar entrar no modulo do SIPAI
E ter aceesado o menu de Vistoria Ambiental
Quando clicar em Editar uma Vistoria
E acessar aba Mapa da Vistoria
Então sistema deve apresentar Grid com as colunas Desenhar - Tipo - Número de Itens - Área Calculada - Download
E conter os botçoes de Ajudar - Excluir Mapa

Cenario: Verificar Tela de desenho do Roteiro de Acesso

Quando clicar em desenhar no mapa de Roteiro de Acesso no mapa de Vistoria
Então sistema deve apresentar tela de desenho do poligóno e deve ser centralizado pelas Coordenadas Preenchidas na aba Identificação
E deve conter no cabeçalho Logo do módulo - Nome do Tipo Roteiro de Acesso - Nome da Área Protegida - Opções e informações de Importação - Opção Sair do Mapa
E deve apresentar na legenda as camadas de Municipio - Área Protegida - Desenhando Roteiro de Acesso
E caso tenha desenhado deve conter tambem as camadas Zonada de amortecimento - Rota Pecorrida - Área Fiscalizada
E deve conter as opções do mapa Movimentação - Desenho - Linha - Ponto - Remover - Salvar - info

Cenario: Verificar Tela de Atributos do mapa de Roteiro de Acesso

Quando desenhar o poligono de Roteiro de Acesso da Vistoria
Então sistema deve apresentar tela de Atributos com o Título 'Edição de:Roteiro de Acesso' a msg 'Insira as informações de roteiro de Acesso'
E deve exibir o campo Observações
E o botão de Salvar Atributo 

Cenario: Verificar gravar poligono de roteiro de acesso sem preencher atributo

Quando clicar em salvar Atributos sem preencher os dados de observação no roteiro de acesso
E clicar em Fechar mapa de Roteiro de Acesso
Então sistema deve gravar o poligono e atualizar o Grid do mapa de Roteiro de Acesso

Cenario: Verificar gravar poligono de roteiro de acesso preenchendo o atributo

Quando preencher o campo observações 'acesso pela mata' atributo do poligono do mapa Roteiro de Acesso
E clicar em Salvar Atributo no mapa 
E finalizar o desenho clicando em fechar o mapa
Então sistema deve gravar o poligono 

Cenario: Verificar opção de Remover poligono do mapa de Roteiro de Acesso

Quando clicar em desenhar Roteiro de Acesso que já foi denhado 
E clicar sobre o poligono já desenhado
E clicar em Remover
Então sistema deve apresentar mensagem de confirmação

Cenario: Verificar opção não na confirmação de Remover poligono do mapa de Roteiro de acesso

Quando clicar em não remover o poligono de roteiro de acesso
Então sistema deve manter o poligono desenhado

Cenario: Verificar opção sim na confirmação de Remover poligono do mapa de Roteiro de acesso

Quando clicar em sim remover o poligono de roteiro de acesso
Então sistema deve apagar o poligono desenhado

Cenario: Verificar emportaçãoção do shapefile do Roteiro de Acesso

Quando clicar na opção de shapefile para download do roteiro de Acesso
Então sistema deve realizar o download

Cenario: Verificar importação do shapefile do roteiro de Acesso

Quando clicar na opção de Escolher aquivo shapefile do mapa de Roteiro de Acesso
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



