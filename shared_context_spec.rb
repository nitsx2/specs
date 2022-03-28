RSpec.shared_context "provide some common data to other specs" do 

	before do 
		@foods = []
	end

	let(:hash_tab) {{"a" => 1}}



end


RSpec.descirbe "first common spec" do
	include_context "provide some common data to other specs"
	it "should use food array" do
		@foods << "a"
		expect(@foods.size).to eq(1)
	end

	it "should use the common food  blank array" do 
		expect(@foods.size).to eq(0)
	end
end


RSpec.describe "second common spec" do
	include_context "provide some common data to other specs"
	
	it "should use comman hash" do 
		expect(hash_tab.length).to eq(0)
	end
end 