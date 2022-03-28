RSpec.describe "double spec" do 
	it "only allows defined methods to be invoked" do 
		# stuntman = double("mr. danger", fall_of_ladder: "ouch", lmao: "noob")
		# expect(stuntman.fall_of_ladder).to eq("ouch")
		# expect(stuntman.lmao).to eq("noob")


		# stuntman = double("mr danger")
		# allow(stuntman).to receive(:fall_of_ladder).and_return("ouch")
		# allow(stuntman).to receive(:lmao).and_return("noob")
		# expect(stuntman.fall_of_ladder).to eq("ouch")
		# expect(stuntman.lmao).to eq("noob")


		stuntman = double("mr danger")
		allow(stuntman).to receive_messages(fall_of_ladder: "ouch", lmao: "noob")
		expect(stuntman.fall_of_ladder).to eq("ouch")
		expect(stuntman.lmao).to eq("noob")


	end
end