class Users::ProductsController < ApplicationController
  def index
    @products = Product.order("created_at DESC").page(params[:page]).per(6)
  end

  def show
    @product = Product.find(params[:id])
  end
end
