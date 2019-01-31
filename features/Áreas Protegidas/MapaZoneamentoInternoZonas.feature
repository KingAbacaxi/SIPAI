#language: pt
#utf-8

Funcionalidade: Verificar Mapa Zoneamento Interno de Zonas da Área Protegida

#UserStory- 42987-UserStory-Incluir Zoneamento Interno de Zonas da Área Protegida

#Sprint 8
#SIPAI
#Eduardo Amorim

#Story

#COMO técnico QUERO desenhar o Zoneamento Interno - Zonas da Área Protegida
#PARA que possa ser dividir a Área por Zonas, bem como classificar com as respectivas informações

Cenario: Verificar opção de mapa Zoneamento Interno - Zonas sem área da uc desenhada

Dado que tenha acessado o SIGAM
E tenha entrado no modulo do SIPAI
E acesse o meno de Áreas Protegidas
E esteja na edição da área Protegida
Quando clicar na aba Mapa
Então sistema não deve exibir a opção no Grid 'Zoneamento Interno - Zonas'

Cenario: Verificar opção de mapa Zoneamento Interno - Zonas com área da uc desenhada

Quando estiver na aba mapa de uma área protegida
E desenhe um poligono de Área da uc
Então deve apresentar no grid a opção do mapa 'Zoneamento Interno - Zonas'

Cenario: Verificar interface de desenho do mapa de Zoneamento Interno - Zonas

Quando Clicar em desenhar na opção de Zoneamento Interno - Zonas
Então no cabeçalho deve conter 'Zoneamento Interno - Zonas' - Nome da Área Protegida - Opções e informações de Importação - Opção Ajuda - Opção Sair do Mapa
E mapa deve vim centralziado na Área da Unidade
E deve conter as opções Movimentação - Desenho - Remover - Salvar - informações
E deve conter a legenda com as cores dos poligonos denhados


Cenario: Verificar tela de atributos

Quando desenhar o poligono do mapa de zoneamento Interno - zonas
Então sistema deve exibir tela de atributos
E deve conter os Título 'Zoneamento Interno – Zonas' - informação 'Desenhe a área e insira as informações de Zoneamento Interno'
E deve conter os campos Nome da Zona - Objetivo - Atividades permitidas - Salvar Atributos - fechar

Cenario: Verificar campos obrigatorios da tela de atributos

Quando clicar em salvar atributos sem ter preenchidos os campos
Então sistema deve apresentar a mensagem de requerido nso campos Nome da Zona

Cenario: Verificar gravar os atributos e o poligono do mapa de zoneamento interno - Zonas
Quando preencher os atributos Nome da Zona 'Plantação indigena' Objetidos 'Plantar' Atividades Permitidas 'Planio de mandioca'
E clicar em Salvar Atributos
E clicar em sair do mapa
Então sistema deve gravar os dados 
E atualizar o Grid com os dados do poligono desenhado

Cenario: Verificar gravar mais de um poiligono de mapa se sobreponto 

Quando desesenhar o primeiro poligono com os atributos
E desenhar o segundo piligono com os atributos
E sair do mapa
Então sistema deve ter atualizado o Grid com os dados dos poligonos desenhados

Cenario: Verificar exclusão de poligono do mapa de zoneamento interno - zonas

Quando clicar em excluir um do poligonos
Então sistema deve apagar o poligono

