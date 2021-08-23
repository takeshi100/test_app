# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Post.create(id: 1, content: 'Test content1', user_id: 1)
Post.create(id: 2, content: 'Test content2', user_id: 1)
Post.create(id: 3, content: 'Test content3', user_id: 1)