include ActionDispatch::TestProcess
FactoryBot.define do
  factory :image do
    image { fixture_file_upload("spec/fixtures/img/sample.jpg", "image/jpg") }
    post_id 1
  end
end
