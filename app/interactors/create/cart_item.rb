# frozen_string_literal: true

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
      context.cart_item = ::CartItem.find_by(cart: context.cart, product: context.product)
      
      if context.cart_item&.quantity
        context.cart_item.quantity += 1

        return context.cart_item.save!
      end

      context.cart.cart_items.create!(product: context.product, quantity: 1)
    end
  end
end
