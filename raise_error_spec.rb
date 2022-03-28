RSpec.describe "raise error" do
	def name
		x #will raise name_error
	end

	it "should check to NameError" do 
		expect {name}.to raise_error(NameError)
	end

	describe "ZeroDivisionError" do 
		it "should raise ZeroDivisionError" do 
			expect {10/0}.to raise_error(ZeroDivisionError)
		end
	end

end