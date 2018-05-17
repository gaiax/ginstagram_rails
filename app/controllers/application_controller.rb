class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  # ユーザー登録後のリダイレクト先
  def after_sign_up_path_for(resource)
    binding.pry
    user_path
  end
end
