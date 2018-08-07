FactoryGirl.define do
	factory :food do
		# name "Nasi Uduk"
		name { Faker::Food.dish }
		description "Betawi style steamed rice cookied"
		price 10000.0
	end
end


# Faker buat isi datanya.
# Factory Girl itu buat data, mocknya