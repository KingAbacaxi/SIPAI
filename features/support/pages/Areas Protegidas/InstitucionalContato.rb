class InstitucionalContato < SitePrism::Page
    element :abaInstitucional,'#__tab_ctl00_conteudo_TabNavegacao_TBInstitucional'
    element :abaContatoInstitucional,'#__tab_ctl00_conteudo_TabNavegacao_TBInstitucional_ucInstitucional_TabNavegacao_TBContato'

    element :endereco,'#ctl00_conteudo_TabNavegacao_TBInstitucional_ucInstitucional_TabNavegacao_TBContato_ucContato_txtEndereco'
    element :complemento,'#ctl00_conteudo_TabNavegacao_TBInstitucional_ucInstitucional_TabNavegacao_TBContato_ucContato_txtComplemento'
    element :bairro,'#ctl00_conteudo_TabNavegacao_TBInstitucional_ucInstitucional_TabNavegacao_TBContato_ucContato_txtBairro'
    element :cep,'#ctl00_conteudo_TabNavegacao_TBInstitucional_ucInstitucional_TabNavegacao_TBContato_ucContato_txtCEP'
    element :ddd,'#ctl00_conteudo_TabNavegacao_TBInstitucional_ucInstitucional_TabNavegacao_TBContato_ucContato_txtDDD'
    element :telefone,'#ctl00_conteudo_TabNavegacao_TBInstitucional_ucInstitucional_TabNavegacao_TBContato_ucContato_txtTelefone'
    element :email,'#ctl00_conteudo_TabNavegacao_TBInstitucional_ucInstitucional_TabNavegacao_TBContato_ucContato_txtEmail'
    element :site,'#ctl00_conteudo_TabNavegacao_TBInstitucional_ucInstitucional_TabNavegacao_TBContato_ucContato_txtSiteUC'
    element :logo,'input[type="file"]'

    #btn

    element :atualizar,'#ctl00_conteudo_TabNavegacao_TBInstitucional_ucInstitucional_TabNavegacao_TBContato_ucContato_cmdAtualiza'
    element :ajuda,'#ctl00_conteudo_TabNavegacao_TBInstitucional_ucInstitucional_TabNavegacao_TBContato_ucContato_cmdHelp'
    element :editarLogo,'#ctl00_conteudo_TabNavegacao_TBInstitucional_ucInstitucional_TabNavegacao_TBContato_ucContato_lnkLogoEdit'
    element :excluirLogo,'#ctl00_conteudo_TabNavegacao_TBInstitucional_ucInstitucional_TabNavegacao_TBContato_ucContato_lnkLogoDelete'
end