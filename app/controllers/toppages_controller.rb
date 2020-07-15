class ToppagesController < ApplicationController
  def index
    if logged_in?
      @micropost = current_user.microposts.build
      @microposts = current_user.feed_microposts.order(id: :desc).page(params[:page])
    end
  end
    
  def favorite?(other_micropost)
   self.favorites.include?(other_micropost)
  end
end
