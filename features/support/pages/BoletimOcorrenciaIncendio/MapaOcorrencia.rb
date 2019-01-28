class MapaOcorrencia < SitePrism::Page
    element :formaDesenho ,'div[title="Desenhar forma"]'
    element :fecharMapaZona,'a[id="bntFechar"]'
    element :atributoObs,'#descObservacao'
    element :btnSalvarAtributo,'#cmdAtualizaBO'
    element :formAtributo , 'iframe[src="/sigam-sipai-test/SIPAI/Mapa/Info/OcorrenciaTipoInfo.aspx?idPagina=15326"]'
    element :fecharMapa, '#ctl00_conteudo_ctl00_ContainerBOI_TabMapaOcorrencia_btnRetornaMapa'
    element :importarShape,'#ctl00_conteudo_ctl00_ContainerBOI_TabMapaOcorrencia_btnImpArquivo'
    def desenhar
        
        page.driver.browser.switch_to.default_content
        map = find(:id, "ctl00_conteudo_ctl00_ContainerBOI_TabMapaOcorrencia_CarGMap").native
        formaDesenho.click
        
        page.driver.browser.action.move_to(map,965, 354).click.perform
        sleep 2
        page.driver.browser.action.move_to(map,265, 354).click.perform
        sleep 2
        page.driver.browser.action.move_to(map,965, 54).click.perform
        sleep 2
        page.driver.browser.action.move_to(map,965, 354).click.perform
        sleep 2

    end

    
end