class Admin::ProductsController < ApplicationController

  before_action :require_admin!

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to root_path
    else
      flash.now[:alert] = "入力してください"
      render :new
    end
  end

  private
  def product_params
    params.require(:product).permit(:name, :category, :image, :price, :product_code, :count, :description)
  end

  def require_admin!
    if current_user.nil? || !current_user.admin?
      redirect_to root_path, notice: 'ページがありません'
    end
  end
end
