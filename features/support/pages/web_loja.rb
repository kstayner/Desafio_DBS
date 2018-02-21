class WebLoja < SitePrism::Page
  set_url '/'

  element :campo_busca, '#search_input'
  element :botao_pesquisar, 'button[title=Pesquisar]'
  element :botao_adicionar_carrinho, 'button[class="ty-btn__primary ty-btn__big ty-btn__add-to-cart cm-form-dialog-closer ty-btn"]'
  element :modal_item_incluso, 'div[class=hidden]'
  element :click_meu_carrinho, 'span[class="ty-minicart-title ty-hand"]'
  element :click_ver_carrinho, 'div[class=ty-float-left]'
  element :carrinho_populado, '#cart_items'

  def selecionar_produto
    first('div[class=ty-grid-list__image]').click
  end

end
