class EspecificacaoBoletim < SitePrism::Page
 element :abaEspeficicacao,'#__tab_ctl00_conteudo_ctl00_ContainerBOI_TabEspecificacao'

 element :deteccaoIncendio,'#ctl00_conteudo_ctl00_ContainerBOI_TabEspecificacao_ddlDeteccaoIncendio'
 element :provavelCausa, '#ctl00_conteudo_ctl00_ContainerBOI_TabEspecificacao_ddlProvavelCausa'
 element :provavelCausador,'#ctl00_conteudo_ctl00_ContainerBOI_TabEspecificacao_ddlProvavelCausador'
 element :caracteFogoRasteiro,'#ctl00_conteudo_ctl00_ContainerBOI_TabEspecificacao_chkFogoRasteiro'
 element :caracteFogoCopa,'#ctl00_conteudo_ctl00_ContainerBOI_TabEspecificacao_chkFogoCopa'
 element :obs,'#ctl00_conteudo_ctl00_ContainerBOI_TabEspecificacao_txtObservacao'

 #botões

 element :btnAtualizar,'#ctl00_conteudo_ctl00_ContainerBOI_TabEspecificacao_cmdAtualizarEspec'
 element :btnAjuda,'#ctl00_conteudo_ctl00_ContainerBOI_TabEspecificacao_lnkAjudaEspec'

end