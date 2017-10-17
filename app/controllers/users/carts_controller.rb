class Users::CartsController < ApplicationController

  before_action :set_product_price, only: [:index, :purchase]

  def index
    @products = current_user.products.page(params[:page]).per(6)
  end

  def create
    cart = Cart.new(product_id: params[:product_id], user_id: current_user.id)
    if cart.save
      redirect_to users_carts_path
    end
  end

  def destroy
    carts = Cart.where(product_id: params[:id], user_id: current_user.id)
    cart = carts[0]
    if cart.destroy
      redirect_to users_carts_path
    end
  end


  def purchase
    Payjp.api_key = PAYJP_SECRET_KEY
    Payjp::Charge.create(currency: 'jpy', amount: @price, card: params['payjp-token'])
    redirect_to root_path, notice: "支払いが完了しました"
  end

  private
  def set_product_price
    @products = current_user.products
    @price = 0
    @products.each do |product|
      @price += product[:price]
    end
  end
end
