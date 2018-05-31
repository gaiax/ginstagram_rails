class HomeController < ApplicationController
  def index
    # @post = Post.where("user_id = ?", current_user.id).order("created_at DESC")
    @post = Post.limit(99).order("created_at DESC")
  end
end
