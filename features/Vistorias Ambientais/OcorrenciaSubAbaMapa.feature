#language: pt
#utf-8
@ocorrenciaSubAbaMapa
Funcionalidade: Verificar sua sub-aba Mapa dentro da Ocorrência da Vistoria

#UserStory- 44203-SIPAI-Criar sub-aba Mapa


#Sprint 10
#SIPAI
#Eduardo Amorim

#Story

#COMO técnico QUERO visualizar o mapa de roteiro de acesso e desenhar às Área(s) da ocorrência
#PARA que possa ser visualizada cartograficamente e detalhar melhor a Área na Ocorrência “Ambiental”


Cenario: Verificar aba Mapa da ocorrência da vistoria ambiental

Dado que tenha acessado o sigam
E logado no sistema com usuario 'gtiAdm' e senha 'a'
E entrado no módulo do SIPAI
E no menu Vistoria
E ter criado uma vistoria ambiental para uma Área Protegida que o Órgão gestor seja a Fundação Florestal
Quando criar uma ocorrência do tipo não ambiental
E clicar na aba Mapa da ocorrência da Vistoria
Então sistema deve exibir tela do mapa da ocorrencia dentro da vistoria com o grid com as colunas Desenhar - Tipo - Número de Itens 0 Área Calculada - Donwload
E os botões acima do grid do mapa da ocorrência da vistoria ambiental Ajuda - Excluir o mapa

Cenario: Verificar tela de desenhar mapa da ocorrência da vistoria ambiental

Dado que tenha acessado o sigam
E logado no sistema com usuario 'gtiAdm' e senha 'a'
E entrado no módulo do SIPAI
E no menu Vistoria
E clicar em editar a Vistoria criada anteriormente 
E acessar aba Mapa da Vistoria
E clicar em desenhar no Mapa Área Fiscalizada no mapa de Vistoria
E desenhar o poligono de Área Fiscalizada da Vistoria
E preencher o campo observações 'acesso pela mata' atributo do poligono do mapa Área Fiscalizada
E clicar em Salvar Atributo no mapa 
E finalizar o desenho clicando em fechar o mapa
E clicar em desenhar no Mapa Rota Percorrida no mapa de Vistoria
E desenhar o poligono de Rota Percorrida da Vistoria
E preencher o campo observações 'acesso pela mata' atributo do poligono do mapa Rota Percorrida
E clicar em Salvar Atributo no mapa 
E finalizar o desenho clicando em fechar o mapa
E clicar em desenhar no mapa de Roteiro de Acesso no mapa de Vistoria
E desenhar o poligono de Roteiro de Acesso da Vistoria
E preencher o campo observações 'acesso pela mata' atributo do poligono do mapa Roteiro de Acesso
E clicar em Salvar Atributo no mapa 
E finalizar o desenho clicando em fechar o mapa
E clicar na aba aba Ocorrência da vistoria ambiental
E clicar em editar ocorrência não ambiental
Quando clicar na aba Mapa da ocorrencia da vistoria ambiental
E clicar em desenhar mapa da Ocorrência da vistoria ambiental
Então sistema deve exibir as camadas Município - Área Protegida - Zona de armotecimento - Rota Percorrida - Área fiscalizada - Roteiro de Acesso - Área(s) da Ocorrência

Cenario: Verificar tela de Atributos do poligono do mapa de ocorrência da vistoria ambiental

Dado que tenha acessado o sigam
E logado no sistema com usuario 'gtiAdm' e senha 'a'
E entrado no módulo do SIPAI
E no menu Vistoria
E clicar em editar a Vistoria criada anteriormente 
Quando clicar na aba Mapa da ocorrencia da vistoria ambiental
E clicar em desenhar mapa da Ocorrência da vistoria ambiental
E desenhar poligono da ocorrência dentro da vistoria ambiental
Então Deve exibir tela de atributos do mapa da vistoria ambiental com o campo observações
E deve conter os títulos 'Edição de: Área(s) da Ocorrência' - 'Insira as informações da(s) Áres(s) da Ocorrência'
E deve conter o botão de salvar atributo

Cenario: Verificar Grid do Mapa da ocorrência da vistoria ambiental após o desenho de poligonos 

Dado que tenha acessado o sigam
E logado no sistema com usuario 'gtiAdm' e senha 'a'
E entrado no módulo do SIPAI
E no menu Vistoria
E clicar em editar a Vistoria criada anteriormente 
Quando clicar na aba Mapa da ocorrencia da vistoria ambiental
E clicar em desenhar mapa da Ocorrência da vistoria ambiental
E desenhar poligono da ocorrência dentro da vistoria ambiental
E preencher o campo Observções da tela de atributos 'Ocorr~encia do koritar'
E clicar em Salvar Atibuto da ocorrencia da vistoria
E clicar em fechar o mapa da ocorrencia da vistoria
Então sistema deve atualizar os dados do GRID a coluna de Itens desenhados deve ter o valor '1'

Cenario: Verificar GRID do Mapa da ocorrência da Vistoria ambiental após o desenho de mais de um poligono

Dado que tenha acessado o sigam
E logado no sistema com usuario 'gtiAdm' e senha 'a'
E entrado no módulo do SIPAI
E no menu Vistoria
E clicar em editar a Vistoria criada anteriormente 
Quando clicar na aba Mapa da ocorrencia da vistoria ambiental
E clicar em desenhar mapa da Ocorrência da vistoria ambiental
E desenhar poligono da ocorrência dentro da vistoria ambiental
E preencher o campo Observções da tela de atributos 'Ocorr~encia do koritar'
E clicar em Salvar Atibuto da ocorrencia da vistoria
E clicar em fechar o mapa da ocorrencia da vistoria
E clicar em desenhar mapa da Ocorrência da vistoria ambiental
E desenhar poligono da ocorrência dentro da vistoria ambiental pela segunda vez
E preencher o campo Observções da tela de atributos 'Ocorr~encia do koritar que desmatou o cachorro'
E clicar em Salvar Atibuto da ocorrencia da vistoria
E clicar em fechar o mapa da ocorrencia da vistoria
Então sistema deve atualizar os dados do GRID a coluna de Itens desenhados deve ter o valor '2'

Cenario: Verificar excluir mapas da aba mapa da ocorrência na vistoria ambiental

Dado que tenha acessado o sigam
E logado no sistema com usuario 'gtiAdm' e senha 'a'
E entrado no módulo do SIPAI
E no menu Vistoria
E clicar em editar a Vistoria criada anteriormente 
Quando clicar na aba Mapa da ocorrencia da vistoria ambiental
E clicar em excluir mapas da ocorrencia de vistoria ambiental
E clicar em sim no alerta de excluir a ocorrencia da vistoria
Então sistema deve atualizar os dados do GRID a coluna de Itens desenhados deve ter o valor '0'

Cenario: Verificar Importação de um shapefile no mapa da ocorrêcia ambiental 

Dado que tenha acessado o sigam
E logado no sistema com usuario 'gtiAdm' e senha 'a'
E entrado no módulo do SIPAI
E no menu Vistoria
E clicar em editar a Vistoria criada anteriormente 
Quando clicar na aba Mapa da ocorrencia da vistoria ambiental
E clicar em desenhar mapa da Ocorrência da vistoria ambiental
E importar o shapefile de uma ocorrencia dentro da vistoria
E clicar em fechar o mapa da ocorrencia da vistoria
Então sistema deve atualizar os dados do GRID a coluna de Itens desenhados deve ter o valor '1'
E ter zerado a massa do mapa da ocorrencia da vistoria