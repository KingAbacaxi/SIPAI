
module Helper

    def tirar_foto(nome_arquivo, resultado)
        caminho_arquivo = "reports/screenshot/"
        foto = "#{caminho_arquivo}#{nome_arquivo}-#{resultado}.png"
        page.driver.browser.save_screenshot(foto)
        embed(foto, 'image/png','clique aqui')
    end

end