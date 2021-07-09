Dado('que pesquiso o meu produto') do
    visit(CONFIG['url_padrao'])
    Compra.new.buscar_no_site
  end

Dado('encontro meu produto') do
  assert_selector('img[alt="Camisa do Palmeiras I 21 Puma - Masculina"]', visible: true)
  all('img[alt="Camisa do Palmeiras I 21 Puma - Masculina"]')[0].click
  sleep(3)
end

Quando('verifico que encontrei meu produto') do 
  Compra.new.tirar_foto('busca','sucesso')
end
  
E('clico em comprar') do
    Compra.new.f_compra
    sleep(3)
end
  
  Entao('verifico se o produto foi adicionado ao meu carrinho.') do
    has_text?('Meu carrinho')
    has_no_text?('Meu carrinho')
    Compra.new.tirar_foto('compra','sucesso')
    sleep(5)
  end
