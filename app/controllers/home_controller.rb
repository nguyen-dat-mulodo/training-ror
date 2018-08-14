class HomeController < ApplicationController
  def index
    @products = Product.all
    @cart = current_cart
  end
end
