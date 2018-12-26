class LoginSigam < SitePrism::Page
    #dados do usuario 
    element :usuario, 'input[name*="username"]'
    element :senha, 'input[name*="password"]'
    
    #botão 
    element :btnAcesso, 'button[id*="login"]'
    element :btnLogin, '.Entrar'
    element :deslogar,'#ctl00_cmdLogin'

    def clicarLogin()
        
        btnLogin.click
    end
    
    def loginDados (usuar,sen)
            
        usuario.set usuar
        senha.set sen 
        btnAcesso.click
       
    end

    def sair()
        deslogar.click
    end
    
end