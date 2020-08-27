class TweeetsController < ApplicationController
  before_action :set_tweeet, only: [:show, :edit, :update, :destroy]
  def index
    @tweeets = Tweeet.all
  end
  def new
    @tweeet = Tweeet.new
  end
  def create 
    @tweeet = Tweeet.new(tweeet_params)
    if @tweeet.save
      redirect_to tweeets_path, notice: "Tweeet を投稿しました！"
    else  
      render :new
    end
  end
  def show
    @tweeet = Tweeet.find(params[:id])
  end
  def edit
    @tweeet = Tweeet.find(params[:id])
  end
  def update
    @tweeet = Tweeet.find(params[:id])
    if @tweeet.update(tweeet_params)
      redirect_to tweeets_path, notice: "Tweeetを編集しました！"
    else  
      render :edit
    end
  end
  def destroy
    @tweeet.destroy
    redirect_to tweeets_path, notice: "Tweeetしました！"
  end
  private
  def tweeet_params
    params.require(:tweeet).permit(:content)
  end
  def set_tweeet
    @tweeet = Tweeet.find(params[:id])
  end
end
