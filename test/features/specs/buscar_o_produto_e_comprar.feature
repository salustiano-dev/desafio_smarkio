#language:pt
#encode: UTF-8

@buscar_compra
Funcionalidade: Buscando o produto e adicionando ao carrinho.

-Eu como Usuário
-Quero efetuar a busca de um produto e adicionar ao meu carrinho.

Cenário: Buscar o produto e comprar.

Dado que pesquiso o meu produto
Dado encontro meu produto
Quando verifico que encontrei meu produto
E clico em comprar 
Entao verifico se o produto foi adicionado ao meu carrinho.