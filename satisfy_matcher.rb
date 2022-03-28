RSpec.describe "satisfy matcher" do 
	 subject {"nitin"}
	# subject {"nitins"}
	it "is a palindrome" do 
		expect(subject).to satisfy {|value| value == value.reverse}
	end

	it "can accept custom error message" do 
		expect(subject).to satisfy("to be a palindrome") do |value|
			value == value.reverse
		end
	end

	describe "same chars string" do 
		subject {"cccccccc"}
		it "can accept custom error" do 
			expect(subject).to satisfy("all chars to be c") do |value|
				value.length.times do |itr|
					if value[itr] == "c"
						next 
					else
						false
						break
					end
				end
			end 
		end
	end


end