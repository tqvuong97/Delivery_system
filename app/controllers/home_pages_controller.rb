class HomePagesController < ApplicationController
  def home

  end
  def test
    @images = Dir.glob("app/assets/images/img_test/*.jpg")
  end
end
