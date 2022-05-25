# frozen_string_literal: true

require 'test_helper'

class CartsControllerTest < ActionDispatch::IntegrationTest
  test 'should add product and redirect to products index' do
    post cart_product_path(product_id: 3)

    assert_redirected_to :products
  end

  test 'should not add repeated product and stay on product page' do
    post cart_product_path(product_id: 1)

    assert_redirected_to product_path(id: 1)
  end
end
