
class Tea

end


class GreenTea < Tea
	def leaf
	end

	def suger
	end

	def milk
	end

	def serve(cup_numbers)
		p "yay we have served #{cup_numbers} of tea"
	end
end




RSpec.describe GreenTea do
	# subject -> instance of the GreenTea class
	it {is_expected.to respond_to(:leaf)}

	it "will respond to suger method" do 
		expect(subject).to respond_to(:suger)
	end

	it "will respond to milk method" do 
		expect(subject).to respond_to(:milk)
	end


	it "will respond_to serve method" do 
		expect(subject).to respond_to(:serve)
	end


	it "will respond_to to serve method  and check arguments" do 
		# with(arguments_count)
			# expect(subject).to respond_to(:serve).with(2).arguments #error 
			expect(subject).to respond_to(:serve).with(1).arguments #success		
	end

end


















