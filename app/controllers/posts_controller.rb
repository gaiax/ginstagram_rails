class PostsController < ApplicationController
  def new
    @post = Post.new
    @image = Image.new
  end
end
