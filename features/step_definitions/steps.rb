Quando('acesso a pagina principal da Loja') do
  visit 'https://automationexercise.com/'
end

Então('eu devo ver uma lista de produtos disponiveis') do
  products = all('.single-products')
  expect(products.size).to be > 0
end

Dado('que estou na pagina principal da loja') do
  visit 'https://automationexercise.com/'
end

Dado('que desejo comprar o seguinte produto:') do |table|
  @product_name = table.hashes[0][:product]
  @product_price = table.hashes[0][:price]
end

Quando('inicio a compra desse item') do
  product = find('.productinfo.text-center', text: @product_name, match: :first)
  product.find('.btn.btn-default.add-to-cart').click
end

Então('devo ver a pagina de Checkout com os detalhes do produto') do
  find('.modal-dialog.modal-confirm', text: 'View Cart').click
  product_title = find('.cart_description a')
  expect(product_title.text).to eql @product_name

  sub_price = find('.cart_price p')
  expect(sub_price.text).to eql @product_price

end

Então('o valor total da compra deve ser {string}') do |total_price|
  price = find('.cart_total_price')
  expect(price.text).to eql total_price
end