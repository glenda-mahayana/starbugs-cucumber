require 'rspec'

class CheckoutPage
    include Capybara::DSL
    include RSpec::Matchers

    def assert_product_details(product)
        find('.modal-dialog.modal-confirm', text: 'View Cart').click
        
        product_title = find('.cart_description a')
        expect(product_title.text).to eql product[:name]

        sub_price = find('.cart_price p')
        expect(sub_price.text).to eql product[:price]
    end

    def assert_total_price(total_price)
        price = find('.cart_total_price')
        expect(price.text).to eql total_price
    end

end