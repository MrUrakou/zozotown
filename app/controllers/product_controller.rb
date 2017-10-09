class ProductController < ApplicationController
  def indexs
    @products = Product.all
  end
end
