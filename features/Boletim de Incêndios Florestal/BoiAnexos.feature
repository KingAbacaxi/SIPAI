#language: pt
#utf-8
@BoiAnexos
Funcionalidade: Verificar Anexos do BOI


#SIPAI
#Eduardo Amorim

#BDD do fluxo principal do Anexo do BOI


Cenario: Verificar tela inicial de Arquivos Anexado sem anexos

Dado que tenha acessado o SIGAM
E logado com usuario 'gtiAdm' senha 'a'
Quando clicar entrar no modulo do SIPAI
E acessar Incêndios Florestais
E criar um BOI novo para Anexos
Quando clicar na aba de Anexos
Então sistema deve exibir mensagem 'Nenhum Documento ou Arquivo Anexado'

Cenario: Verificar tela de inclusão de anexos do boi

Quando clicar em incluir anexo do boi
Então sistema deve exibir tela de inclusão de anexos com o campo Data já previamente preenchido
E exibir os campos Título do Anexo - Tipo de Documento - Pesquisa tipo documento - Responsavel - Nome do Arquivo - Descrição
E exibir as labels de Detalhamento do Arquivo
E exibir os botões de Escolher Arquivo - Finalizar - Atualizar - Retornar - Ajuda

Cenario: Verificar Grid Após a inclusão de um anexo no boi

Quando clicar em incluir anexo do boi
E preencher os campos Título do Anexo 'Automação anexo' - Responsável 'Eduardo' - Descrição 'Automatização do Anexamento'
E selecionar o Tipo de Documento 'Laudo Pericial'
E escolher o documento do anexo do BOI 
E clicar em Finalizar Anexo do BoiAnexos
Então sistema deve atualizar o Grid de Anexo com os dados do arquivo anexado Título do Anexo 'Automação anexo'

Cenario: Verificar excluir um anexo 

Quando clicar em excluir no grid de anexo
Então sistema deve atualizar o Grid retirando o anexo Título 'Automação anexo'

Cenario: Verificar grid com mais de um anexo

Quando clicar em incluir anexo do boi
E preencher os campos Título do Anexo 'Automação anexo' - Responsável 'Eduardo' - Descrição 'Automatização do Anexamento'
E selecionar o Tipo de Documento 'Laudo Pericial'
E escolher o documento do anexo do BOI 
E clicar em Finalizar Anexo do BoiAnexos
E clicar em incluir o segundo anexo do boi
E preencher os campos Título do Anexo 'Automação anexo 2' - Responsável 'Eduardo' - Descrição 'Automatização do Anexamento'
E selecionar o Tipo de Documento 'Laudo Pericial'
E escolher o documento do anexo do BOI 
E clicar em Finalizar Anexo do BoiAnexos
Então o Grid deve conter mais de um anexo com os títulos 'Automação anexo' 'Automação anexo 2'