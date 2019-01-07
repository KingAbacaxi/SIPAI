class AcessarSipai < SitePrism::Page
    element :linkModulo,'a[href="Default.aspx?idPagina=15303"]'
    #barra de menu
    element :boi,'a[href="/sigam-sipai-test/Default.aspx?idPagina=15326"]'
    element :areasProtegidas,'a[href="/sigam-sipai-test/Default.aspx?idPagina=15601"]'
    element :dicionarioUC , 'a[href="/sigam-sipai-test/Default.aspx?idPagina=15327"]'
    element :nomeModulo,'#ctl00_lblNomPortal'
    element :grupoUC,'a[href="/sigam-sipai-test/Default.aspx?idPagina=15602"]'
    element :metodoPesca, 'a[href="/sigam-sipai-test/Default.aspx?idPagina=15608"]'
    element :vistoriaAmbiental, 'a[href="/sigam-sipai-test/Default.aspx?idPagina=15612"]'
    element :vistoriaAmbientalMenu, 'a[href="/sigam-sipai-test/Default.aspx?idPagina=15618"]'
    element :tipoVeiculoVistoria,'a[href="/sigam-sipai-test/Default.aspx?idPagina=15607"]'
    element :tipoAnexoVistoria,'a[href="/sigam-sipai-test/Default.aspx?idPagina=15622"]'
    element :tipoOrigemAcaoVistoria,'a[href="/sigam-sipai-test/Default.aspx?idPagina=15611"]'
    element :tipoTipoAcaoVistoria,'a[href="/sigam-sipai-test/Default.aspx?idPagina=15609"]'

    def moduloSipai 
        linkModulo.click
        
        
    end 

    def abrirMenuDicionario
        dicionarioUC.hover
        sleep 2
    end

    def menuGrupoUC
      grupoUC.click
    end

    def menuAreasProtegidas
        areasProtegidas.click
    end

    def menuMetodoPesca
        vistoriaAmbientalMenu.hover
        sleep 2
        metodoPesca.click
    end

    def menuTipoVeiculoVistoria
        vistoriaAmbientalMenu.hover
        sleep 2
        tipoVeiculoVistoria.click
    end
end