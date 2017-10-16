class Users::CartsController < ApplicationController
  def index
    @products = current_user.products

    @price = 0
    @products.each do |product|
      @price += product[:price]
    end

  end

  def create
    cart = Cart.new(product_id: params[:product_id], user_id: current_user.id)
    if cart.save
      redirect_to users_carts_path
    end
  end

  def purchase
    Payjp.api_key = PAYJP_SECRET_KEY
    Payjp::Charge.create(currency: 'jpy', amount: 1000, card: params['payjp-token'])
    redirect_to root_path, notice: "支払いが完了しました"
  end
end
