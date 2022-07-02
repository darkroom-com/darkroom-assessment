# frozen_string_literal: true

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test '.image' do
    image = Product.image(0)
    assert image, 'image-1.jpg'
  end
end
