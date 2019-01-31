#language: pt
#utf-8

@ajustarMapaZonaAmortecimento
Funcionalidade: Ajustes na zona de amortecimento

COMO técnico QUERO realizar alguns ajustes no mapa da Zona de Amortecimento PARA que
as informações de polígonos estejam consistentes com a realidade, bem como evitar que
pessoas preencham as informações de maneira indevida.



Cenario: Verificar flag zona de amortecimento no dicionario de Grupo de UC
Dado tenha logado no sigam
E esteja no módulo SIPAI
Quando acessar o dicionario de Grupo de UC
E clicar em incluir
Então deve exibir tela de cadastro de um novo grupo de uc com a flag 'Zona de Amortecimento' marcada

Cenario: verificar atualização de grupo de UC para não ter zona de amortecimento
Quando clicar em editar grupo de uc 'Uso Sustentável'
E desmarcar a flag zona de amortecimento
E finalizar atualização
Então sistema deve atualizar o grupo de uc

Cenario: Verificar listagem do mapa quando a UC não tem zona de amortecimento
Quando acessar o menu Áreas Protegidas
E clicar em editar uma UC do grupo que não tenha zona de amortecimento do 'Grupo' 'Contém' 'Uso Susten'
E clicar na aba mapa
Então não deve aparecer para desenhar o mapa de zona de amortecimento 


Cenario: Verificar listagem do mapa quando a UC tem zona de amortecimento
Quando clicar em editar uma UC do grupo que tenha zona de amortecimento
E clicar em mapa
Então deve aparecer para desenhar o mapa de zona de amortecimento 

Cenario: Verificar corte no poligono de zona de amortecimento quando desenhado soprepondo a área da uc
Quando clicar em Desenhar uma zona de amortecimento
E desenhar o poligono sobreponto o poligono da área da uc
Então apresentar mensagem 'Corrigido para a diferença do(a) Zona de Amortecimento com a(s) área(s) Área da UC.'
E sistema deve corta a parte que sobrepõe a área da uc

Cenario:Verificar corte no poligono caso alguma parte da zona de amortecimento sobreponha outra parte 
Quando desenhar mais de um poligono de zonada de uc com partes se sobrepondo
Então sistema deve cortar as partes que se sobrepõe
