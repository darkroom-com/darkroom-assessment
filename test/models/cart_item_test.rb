require "test_helper"

class CartItemTest < ActiveSupport::TestCase
  test "should validate cart item" do
    cart_item = CartItem.new(cart_id: 1, product_id: 3)

    assert cart_item.valid?
  end

  test "should not accept repeated product per cart" do
    cart_item = CartItem.new(cart_id: 1, product_id: 1)

    assert_not cart_item.valid?
  end
end
