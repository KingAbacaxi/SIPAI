class CadastroAreaProtegida < SitePrism::Page
    element :abaInstitucional,'#__tab_ctl00_conteudo_TabNavegacao_TBInstitucional'
    element :abaContatoInstitucional,'#__tab_ctl00_conteudo_TabNavegacao_TBInstitucional_ucInstitucional_TabNavegacao_TBContato'

    element :endereco,'#'
    element :complemento,'#'
    element :bairro,'#'
    element :cep,'#'
    element :ddd,'#'
    element :telefone,'#'
    element :email,'#'
    element :site,'#'
    element :logo,'#'

    #btn

    element :atualizar,'#'
    element :ajuda,'#'

end