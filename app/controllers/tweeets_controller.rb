class TweeetsController < ApplicationController
  def index
  end
  def new
    @tweeet = Tweeet.new
  end
end
