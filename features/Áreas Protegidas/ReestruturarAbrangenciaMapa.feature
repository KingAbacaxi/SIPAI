#language: pt
#utf-8

Funcionalidade: Verificar Reestruturação da abrengência para cálculo do mapa

#UserStory- 42768-UserStory-Reestruturar abrangência para cálculo no Mapa

#Sprint 8
#SIPAI
#Eduardo Amorim

#Story

#COMO técnico QUERO que a Aba Abrangência seja reestruturada para receber informações calculadas no Mapa
#PARA facilitar a entrada de dados, bem como evitar erros por parte do usuário

Cenario: Verificar Atualização da aba Abrangência quando se realiza o desenho do mapa da área da UC

Dado que tenha acessado o SIGAM
E tenha logado com usuário 'gtiAdm' senha 'a'
E acessado o módulo do SIPAI
E acessado o menu de Áreas protegidas
E editar uma das áreas protegidas
E acessar aba Mapa
Quando clicar em desenhar área da UC
E desenhar poligono da UC
E sair do mapa
Então sistema deve gravar os dados de abrangência

Cenario: Verificar reestruturação da aba abrangência

Quando acessar aba de abrangência 
Então sistema deve apresentar GRID
Mas não deve apresentar botão de inclusão 
E não deve apresentar botão de exclusão 
