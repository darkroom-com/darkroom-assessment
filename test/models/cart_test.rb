require "test_helper"

class CartTest < ActiveSupport::TestCase
  test "should save cart" do
    cart = Cart.new(guest_id: '61be55a8e2f6b4e172338bddf184d6dbee29c98853e0a0485ecee7f27b9af0b4')

    assert cart.save
  end

  test "should not accept repeated guest_id" do
    cart = Cart.new(guest_id: '81cc5b17018674b401b42f35ba07bb79e211239c23bffe658da1577e3e646877')

    assert_not cart.valid?
  end
end
