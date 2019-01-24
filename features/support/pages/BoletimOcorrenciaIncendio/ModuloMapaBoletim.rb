class ModuloMapaBoletim < SitePrism::Page
    element :abaMapa,'#__tab_ctl00_conteudo_ctl00_ContainerBOI_TabMapaOcorrencia'

    element :btnAjuda,'#ctl00_conteudo_ctl00_ContainerBOI_TabMapaOcorrencia_lnkAjudaMapa'
    element :btnExcluirMapas,'#ctl00_conteudo_ctl00_ContainerBOI_TabMapaOcorrencia_cmdExcluiMapa'
    element :btnDesenhoOcorrenciaMapa,'#ctl00_conteudo_ctl00_ContainerBOI_TabMapaOcorrencia_gvMapaBoi_ctl02_btnGeo'
end