 class DicMetPesca  < SitePrism::Page
    element :tituloMenu, '#ctl00_conteudo_ctl00_TituloModulo_hypTitulo'
    element :btnNovo, 'a[id="ctl00_conteudo_ctl00_cmdAdiciona"]'
    element :btnPesquisa, 'a[id="ctl00_conteudo_ctl00_cmdPesq"]'
    element :btnExcel, 'a[id="ctl00_conteudo_ctl00_cmdExcel"]'
    element :condicaoPesquisa, 'select[id="ctl00_conteudo_ctl00_SqlWhere_fields"]'
    element :parametroPesquisa, 'select[id="ctl00_conteudo_ctl00_SqlWhere_operators"]'
    element :quantidadeItensPadrao, 'option[selected="selected"]'
    element :valorPesquisa, '#onetext_1'
    element :btnAdicionarPesquisa , 'input[value="Adiciona"]'
    element :btnEditarGrid, 'td a[href]'

    def verificarTelaMenu
        titulo = tituloMenu.text
        puts titulo
    end

    def verificarBotaoAdd
       btnNovo.text
    end

    def verificarBotaoPesquisar
        btnPesquisa.text
    end

    def verificarBotaoExcel
        btnExcel.text
    end
    
     def verificarCondicoesPesquisa(cond1,cond2,cond3)
        
        select(cond1,:from=>'ctl00_conteudo_ctl00_SqlWhere_fields')
        puts ('Existe a condição de '+cond1)
        select(cond2,:from=>'ctl00_conteudo_ctl00_SqlWhere_fields')
        puts ('Existe a condição de '+cond2)
        select(cond3,:from=>'ctl00_conteudo_ctl00_SqlWhere_fields')
        puts ('Existe a condição de '+cond3)
        condicaoPesquisa.click
        
     end

     def adicionarPesquisaBtn
        btnAdicionarPesquisa.click
     end
 
     def pesquisarBtn
         btnPesquisa.click
     end

     def pesquisar(filtro,argumento,valor)
      
        condicaoPesquisa.select filtro
        parametroPesquisa.select argumento
        first('#onetext_1').set valor
        

     end

     def pesquisarFlag(filtro,argumento)
      
        condicaoPesquisa.select filtro
        parametroPesquisa.select argumento
  
     end

     def adicionar
        btnNovo.click
     end

     def verificarValorMaximoGrid(max)
        
        valor =quantidadeItensPadrao.text
        max.eql? valor
     end
    def editarMetodoPesca(posicao)
       posicao = posicao*4
      all('#ctl00_conteudo_ctl00_gvConsulta td a[href]')[posicao].click
    end
 end