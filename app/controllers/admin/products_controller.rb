class Admin::ProductsController < ApplicationController

  before_action :require_admin!

  def index
  end

  def new
    @product = Product.new
  end

  def create
    @product = Products.new(product_params)
  end

  private
  def product_params
    params.require(:product).permit(:name, :explanation, :gender, :shop, :category, :image, :price, :size, :material, :contact_number, :brand, :color).merge(cart_id: params[:cart_id], user_id: current_user.id)
  end

  def require_admin!
    if current_user.nil? || !current_user.admin?
      redirect_to root_path, notice: 'アクセス権限がありません'
    end
  end
end
