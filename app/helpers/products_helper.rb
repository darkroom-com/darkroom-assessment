module ProductsHelper
  def cart_products
    Cart.find_by(guest_id: guest_id)&.products
  end
end
