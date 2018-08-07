require 'rails_helper'

describe Food do
	it "is valid with a name and description" do
		food = Food.new(
			name: "Nasi Uduk",
			description: "Betawi style steamed rice cooked in coconut milk. Delicious!",
			price: 10000.0
		)
		expect(food).to be_valid
	end

	it "is invalid without a name" do
		food = Food.new(
			name: nil,
			description: "Betawi style steamed rice cooked in coconut milk. Delicious!",
			price: 10000.0
		)
		food.valid?
		expect(food.errors[:name]).to include("can't be blank")
	end

	it "is invalid without a description" do
		food = Food.new(
			name: "Nasi Uduk",
			description: nil,
			price: 10000.0
		)
		food.valid?
		expect(food.errors[:description]).to include("can't be blank")
	end


	it "is invalid with a duplicate name" do
		food = Food.create(
			name: "Nasi Uduk",
			description: "Betawi style steamed rice cooked in coconut milk. Delicious!",
			price: 10000.0
		)
		
		food2 = Food.new(
			name: "Nasi Uduk",
			description: "Just with a different description.",
			price: 10000.0
		)

		food2.valid?
		expect(food2.errors[:name]).to include("has already been taken")
		# food2.errros[:name] = ["has alrea"]
		# ["has alrea"].include?("has alrea")
		# to -> untuk
	end

end