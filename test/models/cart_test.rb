# frozen_string_literal: true

require "test_helper"

class CartTest < ActiveSupport::TestCase
  test "should save cart" do
    cart = Cart.new(guest_id: '40647c8d85af9567408ed1e132091e88f4e6c3a4b48c0313a59045caf2b735fb')

    assert cart.save
  end

  test "should not accept repeated guest_id" do
    cart = Cart.new(guest_id: '37d7a80604871e579850a658c7add2ae7557d0c6abcc9b31ecddc4424207eba3')

    assert_not cart.valid?
  end
end