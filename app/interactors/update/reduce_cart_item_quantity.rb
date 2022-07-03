# frozen_string_literal: true

module Update
  class ReduceCartItemQuantity
    include Interactor

    delegate :params, to: :context

    def call
      delete_cart_item
    end

    private

    def delete_cart_item
      context.product = Product.find(params[:product_id])
      context.cart = Cart.find(params[:cart_id])
      context.cart_item = ::CartItem.find_by(cart: context.cart, product: context.product)
      
      qtt_lower_or_equal_zero
      qtt_greater_than_one
    end

    def qtt_greater_than_one
      if context.cart_item&.quantity > 1
        context.cart_item.quantity -= 1
      end

      context.cart_item.save
    end

    def qtt_lower_or_equal_zero
      if context.cart_item && context.cart_item&.quantity <= 0
        context.cart_item.destroy
      end
    end
  end
end
