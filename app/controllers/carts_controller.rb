# frozen_string_literal: true

class CartsController < ApplicationController

  def add_product
    result = PlaceOrder.call(params: permited_params)
    flash[:success] = "'#{result.product.image}' added to cart!"
    redirect_to :products
  
    rescue StandardError => e
      flash[:error] = e.message
      redirect_to product_path(id: result.product.id)
    end

    private

    def permited_params
      params.merge(guest_id: guest_id).permit(:guest_id, :product_id)
    end
  end