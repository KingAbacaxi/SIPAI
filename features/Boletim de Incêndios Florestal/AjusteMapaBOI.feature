#language: pt
#utf-8

Funcionalidade: Verificar ajustes no mapa da ocorrencia de incendio

#UserStory- 39938-UserStory-Ajustar mapa da ocorrência de incêndio

#Sprint 7
#SIPAI
#Eduardo Amorim

#Story

#COMO técnico QUERO que sejam realizados alguns ajustes no mapa da ocorrência de incêndio
#PARA que eu possa visualizar as camadas da Área Protegida, bem como garantir 
#o preenchimento correto das informações

Cenario: Verificar as camadas do mapa quando se tem área da uc e zona de amortecimento
Dado que tenah acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
E acessado o modulo do SIPAI
Quando clicar em ocorrencia de incendio
E clicar em Novo
E preencher os campos UC 'valinhos' Data detecçao '' Hora Detecção '' área abrangida 'Dentro da UC' Carac. Area 'Área Florestal' Espec. Local 'mato seco' Descrição 'pegou fogo' 
E clicar em Atualizar
E clicar na aba mapa
E clicar em desenhar
Então sistema deve exibir mapa com as camadas de UC e Zona de amortecimento

Cenario: Verificar mapa quando só se tem camada de UC desenhada
Quando clicar em editar um BOI
E alterar a Unidade de conservação para 'Avaré'
E clicar em alterar
E clicar em desenhar no mapa 
Então sistema deve exibir apenas a área da uc 

Cenario: Verificar mapa quando não se tem UC nem zona desenhada
Quando clicar em editar um BOI
E alterar a Unidade de conservação para 'Avaré'
E clicar em alterar
E clicar em desenhar no mapa 
Então sistema deve exibir apenas a área da uc 

Cenario: Verificar atributos do poligono de incendio
Quando desenhar o poligono do incendio
Então sistema deve exibir tela de atributos com o campo 'Observações:'

Cenario: Verificar obrigatoriedade do atributo do poligono de incendio
Quando fechar o modal do atributo
E clicar em fechar o mapa
Então o sistema deve gravar o poligono atualizando o grid

Cenario: Verificar tamanho maximo do atributo do poligono
Quando preencher o atributo com '201' caracteres
E clicar em Salvar
Então sistema deve gravar somente '200' caracteres

Cenario: Verificar atributos do poligono de incendio sendo gravado
Quando preencher o atributo 'incendio 1'
E clicar em Salvar atributos
E fechar o mapa 
Então sistema deve gravar o poligono junto com o atributo 

Cenario: Verificar atributos do poligono de incendio com mais de 1 poligono sendo gravado
Quando desenhar o primeiro poligono
E preenhcer o primeiro atributo 'incendio 1'
E salvar o primeiro atributo
E desenhar o segundo poligono
E preencher o segundo atributo 'incendio 2'
E salvar o segundo atributo
E sair do mapa
Então sistema deve gravar os 2 poligonos com seus atributos


