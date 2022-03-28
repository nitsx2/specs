RSpec.describe "predicate methods and predicate matchers" do 
	it "should predicate the value" do 
		result = 16/2
		expect(result.even?).to eq(true)
	
		expect(result).to be_even

		expect(16/2).to be_even

		expect(0).to be_zero

		expect(nil).to be_nil

		expect(15).to be_odd

		expect(14).to be > 8

		expect(21).to be < 33

		expect([]).to be_empty

	end

	describe 0 do 
		it {is_expected.to be_zero}
	end

	describe 4 do 
		it {is_expected.to be_even}
	end

	describe 9 do 
		it {is_expected.to be_odd}
	end

	describe [] do 
		it {is_expected.to be_empty}
	end



end