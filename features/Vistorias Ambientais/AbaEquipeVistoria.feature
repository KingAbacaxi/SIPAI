#language: pt
#utf-8
@abaEquipeVistoria
Funcionalidade: Verificar Aba Equipe nas Vistorias Ambientais

#UserStory- 43450-UserStory-Criar aba de Equipe

#Sprint 8
#SIPAI
#Eduardo Amorim

#Story

#COMO O técnico QUERO que seja possível incluir as informações da Equipe que participou da 
#Vistoria Ambiental após cadastro 
#PARA que seja possível detalhar o RVA, mantendo as informações mais consistentes
@verificarAbaEquipe
Cenario: Verificar aba Equipe na vistoria ambiental

Dado que tenha acessado o SIGAM
E logado no sistema com usuario 'gtiAdm' senha 'a'
E acessado o modulo SIPAI
E ter entrado no menu de Vistória Ambiental
Quando clicar em editar uma Vistoria
E clicar na aba Equipe
Então sistema deve exibir tela com o campo de seleção 'Órgãos e Instituições envolvidas:'
E deve conter o campo 'Número de participantes'
E deve conter o botão de inclusão para orgãos com participantes
E deve conter o campo de listagem 'Integrantes da Equipe da Área Protegida'
E deve conter o botão de inclução para participantes da área protegida
@verificarGridOrgao
Cenario: Verificar Grid para Orgãos e Participantes da equipe de vistoria

Quando selecionar um orgão envolvido
E preencher o número de partipantes com '32' pessoas
E clicar em Incluir órgãos
Então sistema deve apresentar o GRID com as colunas Excluir - Órgão e Instituições envolvidas - Número de Participantes
E na coluna de Excluir deve conter o simbolo de exclusão
E na coluna de Órgão e Instituições envolvidas deve conter o orgão selecionado
E na coluna Número de participantes deve conter o valor '32'

Cenario: Verificar Grid de Integrantes da Equipe da Área Protegida

Quando selecionar um participante
E clicar em incluir o participante
Então sistema deve apresnetar no grid de participante as colunas Excluir - CPF/CNPJ - Nome - Cargo ou Função - Unidade 
E na coluna de Excluir item do grid de participante deve conter o ícone de exclusão
E na coluna de CPF/CNPJ deve conter o CPF ou CNPJ do integrante incluido 
E na coluna de Nome deve conter o Nome do integrante incluido
E na coluna de Cargo ou Função deve conter o Cargo ou Função do integrante incluido
E na coluna de Unidade deve conter a Unidade do integrante incluido 

Cenario: Verificar Excluir item do Grid de Órgãos e Instituições

Quando clicar em excluir um item do grid de Órgaõs e Instituições
Então sistema deve desvincular a relação atualizando o grid sem os dados exluídos

Cenario: Verificar Excluir item do Grid de Integrantes da Área Protegida
Quando clicar em excluir um item do grid de Integrantes
Então sistema deve desvincular a relação do integrante á equipe atualizando o grid sem os dados exluídos

Cenario: Verificar listagem de itens inativos para instituição

Quando acessar o dicionario de Vistoria ambiental
E clicar no dicionario de instituição
E editar um item colocando ele inativos
E atualizar a alteração
E acessar o menu de vistoria ambiental
E estiver na aba equipe dentro de uma vistoria ambiental
E clicar no combo box de Órgãos e Instituições envolvidas
Então sistema não deve apresentar o item inativo na listagem
