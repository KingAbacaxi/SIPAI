class DesenharZonaAmortecimento < SitePrism::Page
    element :formaDesenho ,'div[title="Desenhar forma"]'
    element :fecharMapaZona,'a[id="bntFechar"]'

    def desenhar
        page.driver.browser.switch_to.frame("ctl00_conteudo_TabNavegacao_TabMapa_ucMapa_ifrmMapa")
        map = find(:id, "GMap").native
        formaDesenho.click
        
        page.driver.browser.action.move_to(map,965, 354).click.perform
        sleep 2
        page.driver.browser.action.move_to(map,265, 354).click.perform
        sleep 2
        page.driver.browser.action.move_to(map,265, 54).click.perform
        sleep 2
        page.driver.browser.action.move_to(map,965, 54).click.perform
        sleep 2
        page.driver.browser.action.move_to(map,965, 354).click.perform
        sleep 2

    end

    def desenharZonaSoprepondo
        map = find(:id, "GMap").native
        formaDesenho.click
        
        page.driver.browser.action.move_to(map,980, 400).click.perform
        sleep 2
        page.driver.browser.action.move_to(map,265, 400).click.perform
        sleep 2
        page.driver.browser.action.move_to(map,265, 40).click.perform
        sleep 2
        page.driver.browser.action.move_to(map,980, 40).click.perform
        sleep 2
        page.driver.browser.action.move_to(map,980, 400).click.perform
        sleep 2
    end



    def fecharMapa
        fecharMapaZona.click
    end

end