User.create!(name:  "Cong Thien Tran",
             email: "thientran1707@gmail.com",
             password:              "01279289861",
             password_confirmation: "01279289861",
             admin:true)

100.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password)
end


users= User.order(:created_at).take(5)
50.times do
  content= Faker::Lorem.sentence(5)
  users.each { |user| user.posts.create!(content: content)}
end

