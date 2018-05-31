include ActionDispatch::TestProcess
FactoryBot.define do
  factory :image do
    image { fixture_file_upload("spec/fixtures/img/sample.jpg", "image/jpg") }
  end
end
