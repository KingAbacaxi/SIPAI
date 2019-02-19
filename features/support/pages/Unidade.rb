class Unidade < SitePrism::Page
    #modulo
    element :btnAdd,'#ctl00_conteudo_ctl00_cmdAdiciona'
    elements :editarUnidade,'#ctl00_conteudo_ctl00_gvConsulta td',match: :first
    
    #tela cadastro
    element :nis,'#ctl00_conteudo_ctl00_TabNavegacao_TBCadastro_lblidUnidade'
    element :sigla,'#ctl00_conteudo_ctl00_TabNavegacao_TBCadastro_txtsiglaUnidade'
    element :nomeUnidade,'#ctl00_conteudo_ctl00_TabNavegacao_TBCadastro_txtnomUnidade'
    element :orgao,'select[name="ctl00$conteudo$ctl00$TabNavegacao$TBCadastro$ddlOrgao"]'
    element :municipio,'#ctl00_conteudo_ctl00_TabNavegacao_TBCadastro_dpMunicipio_txtText_Input'
    element :responsavel,'#ctl00_conteudo_ctl00_TabNavegacao_TBCadastro_dpResponsavel_txtText_Input'
    element :unidadeSuperior,'#ctl00_conteudo_ctl00_TabNavegacao_TBCadastro_dpUnidadeSup_txtText_Input'
    element :dropdownUnidadeSperior,'#ctl00_conteudo_ctl00_TabNavegacao_TBCadastro_dpUnidadeSup_txtText_DropImage'
    #botoes
    element :btnFinalizar,'#ctl00_conteudo_ctl00_TabNavegacao_TBCadastro_cmdFinalizar'
    element :btnAtualizar,'#ctl00_conteudo_ctl00_TabNavegacao_TBCadastro_cmdAtualiza'
    element :btnRetornar,'#ctl00_conteudo_ctl00_TabNavegacao_TBCadastro_cmdCancela'
    element :btnExcluir,'#ctl00_conteudo_ctl00_TabNavegacao_TBCadastro_cmdExclui'

    def gerarUnidadeComCamposObrigatorios(siglaUnidade,nomUnidade,orgaoUnidade,municipioUnidade,responsavelUnidade,unidadeSuperiorUnidade)
        sigla.set siglaUnidade
        nomeUnidade.set nomUnidade
        orgao.select orgaoUnidade
        municipio.set  municipioUnidade
        sleep 2
        responsavel.set responsavelUnidade
        sleep 2

        
        unidadeSuperior.set unidadeSuperiorUnidade
        sleep 2
        dropdownUnidadeSperior.click
        btnFinalizar.click
        sleep 2
        btnFinalizar.click
    end
end