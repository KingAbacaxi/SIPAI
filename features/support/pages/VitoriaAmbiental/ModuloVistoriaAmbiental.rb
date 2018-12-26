class ModuloVistoriaAmbiental < SitePrism::Page
    element :editarVistoria , '#ctl00_conteudo_ctl00_gvConsulta td a[href]'
    element :abaEquipe ,'a[id="__tab_ctl00_conteudo_ctl00_TabsVistoriaAmbiental_TabEquipe"]'
    def editarVistoria(posicao)
        posicao = posicao*8
       all('#ctl00_conteudo_ctl00_gvConsulta td a[href]')[posicao].click
     end

end