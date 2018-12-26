class DicionarioGrupoUC < SitePrism::Page
    element :abaCategoria,'#__tab_ctl00_conteudo_ctl00_TabNavegacao_TabCategoria'
    element :tituloModulo,'#ctl00_conteudo_ctl00_TituloModulo_hypTitulo'
    element :incluirNovaCategoria, 'a[id="ctl00_conteudo_ctl00_TabNavegacao_TabCategoria_cmdAdicionaTabCategoria"]'
    element :grid,'#ctl00_conteudo_ctl00_TabNavegacao_TabCategoria_gvCategoria'

    #frame de categoria de uc
    element :grupo, '#ctl00_conteudo_ctl00_TabNavegacao_TabCategoria_lblGrupo'
    element :ordem,'#ctl00_conteudo_ctl00_TabNavegacao_TabCategoria_numOrdem'
    element :ativa,'#ctl00_conteudo_ctl00_TabNavegacao_TabCategoria_flaAtivaCategoria'
    element :zonaAmortecimento,'input[id="ctl00_conteudo_ctl00_TabNavegacao_TabCategoria_flaZonaAmortecimento"]'
    element :codigo,'#ctl00_conteudo_ctl00_TabNavegacao_TabCategoria_codItem'
    element :nome,'ctl00_conteudo_ctl00_TabNavegacao_TabCategoria_nomItem'
    element :descricao,'body[contenteditable="true"]'
    #btn
    element :btnFinalizar,'#ctl00_conteudo_ctl00_TabNavegacao_TabCategoria_cmdFinalizaTabCategoria'
    element :btnAtualizar,'#ctl00_conteudo_ctl00_TabNavegacao_TabCategoria_cmdAtualizaTabCategoria'
    element :btnRetornar,'#ctl00_conteudo_ctl00_TabNavegacao_TabCategoria_cmdRetornaTabCategoria'
    element :btnExcluir,'#ctl00_conteudo_ctl00_TabNavegacao_TabCategoria_cmdExcluiTabCategoria'
    element :btnajuda,'#ctl00_conteudo_ctl00_TabNavegacao_TabCategoria_cmdHelpCategoria'

    def incluirCategoria(grupoCategoria)
        select(grupoCategoria,:from=>'ctl00$conteudo$ctl00$TabNavegacao$TabCategoria$ddlGrupo')
        incluirNovaCategoria.click
        
    end

    def verificarExisteFlag(flag)
        puts(flag)
        
       
        assert_text(flag)
    end

    def editarCategoria(grupoCat)
        select(grupoCat,:from=>'ctl00$conteudo$ctl00$TabNavegacao$TabCategoria$ddlGrupo')
        all('#ctl00_conteudo_ctl00_TabNavegacao_TabCategoria_gvCategoria td')[0].click
    end 
    def marcaFlagZona()
        
        page.check('ctl00_conteudo_ctl00_TabNavegacao_TabCategoria_flaZonaAmortecimento')
    end
    def desmarcaFlagZona()
        
        page.uncheck('ctl00_conteudo_ctl00_TabNavegacao_TabCategoria_flaZonaAmortecimento')
    end

    def clicarfinalizar
        btnFinalizar.click
    end

    def verificarFinalizar
        tituto=tituloModulo.text
        return (tituto)
    end

end