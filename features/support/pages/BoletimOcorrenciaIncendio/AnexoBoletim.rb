class AnexosBoletim < SitePrism::Page
    element :abaAnexo,'#ctl00_conteudo_ctl00_ContainerBOI_TabAnexo_tab'

    element :btnIncluirAnexo,'#ctl00_conteudo_ctl00_ContainerBOI_TabAnexo_btnAddAnexo'
    element :btnAjuda,'#ctl00_conteudo_ctl00_ContainerBOI_TabAnexo_lnkAjudaAnexo'

    #tela de inclusão
    element :dtAnexo,'#ctl00_conteudo_ctl00_ContainerBOI_TabAnexo_txtDtAnexo'
    element :tituloDoc,'#ctl00_conteudo_ctl00_ContainerBOI_TabAnexo_txtTituloAnexo'
    element :tipoDoc,'#ctl00_conteudo_ctl00_ContainerBOI_TabAnexo_dpTipoAnexo_txtText_Input'
    element :btnPesquisaTipoDoc,'#ctl00_conteudo_ctl00_ContainerBOI_TabAnexo_dpTipoAnexo_BUSCA'
    element :responsavel,'#ctl00_conteudo_ctl00_ContainerBOI_TabAnexo_txtResponsavel'
    element :nomeArquivo,'#ctl00_conteudo_ctl00_ContainerBOI_TabAnexo_txtNomArquivo'
    element :descricao,'#ctl00_conteudo_ctl00_ContainerBOI_TabAnexo_txtDescAnexo'
    element :btnEscolheArquivo,'input[name="ctl00$conteudo$ctl00$ContainerBOI$TabAnexo$fileUpload$ctl02"]'
    element :labelExtensao,'#ctl00_conteudo_ctl00_ContainerBOI_TabAnexo_lblextArquivo'
    element :labelTamenho,'#ctl00_conteudo_ctl00_ContainerBOI_TabAnexo_lbltamArquivo'
    element :labelDataAnexado,'#ctl00_conteudo_ctl00_ContainerBOI_TabAnexo_lbldatArquivo'

    #btn
    element :btnFinalizar,'#ctl00_conteudo_ctl00_ContainerBOI_TabAnexo_btnFinalizaAnexo'
    element :btnAtualizar,'#ctl00_conteudo_ctl00_ContainerBOI_TabAnexo_btnAtualizaAnexo'
    element :btnRetornar,'#ctl00_conteudo_ctl00_ContainerBOI_TabAnexo_btnRetornaAnexo'
    element :btnAjudaInclir,'#ctl00_conteudo_ctl00_ContainerBOI_TabAnexo_btnAjudaAnexo'
end