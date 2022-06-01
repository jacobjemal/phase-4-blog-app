# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

b1 = Blog.create(
    title: 'Hamlet',
    content: 'The Tragedy of Hamlet, Prince of Denmark'
)

b2 = Blog.create(
    title: 'cats',
    content: 'Jellicles cats sing and dance'
)

b3 = Blog.create(
    title: 'carmen',
    content: 'Don José and Escamillo fight over Carmen'
)



u1 = User.create(username: 'Louis', email: 'louis@gmail.com', password_digest: "password")
u2 = User.create(username: 'Grace', email: 'grace@gmail.com', password_digest: "password")
u3 = User.create(username:'Ted', email:'ted@gmail.com', password_digest: "password")
u4 = User.create(username:'Bill', email:'bill123@gmail.com', password_digest: "password")
u5 = User.create(username:'Ridly', email:'aliens_r_4real@gmail.com', password_digest: "password")
u6 = User.create(username:'Bishop', email:'not_a_robot@gmail.com', password_digest: "password")

puts '🌱 Seeding Done!'