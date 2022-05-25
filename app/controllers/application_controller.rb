class ApplicationController < ActionController::Base
  def guest_id
    helpers.guest_id
  end

  def guest_cart
    @guest_cart ||= Cart.find_or_create_by(guest_id: guest_id)
  end
end
