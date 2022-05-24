# frozen_string_literal: true

class ProductsController < ApplicationController
  def index
    @images = Product::IMAGES.keys
  end

  def show
    @image = Product.image(params[:id])
  end
end
