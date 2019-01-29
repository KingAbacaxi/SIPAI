class ModuloAreasProtegidas < SitePrism::Page

    element :btnPesquisa,'a[id="ctl00_conteudo_ctl00_cmdPesq"]'
    #filtro de pesquisa
    element :filtro,'select[id="ctl00_conteudo_ctl00_SqlWhere_fields"]'
    element :operador,'select[id="ctl00_conteudo_ctl00_SqlWhere_operators"]'
    element :parametro,'input[id="onetext_1"]'
    element :textoPesquisa,'input[id"onetext_1"]'
    element :btnAdicionar,'input[value="Adiciona"]'
    #menu
    element :acessarMapa,'a[id="__tab_ctl00_conteudo_TabNavegacao_TabMapa"]'

    def pesquisaFiltro(filtroPesq,operadorPesq,parametroPesq)
        select(filtroPesq,:from=>'ctl00_conteudo_ctl00_SqlWhere_fields')
        select(operadorPesq,:from=>'ctl00_conteudo_ctl00_SqlWhere_operators')
       
        all('#onetext_1')[0].set parametroPesq
        


        btnAdicionar.click
        btnPesquisa.click

    end

    def editarUC
        
        uc = all('#ctl00_conteudo_ctl00_gvConsulta td')[3].text
        all('#ctl00_conteudo_ctl00_gvConsulta td')[0].click
        return (uc)
    end

    def menuMapa()
        acessarMapa.click
    end
end