# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.destroy_all
Vehicle.destroy_all

sn = User.create(email: "driver@gmail.com", password: "123456")
gxf = User.create(email: "traveler@gmail.com", password: "123456")


# sn.vehicles.create(plate_number: "111111", make: "KIA", size: "7 Seats", location: "QLD", wheelchair_hoist: "Avaliable")
# sn.vehicles.create(plate_number: "222222", make: "Honda", size: "5 Seats", location: "VIC", wheelchair_hoist: "Avaliable")
# sn.vehicles.create(plate_number: "333333", make: "Benz", size: "7 Seats", location: "NSW", wheelchair_hoist: "Avaliable")
# gxf.vehicles.create(plate_number: "444444", make: "Volvo", size: "7 Seats", location: "QLD", wheelchair_hoist: "Avaliable")
# gxf.vehicles.create(plate_number: "555555", make: "Mitsubishi", size: "7 Seats", location: "NT", wheelchair_hoist: "Avaliable")
# gxf.vehicles.create(plate_number: "666666", make: "Mazda", size: "7 Seats", location: "QLD", wheelchair_hoist: "Avaliable")

puts "Vehicles: #{Vehicle.count}"
puts "User: #{User.count}"