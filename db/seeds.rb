Post.destroy_all

10.times{
Post.create(title: Faker::Lorem.sentence, content: Faker::Lorem.sentence)
}