class PlaceOrder
  include Interactor::Organizer

   organize Create::GuestCart, Create::CartItem
end
