class EquipeVistoria  < SitePrism::Page
    element :listaOrgaos,'select[id="ctl00_conteudo_ctl00_TabsVistoriaAmbiental_TabEquipe_ucVistoriaAmbientalEquipe_ddlInstituicao"]'
    element :numParticipantes,'#ctl00_conteudo_ctl00_TabsVistoriaAmbiental_TabEquipe_ucVistoriaAmbientalEquipe_txtNumParticip'
    element :listaIntegrantes,'select[id="ctl00_conteudo_ctl00_TabsVistoriaAmbiental_TabEquipe_ucVistoriaAmbientalEquipe_ddlIntegrantes"]'
    #btn
    element :incluirOrgao,'a[id="ctl00_conteudo_ctl00_TabsVistoriaAmbiental_TabEquipe_ucVistoriaAmbientalEquipe_cmdAddInstituicao"]'
    element :incluirIntegrantes,'a[id="ctl00_conteudo_ctl00_TabsVistoriaAmbiental_TabEquipe_ucVistoriaAmbientalEquipe_cmdAddIntegrante"]'
    element :btnAjuda,'a[id="ctl00_conteudo_ctl00_TabsVistoriaAmbiental_TabEquipe_ucVistoriaAmbientalEquipe_lnkAjudaCad"]'
    #gridOrgão
    element :gridOrgao,'table[id="ctl00_conteudo_ctl00_TabsVistoriaAmbiental_TabEquipe_ucVistoriaAmbientalEquipe_gvConsultaInstituicao"]'
    def preencherOrgao(orgao,numPessoas)
        listaOrgaos.select orgao
        numParticipantes.set numPessoas
    end

    def preencherIntegrantes(integrante)
        listaIntegrantes.select integrante
    end
end