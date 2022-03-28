# RSpec.describe "include matcher" do 
# 	describe "caterpiller" do 
# 		it "should include substring cat" do 
# 			expect(subject).to include("cat")
# 		end

# 		it "should include substring pill" do 
# 			expect(subject).to include("pill")
# 		end

# 		it "should have p r letters" do 
# 			expect(subject).to include("p", "r")
# 		end

# 		it "should have substrings ler and erp" do 
# 			expect(subject).to include("ler", "erp")
# 		end
# 	end

# 	describe [2,3,4] do 
# 		it {is_expected.to include(2,3)}
	

# 		it {is_expected.to include(3,2)} #order doesnot matter

# 	end

# 	describe ({a: 1, b: 2 }) do 
# 		it {is_expected.to include(:a,:b)}


# 		it {is_expected.to include(a: 1)}
	
# 		# note -- will check key or key_value but not only value
# 	end	


# end



RSpec.describe "start_with and end_with matcher" do 
	describe "caterpiller" do 
		it {is_expected.to start_with("cat")}

		it {is_expected.to end_with("iller")} 
	end

	describe [1,2,3] do 
		it {is_expected.to start_with(1,2)}
	
		it {is_expected.to end_with(2,3)}
	end

end