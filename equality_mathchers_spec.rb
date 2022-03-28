# RSpec.describe "eq and eql matchers" do 
# 	let(:a) {3}
# 	let(:b) {3.0}

# 	context "eq matcher" do 
# 		it "should not care about data type(exact value)" do
# 			expect(a).to eq(b) #pass
# 		end
# 	end

# 	context "eql matcher" do 
# 		it "will care about data type(exact value)" do 
# 			# expect(a).to eql(b) #fail
# 			expect(a).not_to eql(b) #pass
# 		end
# 	end
# end


RSpec.describe "equal matcher" do 
	let(:a) {[1,2,3]}
	let(:b) {[1,2,3]}
	let(:c) {a}

	#care about only value.Very Loosed .Doesnot care about data type or object
	it "should eq to each other" do 
		expect(a).to eq(b)
	end

	#cares only strict and exact value.Care about data type
	it "should eql to each other" do 
		expect(a).to eql(b)
	end

	# will compare objects not just there values.If comparable refrences has different object store then it will fail
	it "should equal to each other" do 
		# expect(a).to equal(b)#fail
		expect(a).not_to equal(b) #pass
	end

end