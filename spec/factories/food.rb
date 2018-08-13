FactoryGirl.define do
	factory :food do
		# name "Nasi Uduk"
		name { Faker::Food.dish }
		# description "Betawi style steamed rice cookied"
		description { Faker::Food.ingredient }
		price 10000.0
	end

	factory :invalid_food, parent: :food do
		name nil
		description nil
		price 10000.0
	end
end


# Faker buat isi datanya.
# Factory Girl itu buat data, mocknya