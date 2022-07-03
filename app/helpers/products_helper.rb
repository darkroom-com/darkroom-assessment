module ProductsHelper
  def cart_items
    Cart.find_by(guest_id: guest_id)&.cart_items
  end
end
