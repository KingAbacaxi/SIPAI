# A classe AcessarPagina serve para acessar a pagina
class AcessarSigam < SitePrism::Page
    # abaixo com a url padrao
    set_url 'http://homologacao-sigam.eastus2.cloudapp.azure.com/sigam-sipai-test/'
    puts 'Site acessado com sucesso'
  end