class MapaOcorrencia < SitePrism::Page
    element :formaDesenho ,'div[title="Desenhar forma"]'
    element :fecharMapaZona,'a[id="bntFechar"]'
    element :atributo,'#descObservacao'
    element :btnSalvarAtributo,'#cmdAtualizaBO'

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

    def atributo (valor)
        page.driver.browser.switch_to.default_content
        atributo.set valor
        btnSalvarAtributo.click
    end
end