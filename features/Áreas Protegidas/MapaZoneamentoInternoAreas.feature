#language: pt
#utf-8

Funcionalidade: Verificar Mapa de zoneamento Interno de Áreas da área protegida

#UserStory- 43764-UserStory-Incluir Zoneamento Interno de Áreas da Área Protegida

#Sprint 8
#SIPAI
#Eduardo Amorim

#Story

#COMO  técnico QUERO desenhar o Zoneamento Interno – Áreas da Área Protegida
#PARA que possa ser dividir por zoneamento de área, bem como classificar com as respectivas informações

Cenario: Verificar opção de zoneamento interno - áreas quando não se tem área da UC desenhada

Dado que tenha acessado o SIGAM
E tenha entrado no modulo do SIPAI
E acesse o meno de Áreas Protegidas
E esteja na edição da área Protegida
Quando clicar na aba Mapa
Então sistema não deve exibir a opção no Grid 'Zoneamento Interno - Áreas'

Cenario: Verificar opção de zoneamento interno - áreas quando se tem área da UC desenhada

Quando estiver na aba mapa de uma área protegida
E desenhe um poligono de Área da uc
Então deve apresentar no grid a opção do mapa 'Zoneamento Interno - Áreas'

Cenario: Verificar tela desenho do mapa de zoneamento - áreas

Quando Clicar em desenhar na opção de Zoneamento Interno - Áreas 
Então no cabeçalho deve conter 'Zoneamento Interno - Áreas' - Nome da Área Protegida - Opções e informações de Importação - Opção Ajuda - Opção Sair do Mapa
E mapa deve vim centralizado na Área da Unidade
E deve conter as opções Movimentação - Desenho - Remover - Salvar - informações
E deve conter a legenda com as cores dos poligonos denhados

Cenario: Verificar tela de atributos do poligono de zoneamento - áreas

Quando desenhar o poligono do mapa de zoneamento Interno - Áreas
Então sistema deve exibir tela de atributos
E deve conter os Título 'Zoneamento Interno – Áreas' - informação 'Insira as informações de Zoneamento'
E deve conter os campos Nome da Área - Objetivos - Atividades permitidas - Salvar Atributos - fechar

Cenario: Verificar campos obrigatórios da tela de atributos

Quando clicar em salvar atributos sem ter preenchidos os campos
Então sistema deve apresentar a mensagem de requerido nso campos Nome da Área

Cenario: Verificar gravação dos trabutos com o poligono de zoneamento - áreas

Quando preencher os atributos Nome da Área 'Plantação indigena' Objetivos 'Plantar' Atividades Permitidas 'Planio de mandioca'
E clicar em Salvar Atributos
E clicar em sair do mapa
Então sistema deve gravar os dados 
E atualizar o Grid com os dados do poligono desenhado

Cenario: Verificar gravação de varios poligonos 

Quando desesenhar o primeiro poligono com os atributos
E desenhar o segundo piligono com os atributos
E sair do mapa
Então sistema deve ter atualizado o Grid com os dados dos poligonos desenhados

Cenario: Verificar exclusão de poligono do mapa de zoneamento interno - Áreas

Quando clicar em excluir um do poligonos
Então sistema deve apagar o poligono