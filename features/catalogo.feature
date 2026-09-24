#language: pt

Funcionalidade: Catalago de produtos
    Como um usuario do site, eu quero ver o catálgo de produtos na pagina principal
    Para que eu possa escolher e saber mais sobre produtos disponiveis 

Cenário: Acessar o catalago de cafés na pagina principal

    Quando acesso a pagina principal da Starbugs
    Então eu devo ver uma lista de cafés disponiveis

Cenário: Iniciar uma compra
    Dado que estou na pagina principal da loja
        E que desejo comprar o seguinte produto:
        |name |Winter Top |
        |price   |Rs. 600    |
    Quando inicio a compra desse item
    Então devo ver a pagina de Checkout com os detalhes do produto
        E o valor total da compra deve ser "Rs. 600"

# Cenario: Produto indisponivel
#     Dado que estou na pagina principal da loja
#         E que desejo comprar o produto "Stylish Dress"
#     Quando inicio a compra desse item
#     Então devo ver um popup informando que o produto foi adicionado ao carrinho