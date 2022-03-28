RSpec.describe "about not to method" do 
	it "should not same or eqaul" do 
		expect(4).not_to eq(3)
		expect([1,2]).not_to eq([2,1])
		expect({"a" => 1, "b" => 2}).not_to eq({"b" => 1, "a" => 1})
	end
end