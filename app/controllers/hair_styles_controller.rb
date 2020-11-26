class HairStylesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_hair_style, only: [:show, :edit, :update, :destroy]

  def index
    @hair_styles = HairStyle.all.order('created_at DESC')
  end

  def new
    @hair_style = HairStyle.new
  end

  def create
    @hair_style = HairStyle.create(hair_style_params)
    if @hair_style.save
      redirect_to hair_style_path(@hair_style.id)
    else
      render :new
    end
  end

  def show
  end

  def edit
    redirect_to root_path unless current_user == @hair_style.user

  end

  def update
    if @hair_style.update(hair_style_params)
      redirect_to hair_style_path(@hair_style.id)
    else
      render :edit
    end
  end

  def destroy
    redirect_to root_path unless current_user == @hair_style.user
    @hair_style.destroy
    redirect_to root_path
  end

  private

  def hair_style_params
    params.require(:hair_style).permit(:image, :gender_id, :hair_length_id, :hair_parm_id, :hair_color_id).merge(user_id: current_user.id)
  end

  def set_hair_style
    @hair_style = HairStyle.find(params[:id])
  end

end
