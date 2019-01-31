#language: pt
#utf-8
@BoiDenuncia
Funcionalidade: Verificar Denuncia do BOI


#SIPAI
#Eduardo Amorim

#BDD do fluxo principal de uma denuncia do BOI


Cenario: Verificar tela geração de uma denuncia pelo Boi 

Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
E clicar entrar no modulo do SIPAI
E acessar Incêndios Florestais
E criar um BOI novo para Denuncia
Quando acessar aba Denuncia do Boi
Então sistema deve Apresentar o campo de seleção Tipo
E o botão de Gerar Denuncia
E a mensagem 'Nenhum Registro Selecionado'

Cenario: Verificar geração de uma Denuncia apos o preenchimento do BOI

Quando estiver na edição do Boi para denuncia
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
Então Sistema deve apresentar GRID com os dados da Denuncia gerada Tipo 'Queima da palha da cana'
