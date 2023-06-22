puts "🌱 Seeding spices..."

author1 = Author.create(name: "Leeroy Jenkins")
author2 = Author.create(name: Faker::Name.unique.name)
author3 = Author.create(name: Faker::Name.unique.name)

Profile.create(author_id: author1.id, username: "ljenk", email: "ljenk@aol.com", bio: "a very dated reference", avatar_url:"https://images.pexels.com/photos/15964776/pexels-photo-15964776/free-photo-of-brunette-in-white-pants.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load", facebook: 'https://facebook.com')
Profile.create(author_id: author2.id, username: "f.olali", email: "folali@mail.com", bio: "a very dedicated web developer", avatar_url:"https://images.pexels.com/photos/16977812/pexels-photo-16977812/free-photo-of-fashion-man-people-dark.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load", facebook: 'https://twiiter.com')

post1 = Post.create(title: Faker::Lorem.sentence, content: Faker::Lorem.paragraph, author_id: author1.id)
post2 = Post.create(title: Faker::Lorem.sentence, content: Faker::Lorem.paragraph, author_id: author2.id)
post3 = Post.create(title: Faker::Lorem.sentence, content: Faker::Lorem.paragraph, author_id: author3.id)
post4 = Post.create(title: Faker::Lorem.sentence, content: Faker::Lorem.paragraph, author_id: author3.id)

tag1 = Tag.create(name: Faker::Lorem.word)
tag2 = Tag.create(name: Faker::Lorem.word)
tag3 = Tag.create(name: Faker::Lorem.word)

PostTag.create(post_id: post1.id, tag_id: tag1.id)
PostTag.create(post_id: post1.id, tag_id: tag2.id)

PostTag.create(post_id: post2.id, tag_id: tag1.id)
PostTag.create(post_id: post2.id, tag_id: tag3.id)

PostTag.create(post_id: post3.id, tag_id: tag2.id)

PostTag.create(post_id: post4.id, tag_id: tag2.id)
PostTag.create(post_id: post4.id, tag_id: tag3.id)

puts "✅ Done seeding!"
