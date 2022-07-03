# frozen_string_literal: true

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "should save product" do
    product = Product.new(image: 'teste-case.png')

    assert product.save
  end
end
