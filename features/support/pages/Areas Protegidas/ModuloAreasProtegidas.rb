class ModuloAreasProtegidas < SitePrism::Page
    element :tituloModulo,'#ctl00_conteudo_ctl00_TituloModulo_hypTitulo'
    element :btnPesquisa,'a[id="ctl00_conteudo_ctl00_cmdPesq"]'
    element :btnExcel,'#ctl00_conteudo_ctl00_cmdExcel'
    element :listaAltura,'#ctl00_conteudo_ctl00_ddlAltura'
    #filtro de pesquisa
    element :filtro,'select[id="ctl00_conteudo_ctl00_SqlWhere_fields"]'
    element :operador,'select[id="ctl00_conteudo_ctl00_SqlWhere_operators"]'
    element :parametro,'input[id="onetext_1"]'
    element :textoPesquisa,'#onetext_1',match: :first
    element :btnAdicionar,'#ctl00_conteudo_ctl00_cmdNovo'
    
    element :gridColunas,'#ctl00_conteudo_ctl00_gvConsulta tr',match: :prefer_exact
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