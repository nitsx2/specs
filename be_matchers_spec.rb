RSpec.describe "Be mathcer truthey falsy" do 

	it "should descirbe values as truthy or falsy" do
		# falsy -> false, nil
		# truthy -> all except false and nil
		expect(true).to be_truthy
		expect(false).to be_falsy
	
		expect(1).to be_truthy

		expect([1,2]).to be_truthy

		expect("asasas").to be_truthy

		expect(nil).to be_falsy

	end

end