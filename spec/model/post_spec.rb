require 'rails_helper'

describe Post do
  let(:post) { create(:post) }

  describe 'associations' do
    describe 'with images' do
      it "delete the images when post is deleted" do
        image = create(:image, post: post)
        expect { post.destroy }.to change{ Image.count }.by(-1)
      end
    end
  end
end
