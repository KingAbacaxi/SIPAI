class CombateBoletim < SitePrism::Page
    element :abaCombate,'#__tab_ctl00_conteudo_ctl00_ContainerBOI_TabCombate'

    #extinção do fogo
    element :combateDireto,'#ctl00_conteudo_ctl00_ContainerBOI_TabCombate_chkExtincaoFogo_0'
    element :combateIndireto,'#ctl00_conteudo_ctl00_ContainerBOI_TabCombate_chkExtincaoFogo_1'
    element :extincaoNatural,'#ctl00_conteudo_ctl00_ContainerBOI_TabCombate_chkExtincaoFogo_2'

    element :nivelAcionamento,'#ctl00_conteudo_ctl00_ContainerBOI_TabCombate_ddlNivel'
    element :inicioDt,'#ctl00_conteudo_ctl00_ContainerBOI_TabCombate_txtIniCombate'
    element :inicioHr,'#ctl00_conteudo_ctl00_ContainerBOI_TabCombate_txtIniCombateHr'
    element :terminoDt,'#ctl00_conteudo_ctl00_ContainerBOI_TabCombate_txtTermCombate'
    element :terminoHr,'#ctl00_conteudo_ctl00_ContainerBOI_TabCombate_txtTermCombateHr'

    #participação do corpo de bombeiros
    element :bombeiroSim,'#ctl00_conteudo_ctl00_ContainerBOI_TabCombate_rblPartBombeiros_0'
    element :bombeiroNao,'#ctl00_conteudo_ctl00_ContainerBOI_TabCombate_rblPartBombeiros_1'
    element :numTalaoBombeiro,'#ctl00_conteudo_ctl00_ContainerBOI_TabCombate_txtNumTalao'

    element :especificaCombate,'#ctl00_conteudo_ctl00_ContainerBOI_TabCombate_ddlEspeciCombate'
    element :btnIncluiEspecificaCombate,'#ctl00_conteudo_ctl00_ContainerBOI_TabCombate_cmdAdicionaEspecificacao'
    element :orgaosEnvolvidos,'#ctl00_conteudo_ctl00_ContainerBOI_TabCombate_ddlEnvolvidos'
    element :numPessoasOrgaosEnvolvidos,'#ctl00_conteudo_ctl00_ContainerBOI_TabCombate_txtNumPessoas'
    element :btnIncluiOrgaosEnvolvidos,'#ctl00_conteudo_ctl00_ContainerBOI_TabCombate_cmdAdicionaEnvolvidos'
    element :recursoEnvolvido,'#ctl00_conteudo_ctl00_ContainerBOI_TabCombate_ddlRecursos'
    element :descricaoRecursoEnvolvido,'#ctl00_conteudo_ctl00_ContainerBOI_TabCombate_txtDcRecurso'
    element :quantRecursosEnvolvido,'#ctl00_conteudo_ctl00_ContainerBOI_TabCombate_txtQuantRecurso'
    element :btnIncluiRecursoEnvolvido,'#ctl00_conteudo_ctl00_ContainerBOI_TabCombate_cmdAdicionaRecurso'
    element :quantAguaUsada,'#ctl00_conteudo_ctl00_ContainerBOI_TabCombate_txtQuantAguaCombate'
    element :quantGastos,'#ctl00_conteudo_ctl00_ContainerBOI_TabCombate_txtEstGastoCombate'
    element :detalhamentoCombate,'#ctl00_conteudo_ctl00_ContainerBOI_TabCombate_txtDetalCombate'

    #btn
    element :btnAtualizar,'#ctl00_conteudo_ctl00_ContainerBOI_TabCombate_lnkAtualizaCombate'
    element :btnAjuda,'#ctl00_conteudo_ctl00_ContainerBOI_TabCombate_lnkAjudacombate'
    
end