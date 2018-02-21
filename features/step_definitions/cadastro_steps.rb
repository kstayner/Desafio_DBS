Dado("que estou no site demo.cs-cart.com") do
  url = WebLoja.new
  url.load
end

E("pesquiso o produto {string}") do |produto|
  WebLoja.new.campo_busca.click
  WebLoja.new.campo_busca.set produto
  WebLoja.new.botao_pesquisar.click
end

E("escolho o primeiro produto da pesquisa") do
  WebLoja.new.selecionar_produto
end

E("adiciono o produto ao carrinho") do
  WebLoja.new.botao_adicionar_carrinho.click
  expect(WebLoja.new).to have_no_modal_item_incluso
end

Então("os dois produtos estão no carrinho de compras") do
  WebLoja.new.click_meu_carrinho.click
  WebLoja.new.click_ver_carrinho.click
  expect(WebLoja.new.carrinho_populado.text).to include("F.E.A.R. 3 (PS3) MX")
  expect(WebLoja.new.carrinho_populado.text).to include("Batman: Arkham City (X360)")
end
