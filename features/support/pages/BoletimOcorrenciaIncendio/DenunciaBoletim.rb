class DenunciaBoletim < SitePrism::Page
    element :abaDenuncia,'#__tab_ctl00_conteudo_ctl00_ContainerBOI_TabDenuncia'

    element :tipo,'#ctl00_conteudo_ctl00_ContainerBOI_TabDenuncia_ddlTipoDenuncia'
    element :gerarDenuncia,'#ctl00_conteudo_ctl00_ContainerBOI_TabDenuncia_btnAdicionaDenuncia'
end