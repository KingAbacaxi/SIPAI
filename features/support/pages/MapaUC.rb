class MapaUC < SitePrism::Page
    element :mapaUC,'#ctl00_conteudo_TabNavegacao_TabMapa_ucMapa_gvConsulta_ctl02_btnGeo'
    element :mapaZonaAmortecimento,'#ctl00_conteudo_TabNavegacao_TabMapa_ucMapa_gvConsulta_ctl03_btnGeo'
    element :mapaAcessos,'#ctl00_conteudo_TabNavegacao_TabMapa_ucMapa_gvConsulta_ctl04_btnGeo'
    element :mapaAreaRestauracao,'#ctl00_conteudo_TabNavegacao_TabMapa_ucMapa_gvConsulta_ctl05_btnGeo'
    element :gridMapa,'#ctl00_conteudo_TabNavegacao_TabMapa_ucMapa_gvConsulta'
    element :gridMp,'#ctl00_conteudo_TabNavegacao_TabMapa_ucMapa_gvConsulta td'

    def desenharAreaUC
        mapaUC.click

    end

    def desenharZonaAmortecimento
        mapaZonaAmortecimento.click
    end

    def grid
        
        valor = all('#ctl00_conteudo_TabNavegacao_TabMapa_ucMapa_gvConsulta td').count
        mapas=(valor/5)-2
        tiposMaps=[]
        x=0
        y=1
        while (x) <= (mapas)
            
         tiposMaps[x]=all('#ctl00_conteudo_TabNavegacao_TabMapa_ucMapa_gvConsulta td')[y].text 
         x=x+1 
         y=y+5 
       

        end
        textoGrid=tiposMaps

        return (textoGrid)
    end

end