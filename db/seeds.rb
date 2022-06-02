# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Deleting Restaurant/Customer data..."
Blog.destroy_all
User.destroy_all

u1 = User.create(username: 'Louis', email: 'louis@gmail.com', password_digest: "password")
u2 = User.create(username: 'Grace', email: 'grace@gmail.com', password_digest: "password")
u3 = User.create(username:'Ted', email:'ted@gmail.com', password_digest: "password")
u4 = User.create(username:'Bill', email:'bill123@gmail.com', password_digest: "password")
u5 = User.create(username:'Ridly', email:'aliens_r_4real@gmail.com', password_digest: "password")
u6 = User.create(username:'Bishop', email:'not_a_robot@gmail.com', password_digest: "password")


b1 = Blog.create(
    title: 'Hamlet',
    content: 'The Tragedy of Hamlet, Prince of Denmark',
    user_id: u1.id
)

b2 = Blog.create(
    title: 'cats',
    content: 'Jellicles cats sing and dance',
    user_id: u2.id
)

b3 = Blog.create(
    title: 'carmen',
    content: 'Don José and Escamillo fight over Carmen',
    user_id: u3.id
)

b4 = Blog.create(
    title: 'What is Lorem Ipsum?',
    content: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
    user_id: u4.id
)

b5 = Blog.create(
    title: 'Why do we use it?',
    content: 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content here, content here, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for lorem ipsum will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).',
    user_id: u5.id
)

b6 = Blog.create(
    title: 'Where can I get some?',
    content: 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which dont look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isnt anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.',
    user_id: u6.id
)



puts '🌱 Seeding Done!'