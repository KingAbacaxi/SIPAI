class ModuloBoi < SitePrism::Page
    element :btnPesquisa,'a[id="ctl00_conteudo_ctl00_cmdPesq"]'
    #filtro de pesquisa
    element :filtro,'select[id="ctl00_conteudo_ctl00_SqlWhere_fields"]'
    element :operador,'select[id="ctl00_conteudo_ctl00_SqlWhere_operators"]'
    element :parametro,'input[id="onetext_1"]'
    element :textoPesquisa,'input[id"onetext_1"]'
    element :btnAdicionar,'input[value="Adiciona"]'
    #botões
    element :btnAdicionarBoi, '#ctl00_conteudo_ctl00_cmdAdiciona'

    def editarBoi(posicao)
      
       all('#ctl00_conteudo_ctl00_gvConsulta td a[href]')[posicao].click
     end

     
end