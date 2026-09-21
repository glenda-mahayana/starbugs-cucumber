Quando('acesso a pagina principal da Loja') do
  visit 'https://automationexercise.com/'
end

Então('eu devo ver uma lista de produtos disponiveis') do
  products = all('.single-products')
  expect(products.size).to be > 0
end