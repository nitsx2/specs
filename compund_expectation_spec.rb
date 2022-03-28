# RSpec.describe "caterpiller" do 

# 	it "should start with c and end wth r" do 
# 		expect(subject).to start_with("c").and end_with("r")
# 	end	


# 	it "should start with cat and end with er and must contain i character" do 
# 		expect(subject).to start_with("c").and end_with("r").and include("i")
# 	end

# end


RSpec.describe [1,2,3] do 
	it "selected value from array should equal to 1 , 2 or 3" do 
		expect(subject.sample).to eq(1).or eq(2).or eq(3)
	end
end