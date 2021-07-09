class Compra < SitePrism::Page
    element :buscartexto, 'input[id="searchInput"]'
    element :buscarpesquisa, 'input[id="searchInput"]'
    element :item, 'img[alt="Camisa do Palmeiras I 21 Puma - Masculina"]'
   

    def buscar_no_site
        buscartexto.set 'Camisa Palmeiras'
        sleep(2)
        buscarpesquisa.send_keys :enter
        
    end


    def tirar_foto(nome_arquivo, resultado)
        caminho_arquivo = "C:/DESAFIO SMARKIO/test/report/screenshots/test_#{resultado}"
        foto = "#{caminho_arquivo}/#{nome_arquivo}.png"
        save_screenshot("#{foto}")
    end
    
    
    def f_compra
        find('button[title="tamanho EG"]').click
        sleep(3)
        find('div[class="_1nnzvnp"]').click
        
    end
          
end
    


   

