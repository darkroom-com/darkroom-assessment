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
      qtt_lower_or_equal_one
      qtt_greater_than_one
    end

    def qtt_greater_than_one
      if cart_item && cart_item&.quantity > 1
        cart_item.update(quantity: cart_item.quantity -= 1)
      end
    end

    def qtt_lower_or_equal_one
      if cart_item && cart_item&.quantity <= 1
        cart.cart_items.find(cart_item.id).delete
      end
    end

    def product
      context.product = Product.find(params[:product_id])
    end
    
    def cart
      context.cart = Cart.find(params[:cart_id])
    end

    def cart_item
      context.cart_item = ::CartItem.find_by(cart: cart, product: product)
    end
  end
end
