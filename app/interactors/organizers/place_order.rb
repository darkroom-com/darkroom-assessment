class Organizers::PlaceOrder
  include Interactor::Organizer

   organize Create::GuestCart, Create::CartItem
end
