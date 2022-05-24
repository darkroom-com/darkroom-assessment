# frozen_string_literal: true

class Product < ApplicationRecord
  IMAGES = {
    0 => 'image-0.jpg',
    1 => 'image-1.jpg',
    2 => 'image-2.jpg'
  }.freeze

  def self.image(id)
    IMAGES[id.to_i]
  end
end
