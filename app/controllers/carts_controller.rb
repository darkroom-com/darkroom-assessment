# frozen_string_literal: true

class CartsController < ApplicationController

  def add_product
    result = Organizers::PlaceOrder.call(params: permited_params)
    flash[:success] = "'#{result.product.image}' added to cart!"
    redirect_to :products
  
    rescue StandardError => e
      flash[:error] = e.message
      redirect_to product_path(id: params[:product_id])
    end


    def update_quantity
      Update::ReduceCartItemQuantity.call(params: permited_params)

      redirect_to product_path(id: params[:product_id])
    end

    private

    def permited_params
      params.merge(guest_id: guest_id).permit(:guest_id, :product_id, :cart_id,:cart_id)
    end
  end