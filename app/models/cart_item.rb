class CartItem < ApplicationRecord
  belongs_to :cart
  belongs_to :product

  validates :product, uniqueness: { scope: :cart, message: "is unique per cart" }
end
