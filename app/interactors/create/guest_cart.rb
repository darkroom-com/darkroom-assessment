
module Create
  class GuestCart
    include Interactor

    delegate :params, to: :context

    def call
      create_cart
    end

    private

    def create_cart
      context.cart = Cart.find_or_create_by(guest_id: params[:guest_id])
    end

  end
end
