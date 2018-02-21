#language:pt

Funcionalidade: Adicionar no carrinho
	Sendo um usuário do site demo.cs-cart.com
	Posso adicionar produtos no carrinho
	Para poder comprar produtos

	@teste_1
	Cenário: Adicionar dois produtos ao carrinho

				Dado que estou no site demo.cs-cart.com
				E pesquiso o produto "Batman"
				E escolho o primeiro produto da pesquisa
				E adiciono o produto ao carrinho
				E pesquiso o produto "PS3"
				E escolho o primeiro produto da pesquisa
				Quando adiciono o produto ao carrinho
				Então os dois produtos estão no carrinho de compras
