FactoryBot.define do
  factory :image do
    post
    image { fixture_file_upload(“spec/fixtures/img/sample.png”, ‘image/png’) }
  end
end
