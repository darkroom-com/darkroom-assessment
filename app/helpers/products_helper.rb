module ProductsHelper
  def cart_items
    cart_items_cache = CacheService.new.read('cart_items_cache')

    if(cart_items_cache == nil)
      cart_items = Cart.find_by(guest_id: guest_id)&.cart_items
      CacheService.new.write('cart_items_cache', cart_items)
      cart_items
    else
      cart_items_cache
    end
  end
end
