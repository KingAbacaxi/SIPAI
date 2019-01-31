#language: pt
#utf-8

Funcionalidade: Verificar Alteração de lavels das áreas protegidas

#UserStory- 42648-UserStory-Alterar labels de Áreas Protegidas

#Sprint 8
#SIPAI
#Eduardo Amorim

#Story

#COMO técnico QUERO que sejam alterados todos os textos de Unidade de Conservação para Área Protegido
#PARA que este registro seja abrangido a um número maior de possibilidades

Cenario: Verificar troca nas labels na tela de Incêndios Florestais

Dado que tenha acessado o SIGAM
E acessado o módulo do SIPAI
Quando entrar no menu de Incêndios Florestais
Então no filtro de pesquisa deve está trocado a filtro 'Unidade de Conservação' para 'Área Protegida'
E no Grid deve está trocado o nome da coluna 'Unidade de Conservação' para 'Área Protegida'


Esquema do Cenario: Verificar troca de labels na inclusão do BOI

Quando clicar em incluir um novo BOI
Então deve está alterado a '<labelNova>' no '<lugar>'
Mas não deve exibir a '<labelAntiga>'

Exemplos:
|lugar    |labelNova                             |labelAntiga                            |
|Cabeçalho|Grupo                                 |Grupo de UC                            |
|Cabeçalho|Área Protegida                        |Unidade de Conservação                 |
|Cabeçalho|Órgão Gestor                          |Órgão Gestor da UC                     |
|Cadastro |Área Protegida                        |Unidade de Conservação                 |
|Cadastro |Grupo                                 |Grupo de UC                            |
|Cadastro |Órgão Gestor                          |Órgão Gestor da UC                     |
|Cadastro |Dentro                                |Dentro da UC                           |
|Cadastro |Entorno                               |Entorno da UC                          |
|Danos    |Área atingida dentro da Área Protegida|Área atingida dentro da UC             |
|Danos    |Área atingida entorno da UC           |Área atingida entorno da Área Protegida|


Esquema do Cenario: Verificar troca de labels no extrato do BOI

Quando clicar em editar um BOI
E clicar em extrato
Então deve exibir no extrato a '<novaLabel>'
Mas não deve exibir no extrato a '<AntigaLabel>'

Exemplos:
|novaLabel                              |AntigaLabel                |
|Área atingida dentro da Área Protegida |Área atingida dentro da UC |
|Área atingida entorno da Área Protegida|Área atingida entorno da UC|
|Área Protegida                         |Órgão Gestor da UC         |
|Grupo                                  |Unidade de Conservação     |
|Órgão Gestor                           |Órgão Gestor da UC         |
|Dentro                                 |Dentro da UC               |
|Entorno                                |Entorno da UC              |

Cenario: Verificar troca de label na aba mapa

Quando clicar na aba mapa
Então sistema deve exibir label do mapa 'Área Protegida'
Mas não deve exibir a label no mapa 'Área da UC'


Esquema do Cenario: Verificar troca de labels no cadastro de áreas protegidas

Quando acessar o menu áreas protegidas
E clicar em editar uma área protegidas
Então Sistema deve exibir no cadastro de áreas protegidas a '<labelNovaUC>' no 'lugarUC' 
Mas não deve exibir no cadastro de áreas protegidas a '<labelAntigaUC>'

Exemplos:
|lugarUC  |labelAntigaUC      |labelNovaUC    |
|Cabeçalho|Grupo de UC        |Grupo          |
|Cabeçalho|Nome da UC         |Nome da Unidade|
|Cabeçalho|Órgão Gestor da UC |Órgão Gestor   |
|Cadastro |Nome da UC         |Nome da Unidade|
|Cadastro |Grupo de UC        |Grupo          |
|Cadastro |Categoria da UC    |Categoria      |
|Cadastro |Área da UC         |Área           |

Cenario: Verificar alteração de label na aba contato institucional da área protegida

Quando acessar aba institucional dentro da área protegida
Então ssitema deve exibir aba Contato institucional com a label 'Site'
Mas não deve exibir a label 'Site da UC' na aba contato institucional

Cenario: Verificar alteração de label na aba mapa da área protegida 

Quando acessar aba mapa da área protegida
Então no grid deve conter a label no GRID do mapa 'Área Protegida'
Mas não deve conter a label no grid do mapa 'Área da UC'

Cenario: Verificar alteração de label na no desenho mapa da área protegida 

Quando estiver desenhando mapa da área Protegida 
Então deve conter a label dentro do mapa da área protegida 'Área Protegida'
Mas não deve conter a label no mapa 'Área da UC'

Cenario: Verificar Alteração de label na aba Abrangência da área protegida

Quando clicar em Abrangência 
Então deve conter a label em abrangência 'Área da Unidade no município'
E deve conter mais a label em abrangência '% da Unidade no município'
Mas não deve conter a label em abrangência 'Área da UC no município'
E não deve conter mais a label em abrangência '% da área UC no município'

Cenario: Verificar Alteração de label no Grid da aba pesquisa dentro da área protegida

Quando acessar a aba Pesquisas
E clicar em incluir uma nova pesquisa
E preencher os dados da pesquisa
E incluir a pesquisa
Então no grid de Pesquisa deve conter a label 'Local de Pesquisa'
Mas não deve conter no grid de pesquisa a label 'Local de Pesquisa (UC)'