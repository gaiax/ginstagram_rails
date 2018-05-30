class HomeController < ApplicationController
  def index
    @user = User.find_by_id(current_user.id)
    @post = Post.where("user_id = ?", current_user.id)
  end
end
