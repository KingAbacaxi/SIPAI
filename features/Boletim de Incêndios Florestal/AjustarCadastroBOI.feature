#language: pt
#utf-8

Funcionalidade: Verificar alteracoes no cadastro do Boletim de Ocorrencia de Incendio

#UserStory- 43098-UserStory-Ajustar cadastro do Boletim de Ocorrência

#Sprint 7
#SIPAI
#Eduardo Amorim

#Story

#COMO técnico QUERO que sejam realizados alguns ajustes no cadastro do BOI
#PARA que possa facilitar o preenchimento das informações.

Cenario:Verificar campos Grupo de UC e Órgão gestor da UC e cabeçalho

Dado que tenha acessado SIGAM
E logado com usuario 'gtiAdm' senha 'a'
E acessado o módulo do SIPAI
Quando clicar em Incêncios Florestais
E clicar em Incluir
Então sistema deve exibir tela de cadastro do BOI
E o campo Grupo de UC
E exibir o campo Grupo de UC no cabeçalho com a data de detecção a direita
E botão do conversor de coordenadas

Cenario: Verificar ação do campo Unidade de Conservação que tenha municipio no seu cadastro

Quando selecionar a unidade de conservação 'EE - Valinhos'
Então sistema deve preencher o campo Grupo de UC 
E o combo box de municipio deve aparecer selecionado o municipio da UC

Cenario: Verificar ação do campo Unidade de Conservação que não tenha municipio no seu cadastro

Quando selecionar a unidade de conservação 'EE - '
Então campo municipio deve permanecer normal

Cenario: Verificar opção do conversor de coordenadas

Quando clicar no conversor 
E preencher as coordenadas em utm
E Converter as coordenadas
E fechar o conversor 
Então As coordenadas convertidas devem esta nas coordenadas do BOI

Cenario: Verificar dados no cabeçalho apos gravar um novo BOI

Quando preencher os campos UC 'valinhos' Data detecçao '' Hora Detecção '' área abrangida 'Dentro da UC' Carac. Area 'Área Florestal' Espec. Local 'mato seco' Descrição 'pegou fogo' 
E clicar em Atualizar
Então sistema deve gravar os dados e preencher automaticamente o cabeçalho com os mesmos dados do BOI

Cenario: Verificar gravar um Boi trocando o municipio da uc

Quando mudar o municipio para 'São Paulo'
E clicar em Atualizar os dados
Então sistema deve  gravar os dados com o municipio igual do preenchimento 
