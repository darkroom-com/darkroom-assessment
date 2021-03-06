# frozen_string_literal: true

require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get products_url
    assert_response :success
  end

  test 'should get show' do
    get product_url(id: 1)
    assert_response :success
  end
end
