class StoreController < ApplicationController
  include CurrentCart
  before_action :set_cart

  def index
    @products = Product.order(:title)
    @count = increment_count
  end

  private

    def increment_count
    	session[:count] ||= 0
    	session[:count] += 1
    end
end
