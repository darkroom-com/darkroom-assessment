# frozen_string_literal: true

class CartsController < ApplicationController
  before_action :guest_cart

  def add_product
    product = Product.find(params[:product_id])
    guest_cart.cart_items.create!(product: product)

    flash[:success] = "Product '#{product.image}' added to cart!"

    redirect_to :products
  rescue StandardError => e
    flash[:error] = e.message

    redirect_to product_path(id: product.id)
  end
end
