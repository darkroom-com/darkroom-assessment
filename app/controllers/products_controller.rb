# frozen_string_literal: true

class ProductsController < ApplicationController
  def index
    @products = CacheService.new.read('products')

    if(@products == nil)
      @products = Product.all
      CacheService.new.write('products', @products)
      @products
    else
      @products
    end
  end

  def show
    @product ||= Product.find(params[:id])
  end
end
