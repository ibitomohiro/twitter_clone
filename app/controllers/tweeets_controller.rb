class TweeetsController < ApplicationController
  def index
    @tweeets = Tweeet.all
  end
  def new
    @tweeet = Tweeet.new
  end
  def create 
    Tweeet.create(tweeet_params)
    redirect_to new_tweeet_path
  end
  def show
    @tweeet = Tweeet.find(params[:id])
  end
  private
  def tweeet_params
    params.require(:tweeet).permit(:content)
  end
end
