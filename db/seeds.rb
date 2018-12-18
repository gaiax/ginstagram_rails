if Rails.env == 'development'
  5.times do |n|
    name = Faker::Name.name
    screen_name = Faker::Twitter.screen_name
    email = Faker::Internet.email
    password = Faker::Internet.password(8)
    password_confirmation = password
    avatar = Faker::Avatar.image
    User.create!(
      name: name,
      screen_name: screen_name,
      email: email,
      avatar: avatar,
      password: password,
      password_confirmation: password_confirmation,
    )
  end

  10.times do |n|
    description = Faker::Lorem.sentence
    user_id = rand(1..5)
    Post.create!(
      description: description,
      user_id: user_id,
    )
  end

  10.times do |n|
    image = File.open("./public/images/sample.jpg")
    post_id = n + 1
    Image.create!(
      image: image,
      post_id: post_id,
    )
  end
end
