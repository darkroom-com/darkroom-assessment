# frozen_string_literal: true

Rails.application.routes.draw do
  root 'products#index'

  resources :products, only: %i[show index]
end
