#language: pt
#utf-8
@ajustarGridAbrangencia
Funcionalidade: Verificar ajustes no grid da aba abrangência

#UserStory- 44833 -SIPAI-Ajustar Grid Abrangência

#Sprint 10
#SIPAI
#Eduardo Amorim

#Story

#COMO técnico QUERO que sejam realizados alguns ajustes no grid Abrangência 
#PARA possa facilitar a visualização das informações


Cenario: Verificar tela de abrangência ao fazer desenho da área protegida

Dado que tenha acessado o SIGAM
E tenha logado com usuário 'gtiAdm' senha 'a'
E acessado o módulo do SIPAI
E acessado o menu de Áreas protegidas
E editar uma das áreas protegidas
E acessar aba Mapa
E clicar em desenhar área da UC
E desenhar poligono da UC
E preencher o campo obs do poligono da Área protegida 'abrangencia'
E sair do mapa
Quando clicar na aba Abrangência
Então sistema deve exibir dois GRID 'UGRHI abrangida' e 'Município abrangido'

Cenario: Verificar tela de abrangência quando se exclui o desenho da área Protegida

Dado que tenha acessado o SIGAM
E tenha logado com usuário 'gtiAdm' senha 'a'
E acessado o módulo do SIPAI
E acessado o menu de Áreas protegidas
E editar uma das áreas protegidas
E acessar aba Mapa
E clicar em excluir mapa
E clicar em aceitar no alerta de excluisão do mapa
Quando clicar na aba Abrangência
Então sistema não deve exibir GRID
