# frozen_string_literal: true

require "test_helper"

class CartItemTest < ActiveSupport::TestCase
  test "should validate cart item" do
    cart_item = CartItem.new(cart_id: 1, product_id: 1)

    assert cart_item.valid?
  end
end