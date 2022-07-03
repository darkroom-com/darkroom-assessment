# frozen_string_literal: true

require 'test_helper'

class CartsControllerTest < ActionDispatch::IntegrationTest
  test 'should add product and redirect to products index' do
    post cart_add_item_path(product_id: 3)

    assert_redirected_to :products
  end
end