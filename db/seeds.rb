# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'andriy1998412@gmail.com', password: '123123123', password_confirmation: '123123123') if Rails.env.development?
AdminUser.create!(email: 'testandriy1998412@gmail.com', password: '321321321', password_confirmation: '321321321') if Rails.env.production?