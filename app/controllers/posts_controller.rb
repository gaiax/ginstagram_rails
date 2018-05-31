class PostsController < ApplicationController
  def new
    @post = Post.new
    @post.images.build
  end

  def create
    @post = Post.new(post_params)
    if !@post.images.empty? && @post.save
      redirect_to root_path, notice: '投稿が完了しました'
    else
      flash.now[:alert] = "投稿が失敗しました"
      render new_post_path
    end
  end

  private
    def post_params
      params.require(:post).permit(:description, images_attributes: [:id, :image, :post_id]).merge(user_id: current_user.id)
    end
end
