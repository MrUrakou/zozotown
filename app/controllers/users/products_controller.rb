class Users::ProductsController < ApplicationController
  def index
    @new_products = Product.where(created_at: Time.mktime(2017, 10, 18).all_day).limit(6)
    @classic_products = Product.where(created_at: Time.mktime(2017, 10, 17).all_day).page(params[:page]).per(6)
  end

  def show
    @product = Product.find(params[:id])
  end
end
