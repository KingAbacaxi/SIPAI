#language: pt
#utf-8

Funcionalidade: Ajustar Grid Ações de Denúncia e Filtros Cadastro Denúncia


#UserStory- 45657 - Ajustar Grid Ações de Denúncia e Filtros Cadastro Denúncia

#Sprint 12
#SIPAI
#Renan Sano Ferrari

#Story

#COMO técnico
#QUERO que sejam realizados alguns ajustes no grid da Denúncia e Fiscalização e nos filtros do Cadastro
#PARA que possa facilitar a adequação das informações.

Cenario: Conferir alteração de apresentação no GRID
Dado que acesse o SIGAM
E clicar em Login
E clicar em Usuário
E inserir Usuário ''
E clicar em Senha
E inserir Senha ''
E clicar em SIPAI
E Clicar em Ocorrencias
Quando clicar em Pesquisar
Então o sistema apresenta os dados da coluna Cadastro de forma Decrescente

Cenário: Conferir apresentação do campo Classe quando Denúncia a partir do SIOPM
Dado que acesse o SIGAM
E clicar em Login
E clicar em Usuário
E inserir Usuário ''
E clicar em Senha
E inserir Senha ''
E clicar em SIPAI
E Clicar em Ocorrencias
E selecionar campo de pesquisa 'Forma'
E selecionar campo de pesquisa 2 'igual a'
E escrever 'SIOPM'
E clicar em adicionar
E clicar em Pesquisar
Quando clicar em Editar
E clicar no campo Classe
Então o sistema carrega todas as classes sem realizar nenhum filtro

Cenário: Conferir apresentação do campo Tipo quando Denúncia a partir do SIOPM
Dado que acesse o SIGAM
E clicar em Login
E clicar em Usuário
E inserir Usuário ''
E clicar em Senha
E inserir Senha ''
E clicar em SIPAI
E Clicar em Ocorrencias
E selecionar campo de pesquisa 'Forma'
E selecionar campo de pesquisa 2 'Igual a'
E escrever 'SIOPM'
E clicar em adicionar
E clicar em Pesquisar
Quando clicar em Editar
E clicar no campo Tipo
Então o sistema carrega todos os tipos sem realizar nenhum filtro

Cenário: Conferir apresentação do campo Categoria quando Denúncia a partir do SIOPM
Dado que acesse o SIGAM
E clicar em Login
E clicar em Usuário
E inserir Usuário ''
E clicar em Senha
E inserir Senha ''
E clicar em SIPAI
E Clicar em Ocorrencias
E selecionar campo de pesquisa 'Forma'
E selecionar campo de pesquisa 2 'Igual a'
E escrever 'SIOPM'
E clicar em adicionar
E clicar em Pesquisar
Quando clicar em Editar
Então o sistema carrega todas as Categorias sem realizar nenhum filtro
