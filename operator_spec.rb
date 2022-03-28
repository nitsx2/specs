# be is alias of eqaul method

RSpec.describe "operators comparasion" do
	it "should compare to value" do 
		# expect(100).to be > 10
		expect(1).to be < 1.01
	
		expect(2).not_to be > 3

		expect(100).not_to be < 80

		expect(14).to be >= 14

		expect(true).not_to be == false

		expect(true).to be == true

		expect("<a").to be < "a"#pass because opaertor is treated as symbol here
	
		expect(20).to be <= 30
	end


	describe 100 do
		it {is_expected.to be > 90}
		it {is_expected.to be < 200}
		# it {is_expected.to be > 100}#fail
		it {is_expected.to be(100)}

		it {is_expected.to be == 100}

		it {is_expected.not_to be > 100}
		it {is_expected.not_to be < 100}
	end

end