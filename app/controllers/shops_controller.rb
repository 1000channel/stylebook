class ShopsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_shop, only: [:show, :edit, :update, :destroy]





  def new
    @shop = Shop.new
  end

  def create
    @shop = Shop.create(shop_params)
    if @shop.save
      redirect_to shop_path(@shop.id)
    else
      render :new
    end
  end

  def show
  end

  def edit
    redirect_to root_path unless current_user == @shop.user

  end

  def update
    if @shop.update(shop_params)
      redirect_to shop_path(@shop.id)
    else
      render :edit
    end
  end

  def destroy
    redirect_to root_path unless current_user == @shop.user
    @shop.destroy
    redirect_to root_path
  end
  private

  def shop_params
    params.require(:shop).permit(:image, :shop_name, :postal_code, :prefecture_id, :city, :addresses, :building, :phone_number).merge(user_id: current_user.id)
  end

  def set_shop
    @shop = Shop.find(params[:id])
  end

end
