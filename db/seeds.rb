# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(email: "name@name.com", password: "password")


# Boat.create(name: "boat1", location: "Philadelphia", user_id: 1, container_max: 10)

Job.create(cost: 2000.00, origin: "Philadelphia", destination: "New York", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", container_amount: 8, user_id: 1)

Job.create(cost: 2000.00, origin: "Philadelphia", destination: "New York", description: "This shipment is for Urban Outfitters and it is a bunch of clothes that they need to get from one store or another.", container_amount: 8, user_id: 1)

Job.create(cost: 3336.00, origin: "Tokyo", destination: "Charleston", description: "Please contact Bill Goner at Enterprise Solutions about any needed details on this shipment. His number is 414-867-5309", container_amount: 12, user_id: 1)

Job.create(cost: 4462.90, origin: "Boston", destination: "Philadelphia", description: "A shipment of food that will have the refridgeration built into the packaging.  Homer Newton at hnewton@business.com.", container_amount: 9, user_id: 1)

Job.create(cost: 5923.56, origin: "New York", destination: "London", description: "American Muscle Cars has a bunch of newly designed automobiles that they need to transport to London.  Nancy is the lead on this shipment.", container_amount: 2, user_id: 1)
