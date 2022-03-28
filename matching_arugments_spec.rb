# a = [1,2,3]
# a.first = 1
# a.first(1) = [1]
# a.first(2) = [1,2]
# a.first(3) = [1,2,3]
# a.first(100) = [1,2,3]


RSpec.describe "Matching Arugument(a single ruby method can return values with diff data type )" do 
	it "should check arugemt and return values on the basis of it" do 
		a = double #[1,2,3]
	
		allow(a).to receive(:first).with(no_args).and_return(1)
		allow(a).to receive(:first).with(1).and_return([1])
		allow(a).to receive(:first).with(2).and_return([1,2])
		allow(a).to receive(:first).with(be >= 3).and_return([1,2,3])
	
		expect(a.first).to eq(1)
		expect(a.first(1)).to eq([1])
		expect(a.first(2)).to eq([1,2])
		expect(a.first(3)).to eq([1,2,3])
		expect(a.first(100)).to eq([1,2,3])
	end


end