class CadastroAreaProtegida < SitePrism::Page

    element :nisCadastroUC, '#ctl00_conteudo_txtNIS'
    element :btnBuscarNisUC,'#ctl00_conteudo_lblBuscaNIS'

    element :abaCadastroUC,'#__tab_ctl00_conteudo_TabNavegacao_TBCadastro'

    element :nisUC,'#ctl00_conteudo_TabNavegacao_TBCadastro_ucCadastro_lblNisUnidade'
    element :flagInterna,'#ctl00_conteudo_TabNavegacao_TBCadastro_ucCadastro_entRblExterna_0'
    element :flagExterna,'#ctl00_conteudo_TabNavegacao_TBCadastro_ucCadastro_entRblExterna_1'
    element :grupo,'#ctl00_conteudo_TabNavegacao_TBCadastro_ucCadastro_ddlGrupoUC'
    element :categoria,'#ctl00_conteudo_TabNavegacao_TBCadastro_ucCadastro_ddlCategoriaUC'
    element :areaProtegida,'#ctl00_conteudo_TabNavegacao_TBCadastro_ucCadastro_txtNome'
    element :sigla,'#ctl00_conteudo_TabNavegacao_TBCadastro_ucCadastro_txtSigla'
    element :codigo,'#ctl00_conteudo_TabNavegacao_TBCadastro_ucCadastro_txtCodigoUnidade'
    element :orgaoGestor,'#ctl00_conteudo_TabNavegacao_TBCadastro_ucCadastro_ddlOrgaoGestor'
    element :unidadeReponsavel,'#ctl00_conteudo_TabNavegacao_TBCadastro_ucCadastro_entDpUnidadeResponsabel_txtText_Input'
    element :municipio,'#ctl00_conteudo_TabNavegacao_TBCadastro_ucCadastro_entDpMunicipio_txtText_Input'
    element :area,'#ctl00_conteudo_TabNavegacao_TBCadastro_ucCadastro_txtAreaUC'
    element :descricao,'#ctl00_conteudo_TabNavegacao_TBCadastro_ucCadastro_entTxtDesUnidade'

    #btn

    element :btnFinalizar,'#ctl00_conteudo_TabNavegacao_TBCadastro_ucCadastro_cmdFinaliza'
    element :btnAtualizar,'#ctl00_conteudo_TabNavegacao_TBCadastro_ucCadastro_cmdAtualiza'
    element :btnRetornar,'#ctl00_conteudo_TabNavegacao_TBCadastro_ucCadastro_cmdRetorna'
    element :btnExcluir,'#ctl00_conteudo_TabNavegacao_TBCadastro_ucCadastro_cmdExclui'
    element :btnAjuda,'#ctl00_conteudo_TabNavegacao_TBCadastro_ucCadastro_cmdHelp'
end