#language:pt

Funcionalidade: Uso de Cupons no Checkout
    Como um usuario da loja, quero poder aplicar cupons de descontos na pagina de checkout
    Para que eu possa obter reduções no preço de produtos, aumentando a satisfação com a minha experiencia de compra.

    @temp
    Cenario: Aplicar Desconto de 20%
    # O usuário deve ser capaz de aplicar um cupom de 20% de desconto válido no checkout.
    # O desconto deve ser aplicado apenas ao valor do produto e o valor final deve ser recalculado corretamente.

    Dado que estou na pagina de checkout
        E o item que esta no meu carrinho é a Winter Top no valor de Rs. 600
        E que a taxa de entrega é Rs. 20
        E o valor total é de 620
        E tenho um cupom com 20% de desconto
    Quando aplico esse cupom de desconto
        Então o desconto de 20% deve ser aplicado apenas no valor da Winter Top
            E o valor final da compra deve ser atualizado para Rs. 500

    Cenario: Cupom Expirado
    # Ao tentar usar um cupom expirado, o usuário deve receber uma notificação informando que o cupom está expirado.
    # Nenhum desconto deve ser aplicado e o valor total da compra deve permanecer inalterado.

     Dado que estou na pagina de checkout
        E o item que esta no meu carrinho é a Winter Top no valor de Rs. 600
        E que a taxa de entrega é Rs. 20
        E o valor total é de 620
        E tenho um cupom que esta expirado
    Quando aplico esse cupom de desconto
    Então devo ver a seguinte notificação "Cupom expirado!"
        E o valor final deve permanecer o mesmo

    Cenario: Cupom Invalido
    # Ao tentar usar um cupom inválido, o usuário deve receber uma notificação informando que o cupom é inválido.
    # Nenhum desconto deve ser aplicado e o valor total da compra deve permanecer inalterado.

     Dado que estou na pagina de checkout
        E o item que esta no meu carrinho é a Winter Top no valor de Rs. 600
        E que a taxa de entrega é Rs. 20
        E o valor total é de 620
        E tenho um cupom com codigo invalido
    Quando aplico esse cupom de desconto
    Então devo ver a seguinte notificação "Cupom Invalido!"
        E o valor final deve permanecer o mesmo