#language: pt
#utf-8

Funcionalidade: Verificar Incluir Logo na UC

#UserStory- 43458-UserStory-Incluir logo da UC

#Sprint 8
#SIPAI
#Eduardo Amorim

#Story

#COMO técnico QUERO incluir o Logo da Área Protegida
#PARA que eu possa ter o controle de tal informação, bem como a visualização do logo da Unidade

Cenario: Verificar tela de contato institucional das áreas protegidas

Dado que tenha acessar o SIGAm
E acessado o modulo do SIPAI
E ter entrado no meu Áreas protegidas
Quando Clicar em editar
E acessar a aba institucional
Então sistema deve apresentar o botão Escolher arquivo
E o espaço para adicionar o logo da área protegida

Cenario: Verificar carregamento do logo
Quando escolher uma imagem
E clicar em Atualizar 
Então sistema deve carregar a imagem ao lado
E apresentar o botão de excluir ao lado do nome da imagem

Cenario: Verificar Exclusão do Logo

Quando clicar no botão de excluir
Então sistema deve retirar o logo

Cenario: Verificar adicionar imagem no formato errado

Quando incluir uma imagem no formato protegidas
Então sistema deve apresentar mensagem 'Arquivo no formato inválido!'