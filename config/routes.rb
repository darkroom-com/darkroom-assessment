# frozen_string_literal: true

Rails.application.routes.draw do
  root 'products#index'

  resources :products, only: %i[show index]

  post 'cart/add_item', action: :add_product, controller: :carts
end
