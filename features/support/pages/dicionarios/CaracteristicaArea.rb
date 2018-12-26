class CaracteristicaArea  < SitePrism::Page
    element :tituloTela,'#ctl00_conteudo_ctl00_TituloModulo_hypTitulo'
    element :btnNovo,'#ctl00_conteudo_ctl00_cmdAdiciona'
    element :btnPesquisa,'#ctl00_conteudo_ctl00_cmdPesq'
    element :btnExcel,'#ctl00_conteudo_ctl00_cmdExcel'
    element :linhas,'ctl00$conteudo$ctl00$ddlAltura'

    #componente pesquisa
    element :filtro,''
    element :parametro,''
    element :dadosFiltro,''
    element :btnAdicionar,''

   
    
end