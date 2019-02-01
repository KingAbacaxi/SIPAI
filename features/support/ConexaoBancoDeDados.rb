class ConexaoBancoDeDados
    require 'devkit'
    require 'tiny_tds'

        def acesso
            
            @client = TinyTds::Client.new username: 'usrSigam', password: '@@S.m.a.1',
            host: 'db-dev01', port: 1433
            puts 'Connecting to SQL Server'
        end
    
        def deletaUnidade(sigla)
            acesso
            results = @client.execute("delete 
                from [SIGAM-DENUNCIAMOBILE-TESTE].dbo.[unidade] 
                where SiglaUnidade = 'Amorim'")
                
            
            results.each do |linha|            
            end
        end
    end