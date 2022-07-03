
module Create
  class CartItem
    include Interactor

    delegate :params, to: :context

    def call
      create_cart_item
    end

    private

    def create_cart_item
      context.product = Product.find(params[:product_id])
      context.cart.cart_items.create!(product: context.product)
    end
  end
end
