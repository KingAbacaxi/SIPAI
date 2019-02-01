class AcessarSipai < SitePrism::Page
    element :linkModulo,'a[href="Default.aspx?idPagina=15303"]'
    #barra de menu
    element :boi,'a[href="/sigam-sipai-test/Default.aspx?idPagina=15326"]'
    element :areasProtegidas,:link,'Áreas Protegidas',match: :first
    element :dicionarioUC ,'a[href="/sigam-sipai-test/Default.aspx?idPagina=15327"]'
    element :nomeModulo,'#ctl00_lblNomPortal'
    element :grupoUC,'a[href="/sigam-sipai-test/Default.aspx?idPagina=15602"]'
    
    
    element :vistoriaAmbiental, 'a[href="/sigam-sipai-test/Default.aspx?idPagina=15612"]'
    element :vistoriaAmbientalMenu, 'a[href="/sigam-sipai-test/Default.aspx?idPagina=15618"]'
    element :boiIncendioFlorestalMenu,'a[href="/sigam-sipai-test/Default.aspx?idPagina=15326"]'
    #vistoriaMenuDicionario
    element :metodoPesca, 'a[href="/sigam-sipai-test/Default.aspx?idPagina=15608"]'
    element :tipoVeiculoVistoria,'a[href="/sigam-sipai-test/Default.aspx?idPagina=15607"]'
    element :tipoAnexoVistoria,'a[href="/sigam-sipai-test/Default.aspx?idPagina=15622"]'
    element :tipoOrigemAcaoVistoria,'a[href="/sigam-sipai-test/Default.aspx?idPagina=15611"]'
    element :tipoTipoAcaoVistoria,'a[href="/sigam-sipai-test/Default.aspx?idPagina=15609"]'
    element :tipoInstituicao,'a[href="/sigam-sipai-test/Default.aspx?idPagina=15623"]'
    #boiMenuDicionario
    element :boiCaracArea,'a[href="/sigam-sipai-test/Default.aspx?idPagina=15329"]'
    element :boiDetecaoIncendio,'a[href="/sigam-sipai-test/Default.aspx?idPagina=15328"]'
    element :boiEnvolvidos,'a[href="/sigam-sipai-test/Default.aspx?idPagina=15330"]'
    element :boiEspecificaCombate,'a[href="/sigam-sipai-test/Default.aspx?idPagina=15331"]'
    element :boiOutrosDanos,'a[href="/sigam-sipai-test/Default.aspx?idPagina=15332"]'
    element :boiProvavelCausa,'a[href="/sigam-sipai-test/Default.aspx?idPagina=15333"]'
    element :boiProvavelCausador,'a[href="/sigam-sipai-test/Default.aspx?idPagina=15334"]'
    element :boiTipoAnexo,'a[href="/sigam-sipai-test/Default.aspx?idPagina=15335"]'
    element :boiTipoRecurso,'a[href="/sigam-sipai-test/Default.aspx?idPagina=15336"]'
    element :boiTipoVegetacao,'a[href="/sigam-sipai-test/Default.aspx?idPagina=15337"]'

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