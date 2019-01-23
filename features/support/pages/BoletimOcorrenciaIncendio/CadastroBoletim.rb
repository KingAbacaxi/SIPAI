class CadastroBoletim < SitePrism::Page
    #formulario
    element :areaProtegida,'select[id="ctl00_conteudo_ctl00_ContainerBOI_TabCadastro_ddlUnidadeConservacao"]'
    element :dtDeteccao , '#ctl00_conteudo_ctl00_ContainerBOI_TabCadastro_txtDatDeteccao'
    element :hrDeteccao , '#ctl00_conteudo_ctl00_ContainerBOI_TabCadastro_txtHrDeteccao'
    element :areaAbrangidaDentro, 'input[name="ctl00$conteudo$ctl00$ContainerBOI$TabCadastro$chkDentroUC"]'
    element :areaAbrangidaEntorno, 'input[name="ctl00$conteudo$ctl00$ContainerBOI$TabCadastro$chkEntornoUC"]'
    element :municipio,'select[name="ctl00$conteudo$ctl00$ContainerBOI$TabCadastro$ddlMunicipio"]'
    element :caracteristicaArea,'select[name="ctl00$conteudo$ctl00$ContainerBOI$TabCadastro$ddlCaractArea"]'
    element :especificaLocal,'#ctl00_conteudo_ctl00_ContainerBOI_TabCadastro_txtEspecificLocal'
    element :descricaoOcorrencia, '#ctl00_conteudo_ctl00_ContainerBOI_TabCadastro_txtDescOcorrencia'
    element :latitude,'#ctl00_conteudo_ctl00_ContainerBOI_TabCadastro_numLatitude'
    element :longitude,'#ctl00_conteudo_ctl00_ContainerBOI_TabCadastro_numLongitude'

    #botoes

    element :conversor,'#ctl00_conteudo_ctl00_ContainerBOI_TabCadastro_hypUTM'
    element :finalizar,'#ctl00_conteudo_ctl00_ContainerBOI_TabCadastro_cmdFinalizaCad'
    element :atualizar,'#ctl00_conteudo_ctl00_ContainerBOI_TabCadastro_cmdAtualizaCad'
    element :retornar,'#ctl00_conteudo_ctl00_ContainerBOI_TabCadastro_cmdRetorna'
    element :ajuda,'#ctl00_conteudo_ctl00_ContainerBOI_TabCadastro_lnkAjudaCad'
    element :excluir,'#ctl00_conteudo_ctl00_ContainerBOI_TabCadastro_cmdExcluiCad'
    #cabeçalho

    element :cabNis,'#ctl00_conteudo_ctl00_lblNIS'
    element :cabNumBoi,'#ctl00_conteudo_ctl00_lblNumBOI'
    element :cabGrupo,'#ctl00_conteudo_ctl00_lblGrupoUC'
    element :cabAreaProtegida,'#ctl00_conteudo_ctl00_lblUniConservacao'
    element :cabOrgaoGestor,'#ctl00_conteudo_ctl00_lblOrgGestorUC'
    element :cabDTCadastro,'#ctl00_conteudo_ctl00_lblDtCadastro'
    element :cabDTDeteccao,'#ctl00_conteudo_ctl00_lblDtDeteccao'
    element :retornarBtnCab,'#ctl00_conteudo_ctl00_btnRetornaCab'
     
    #camposAtualizarLabels

    element :nis,'#ctl00_conteudo_ctl00_ContainerBOI_TabCadastro_lblNumNIS'
    element :numBoi,'#ctl00_conteudo_ctl00_ContainerBOI_TabCadastro_lblNumBOIncend'
    element :grupo,'#ctl00_conteudo_ctl00_ContainerBOI_TabCadastro_lblGrupoUCc'
    element :orgaoGestor,'#ctl00_conteudo_ctl00_ContainerBOI_TabCadastro_lblOrgGestorUCc'

end