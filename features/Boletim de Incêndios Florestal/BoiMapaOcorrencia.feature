#language: pt
#utf-8
@BoiMapaOcorrencia
Funcionalidade: Verificar Mapa do BOI


#SIPAI
#Eduardo Amorim

#BDD do fluxo principal do Mapa do BOI


Cenario: Verificar aba do mapa de ocorrencia de incendio

Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
Quando clicar entrar no modulo do SIPAI
E acessar Incêndios Florestais
E criar um BOI novo para Mapa
E acessar aba Mapa
Então sistema deve exibir aba do mapa com os botões de Desenhar - Ajuda - Excluir mapa
E o Grid do mapa da ocorrencia de incendio

Cenario: verificar desenho do poligo da área do boi

Quando clicar em desenhar no mapa do BOI
E desenhar mapa do boi
E preencher o atributo 'atributoOBS' do mapa do boi Salvando o atributo do boi
E clicar em sair do mapa
Então sistema deve exibir alerta de mapa do boi salvo
E atualizar dados do grid do Mapa do BOI


Cenario: Verificar excluir mapa do boi pelo grid

Quando clicar em excluir mapa da ocorrencia
E confirmar o alerta de excluir
Então o sistema deve atualizar o grid zerando os dados do mapa do boi

Cenario: Verificar inclusão de shapefile do Boi

Quando clicar em desenhar no mapa do BOI
E incluir shapefile do BOI
E clicar em Importar shapefile do boi
Então sistema deve exibir poligono no mapa do BOI