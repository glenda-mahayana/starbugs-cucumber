

    class HomePage
        include Capybara::DSL

        def open
            visit 'https://automationexercise.com/'
        end

        def products_list
            return all('.single-products')
        end

        def buy(product_name)
            product = find('.productinfo.text-center', text: product_name, match: :first)
            product.find('.btn.btn-default.add-to-cart').click
        end

    end