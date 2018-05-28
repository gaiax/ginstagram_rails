require 'rails_helper'

describe HomeController, type: :controller do
  context 'when user login' do
    login_user
    it 'redirect to timeline' do
      expect(response).to redirect_to root_path
    end
  end
end
