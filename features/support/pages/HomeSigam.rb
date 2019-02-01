class HomeSigam < SitePrism::Page
    element :menuPortal,:link,'Portal'
    element :subMenuTabelasOrganizacionais,:link,'Tabelas Organizacionais',match: :first
    element :subMenuUnidade,:link,'Unidade',match: :first
end