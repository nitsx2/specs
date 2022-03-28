class WweWrestler
	attr_accessor :name, :finishing_move

	def initialize(name, finishing_move)
		@name = name
		@finishing_move = finishing_move
	end

end

RSpec.describe WweWrestler do 
	describe described_class.new("stone cold", "stunner") do 
		it {is_expected.to have_attributes(name: "stone cold", finishing_move: "stunner")}
	
		it {is_expected.to have_attributes(name: "stone cold")}
	end
end 