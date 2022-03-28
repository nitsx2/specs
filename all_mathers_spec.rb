RSpec.describe "all mathcer" do 
	it "should check all values is odd" do 
		[5,7,9].each do |val|
			expect(val).to be_odd
		end
	
		#rspec way to do it by using------ all matcher

		# expect(data).to all(predicate_method)
		
		expect([5,7,9]).to all(be_odd)

		#more examples

		expect([0,0,0,0]).to all(be_zero)

		hash = {"a" => 2, "b" => 4 }
		expect(hash.values).to all(be_even)

		expect([nil,nil]).to all(be_nil)



		#========================

		expect([4,3,2]).to all(be < 10)

		expect([12,112,22]).to all(be > 10)

		expect([10]).to all(be == 10)

	end
end