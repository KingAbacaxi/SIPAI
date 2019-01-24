class DanosBoletim < SitePrism::Page
    element :abaDanosBOI,'#__tab_ctl00_conteudo_ctl00_ContainerBOI_TabDanos'

    element :areaAtingiDentro,'#ctl00_conteudo_ctl00_ContainerBOI_TabDanos_txtAreaDentroUC'
    element :areaAtingiFora,'#ctl00_conteudo_ctl00_ContainerBOI_TabDanos_txtAreaEntornoUC'
    element :biomaCerrado,'#ctl00_conteudo_ctl00_ContainerBOI_TabDanos_chkCerrado'
    element :biomaMataAtlantica,'#ctl00_conteudo_ctl00_ContainerBOI_TabDanos_chkMataAtlantica'
    element :tipoVegetacao,'#ctl00_conteudo_ctl00_ContainerBOI_TabDanos_ddlTipoVegetacao'
    element :incluirTipoVegetacao,'#ctl00_conteudo_ctl00_ContainerBOI_TabDanos_btnAdicionaVegetacao'
    element :outrosDanos,'#ctl00_conteudo_ctl00_ContainerBOI_TabDanos_ddlOutrosDanos'
    element :outrosDanosDescri,'#ctl00_conteudo_ctl00_ContainerBOI_TabDanos_txtDcOutrosDanos'
    element :incluirOutrosDanos,'#ctl00_conteudo_ctl00_ContainerBOI_TabDanos_btnAdicionaOutroDano'
    element :obs,'#ctl00_conteudo_ctl00_ContainerBOI_TabDanos_txtDcObservacoes'

    #btn
    element :btnAtualiza,'#ctl00_conteudo_ctl00_ContainerBOI_TabDanos_lnkAtualizaDano'
    element :btnAjuda,'#ctl00_conteudo_ctl00_ContainerBOI_TabDanos_lnkAjudaDano'

    element :totalAreaAtingida,'#ctl00_conteudo_ctl00_ContainerBOI_TabDanos_lblTotalAtingido'
end