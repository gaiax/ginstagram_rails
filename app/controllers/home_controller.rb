class HomeController < ApplicationController
  def index
    @post = Post.where("user_id = ?", current_user.id)
  end
end
