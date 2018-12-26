class TelaMetodoPesca < SitePrism::Page
    element :nomeTela,'#ctl00_conteudo_ctl00_TituloModulo_hypTitulo'
    element :titulo,'#ctl00_conteudo_ctl00_titulo'
    element :ordem,'#ctl00_conteudo_ctl00_nOrdem'
    element :ativo,'#ctl00_conteudo_ctl00_flaAtivo'
    element :descricao,'#ctl00_conteudo_ctl00_descricao'
    element :btnFinalizar,'#ctl00_conteudo_ctl00_cmdFinaliza'
    element :btnAtualizar,'#ctl00_conteudo_ctl00_cmdAtualiza'
    element :btnRetornar,'#ctl00_conteudo_ctl00_cmdCancela'
    element :btnAjuda,'#ctl00_conteudo_ctl00_cmdHelp'
    element :btnExcluir , '#ctl00_conteudo_ctl00_cmdExclui'
    
    def verificarTela
        tela = nomeTela.text        
        return tela
    end

    def verificarCampos(cp1,cp2,cp3,cp4)
        assert_text(cp1)
        assert_text(cp2)
        assert_text(cp3)
        assert_text(cp4)
    end

    def verificarBotoes (btn1,btn2,btn3)
        has_button?(btn1)
        has_button?(btn2)
        has_button?(btn3)
    end

    def verificarBtn(existe,btn)
        msg=''
        if(existe=='1')
            #não deve exibir
            has_no_button?(btn)
            msg=('Botão '+btn+' não está na tela')
        else
            #deve exibir
            has_button?(btn)
            msg=('Botão '+btn+' está na tela')
        end
        return msg
    end

    def preencherDados(tit,ord,ativ,descri)
        titulo.set tit
        ordem.set ord
        if(ativ=='sim')
            page.check('ctl00_conteudo_ctl00_flaAtivo')
        else
            page.uncheck('ctl00_conteudo_ctl00_flaAtivo')
        end
        descricao.set descri
    end

    def clicarAtualizar
        btnAtualizar.click
    end

    def verificarMsg(msg)
        assert_text(msg)

    end

    def finalizarCadastro
        btnFinalizar.click
    end
end