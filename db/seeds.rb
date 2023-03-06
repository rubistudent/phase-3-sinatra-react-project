require 'faker'

puts "🌱 Seeding tables..."

# Seed your database here

10.times do
  user = User.create(
    email: Faker::Internet.email,
    speciality: Faker::Lorem.word,
    avatar_url: Faker::LoremFlickr.image,
    experience: Faker::Lorem.paragraph,
    date_of_birth: Faker::Date.birthday(min_age: 15, max_age: 65),
    locale: Faker::Address.country,
    address: Faker::Address.full_address,
    education: Faker::Educator.degree
  )

  # create between 1 and 5 projects with random data for each user
  rand(1..5).times do
    project = Project.create(
      title: Faker::Lorem.sentence(word_count: 3),
      description: Faker::Lorem.paragraph,
      image_url: Faker::LoremFlickr.image
    )
  end

  # create between 1 and 10 skills for each user
  rand(1..10).times do
    skill = Skill.create(
      skill: Faker::Job.key_skill
    )
  end
end

puts "✅ Done seeding!"
