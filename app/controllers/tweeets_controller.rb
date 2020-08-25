class TweeetsController < ApplicationController
  def index
  end
  def new
    @tweeet = Tweeet.new
  end
  def create 
    Tweeet.create(tweeet_params)
    redirect_to new_tweeet_path
  end
  private
  def tweeet_params
    params.require(:tweeet).permit(:content)
  end
end
