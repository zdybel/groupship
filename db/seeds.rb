# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(email: "name@name.com", password: "password")

User.create(email: "other@other.com", password: "password")


Boat.create(name: "USS Example", location: "Philadelphia", user_id: 1, container_max: 500, available: true)

Boat.create(name: "Clara Bendiga", location: "Tokyo", user_id: 1, container_max: 1000, available: true)

Boat.create(name: "The Chipper", location: "Philadelphia", user_id: 1, container_max: 800, available: true)

Boat.create(name: "USS User Two", location: "New York", user_id: 2, container_max: 700, available: true)

Boat.create(name: "USS Not Yours", location: "Philadelphia", user_id: 2, container_max: 1000, available: true)

Boat.create(name: "Panamonium", location: "Philadelphia", user_id: 2, container_max: 900, available: true)

Job.create(cost: 2000.00, origin: "Philadelphia", destination: "New York", description: "This shipment is for Urban Outfitters and it is a bunch of clothes that they need to get from one store or another.", container_amount: 125, user_id: 1, available: true)

Job.create(cost: 3336.00, origin: "Tokyo", destination: "Charleston", description: "Please contact Bill Goner at Enterprise Solutions about any needed details on this shipment. His number is 414-867-5309", container_amount: 900, user_id: 1, available: true)

Job.create(cost: 4462.90, origin: "Boston", destination: "Philadelphia", description: "A shipment of food that will have the refridgeration built into the packaging.  Homer Newton at hnewton@business.com.", container_amount: 544, user_id: 1, available: true)

Job.create(cost: 5923.56, origin: "New York", destination: "London", description: "American Muscle Cars has a bunch of newly designed automobiles that they need to transport to London.  Nancy is the lead on this shipment.", container_amount: 2, user_id: 1, available: true)
