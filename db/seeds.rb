
User.create!(email: 'auteur@example.com', password: 'password')

10.times do
  Article.create!(
    title: Faker::Lorem.sentence(word_count: 3),
    content: Faker::Lorem.paragraph,
    user: User.first
  )
end