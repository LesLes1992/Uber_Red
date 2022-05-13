# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.destroy_all

sn = User.create(email: "snowberg.prc@gmail.com", password: "123456")
gxf = User.create(email: "guxuefeng1992@139.com", password: "123456")


sn.vehicles.create(plate_number: "111111", make: "111KIA", size: "7 Seats", location: "Queensland", wheelchair_hoist: "avaliable", status: "Avaliable")
sn.vehicles.create(plate_number: "222222", make: "222Honda", size: "5 Seats", location: "Queensland", wheelchair_hoist: "avaliable", status: "Avaliable")
sn.vehicles.create(plate_number: "333333", make: "333Benz", size: "7 Seats", location: "Queensland", wheelchair_hoist: "avaliable", status: "Avaliable")
gxf.vehicles.create(plate_number: "444444", make: "444Volve", size: "7 Seats", location: "Queensland", wheelchair_hoist: "avaliable", status: "Avaliable")
gxf.vehicles.create(plate_number: "555555", make: "555Mitsubishi", size: "7 Seats", location: "Queensland", wheelchair_hoist: "avaliable", status: "Avaliable")
gxf.vehicles.create(plate_number: "666666", make: "666Mazda", size: "7 Seats", location: "Queensland", wheelchair_hoist: "avaliable", status: "Avaliable")

puts "Vehicles: #{Vehicle.count}"
puts "User: #{User.count}"