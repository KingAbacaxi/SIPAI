#language: pt
#utf-8
@FuncionalidadeGeracaoDenunciaBoi
Funcionalidade: Verificar funcionalidades na geração de Denúncia do BOI

#UserStory- 38327-SIPAI-Incluir funcionalidades na geração de Denúncia

#Sprint 10
#SIPAI
#Eduardo Amorim

#Story

#COMO técnico QUERO incluir algumas funcionalidades na interface de geração de Denúncia
#PARA que seja possível remover registro, incluir providência automaticamente e arquivos na Denúncia aberta


Cenario: Verificar migração do mapa e Anexo do BOI para Denuncia na sua geração
Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
E clicar entrar no modulo do SIPAI
E acessar Incêndios Florestais
E criar um BOI novo para Denuncia
E acessar a Aba Espeficicação do BOI
E selecionar nso campos Detecção de Incendio 'Vistorias Mata' - Provável Causa do Incendio 'Desconhecida' - Provável Causador 'Outros'
E preencher os campos de especificação Caracteristica da Ocorrencia Fogo rateiro - Observações 'Muito fogo'
E clicar em Atualizar especificação
E acessar a Aba Combate do BOI
E preencher os campos Extinção do fogo: Combate Direto - Participação do corpo de bombeiros: não na denuncia
E selecionar os campos Nível de acionamento 'Nível 2' - Especificação do combate 'Combate Aéreo' - Órgãos 'Defesa Civil' Numero '22' - Recursos envolvidos 'Equipamentos' descri 'pá' quant '2'
E preencher os campos Inicio combate Data '2101202018' Hora do combate '12:59' - Término combate Data '2901202018' Hora do combate '12:59'
E preencher os campos Quantidade total de água '1234.541' - Estimativa total de gastos '12453,56' - Detalhamento do combate 'combate fogo'
E clicar em Incluir combate
E acessar aba Danos
E selecionar nos campos Tipo Vegetacao 'Reflorestamento' - Outros Danos 'TCRA queimado' - Descrição Outros Danos 'Queimado' para denuncia
E preencher os campos Área atingida dentro '21,6' - Área atingida fora '10,6' - Bioma Cerrado - obs 'automatizado'
E clicar em Atualizar Danos
E acessar aba Mapa
E clicar em desenhar no mapa do BOI para denuncia
E desenhar mapa do boi
E preencher o atributo 'atributoOBS' do mapa do boi Salvando o atributo do boi
E clicar em sair do mapa
E sistema deve exibir alerta de mapa do boi salvo
E clicar na aba de Anexos
E clicar em incluir anexo do boi para denuncia
E preencher os campos Título do Anexo 'Automação anexo' - Responsável 'Eduardo' - Descrição 'Automatização do Anexamento'
E selecionar o Tipo de Documento 'Laudo Pericial'
E escolher o documento do anexo do BOI 
E clicar em Finalizar Anexo do BoiAnexos
E acessar aba Denuncia do Boi
E selecionar o Tipo de Denuncia 'Queima da palha da cana'
E clicar em gerar Denuncia
E confirmar mensagem de Denuncia gerado com Sucesso
Quando Clicar em visualizar Denúncia
Então clicar na aba providência da denuncia Providencia 'Cadastrada'
E clicar na aba Mapa deve está o mapa desenhado no boi
E clicar na aba Anexo deve está o anexo anexado no Boi

Cenario: Verificar exclusão da denunciao pelo Boi sem apagar a Denuncia apenas perdendo o vinculo

Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
E clicar entrar no modulo do SIPAI
E acessar Incêndios Florestais
Quando estiver na edição do Boi para apagar a denuncia
E acessar aba Denuncia do Boi
E clicar em Excluir Denúncia
E acessar módulo de Denúncia
E editar Denuncia que o boi havia gerado
E acessar aba Providencia
Então deve conter a providência 'CANCELADA'