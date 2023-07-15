# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Item.destroy_all

Item.create!(description: 'item 1', status: 1)
Item.create!(description: 'item 2', status: 2)
Item.create!(description: 'item 3', status: 0)
Item.create!(description: 'item 4', status: 1)
Item.create!(description: 'item 5', status: 2)
