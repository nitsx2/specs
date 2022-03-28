#can mock and change functionallity of any existing function in test
RSpec.describe "Allow method" do 
	it "can customize the return value" do 
		
		calc = double
		allow(calc).to receive(:add).and_return(15)

		expect(calc.add).to eq(15)
		expect(calc.add(3)).to eq(15)
		expect(calc.add(-3,3,2,9)).to eq(15)
		expect(calc.add("anything")).to eq(15)
	end
end