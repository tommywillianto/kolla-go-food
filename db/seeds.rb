
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Food.delete_all

Food.create!(
	name: "Tenderloin Steak",
	description: %{<p>Tenderloin hanya terdapat dibagian tengah sapi</p>},
	image_url: "tenderloin.jpg",
	price: 50000.00
)

Food.create!(
	name: "Sirloin Steak",
	description: %{<p>Sirloin hanya terdapat dibagian tengah sapi</p>},
	image_url: "sirloin.jpg",
	price: 60000.00
)

Food.create!(
	name: "Rib Eye Steak",
	description: %{<p>Rib Eye hanya terdapat dibagian tengah sapi</p>},
	image_url: "ribeye.jpg",
	price: 70000.00
)
