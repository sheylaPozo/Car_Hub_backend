# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
 dvxtwentyone =Car.new
 dvxtwentyone.name = "DBX2021"
 dvxtwentyone.background_color = "#5285B1"
 dvxtwentyone.price = 17942.36
 dvxtwentyone.horse_power = 526
 dvxtwentyone.description = "The 2021 Aston Martin DBX marks the legendary British sports-car maker's first foray into SUV territory—and its simultaneous entrance into high-end family transportation. the 2021 DBX can be taken off-road and tow heavy loads"
 dvxtwentyone.image.attach(io: File.open("seedImages/dbx2021.png"), filename: "#{Car.count}.png")
 dvxtwentyone.save!

 valkyrie =Car.new
 valkyrie.name = "Valkyrie"
 valkyrie.background_color = "#F9F5F6"
 valkyrie.price = 356176.45
 valkyrie.horse_power = 1140
 valkyrie.description = "An incredibly special car with an equally remarkable name. One that immediately evokes connotations of power and honor, of being chosen by the Gods. Only 150 road cars will be made. Valkyrie is Aston Martin’s first hypercar"
 valkyrie.image.attach(io: File.open("seedImages/Valk.png"), filename: "#{Car.count}.png")
 valkyrie.save!

 valhalla =Car.new
 valhalla.name = "Valhalla"
 valhalla.background_color = "#1A0E11"
 valhalla.price = 1206.84
 valhalla.horse_power = 937
 valhalla.description = "Valhalla have a mid-engined 950PS gasoline/battery electric powertrain, new carbon fibre structure and aerodynamics inspired by the pioneering philosophy first seen in the revolutionary Aston Martin Valkyrie."
 valhalla.image.attach(io: File.open("seedImages/Valhalla.png"), filename: "#{Car.count}.png")
 valhalla.save!

 
 vantagetwentyone =Car.new
 vantagetwentyone.name = "Vantage2021"
 vantagetwentyone.background_color = "#CE0E3C"
 vantagetwentyone.price = 161000
 vantagetwentyone.horse_power = 503
 vantagetwentyone.description = "New Vantage has the most powerful and provocative design language ever seen in a Vantage. A hunter, light in weight and is therefore light in its visual language."
 vantagetwentyone.image.attach(io: File.open("seedImages/Vantage2021.png"), filename: "#{Car.count}.png")
 vantagetwentyone.save!

