# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Aquarium.destroy_all
Fish.destroy_all
Artifact.destroy_all
Vegetation.destroy_all

a1 = Aquarium.create(owner: "Jim_s", water:true, size:10)
a2 = Aquarium.create(owner:"John_s", water:false, size:9)
a1 = Aquarium.create(owner:"Juan_s", water:true, size:100)
a3 = Aquarium.create(owner:"Joan_s", water:true, size:1)

f1 = Fish.create(kind:"tetra", quantity:4, alive:true, aquarium_id: a1.id)
f2 = Fish.create(kind:"guppies", quantity:100, alive:true, aquarium_id: a2.id)
f3 = Fish.create(kind:"turtle", quantity:2, alive:true, aquarium_id: a3.id)
f4 = Fish.create(kind:"tetra", quantity:4, alive:true, aquarium_id: a2.id)

a1 = Artifact.create(name:"treasure_chest", size:100)
a2 = Artifact.create(name:"diver", size:10)

v1 = Vegetation.create(color:"green", real:true)
v2 = Vegetation.create(color:"red", real:false)
v3 = Vegetation.create(color:"purple", real:true)

puts "Aquarium has been Built!"


