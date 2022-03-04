# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.first 

NFI = user.carriers.find_or_create_by(name: "NFI")

pallet_1 = user.pallets.find_or_create_by(date: "03/04/2021", scheduled: 6, picked_up: 6, carrier_id: NFI.id)
