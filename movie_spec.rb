class Actor
	attr_accessor :name

	def initialize(name)
		@name = name
	end

	def ready?
		sleep(3)
		true
	end

	def act
		"i love you baby"
	end

	def fall_from_ladder
		"call my agent no way"
	end

	def light_on_fire
		true
	end

end


class Movie
	attr_reader :actor
	def initialize(actor)
		@actor = actor
	end

	def start_shooting
		if actor.ready?
			 actor.act 
			 actor.fall_from_ladder
			 actor.light_on_fire
		end
	end

	def start_shooting_2
		if actor.ready? # this method will occur atleast one time
			actor.act 
			actor.act #call exactly 2 times
			actor.fall_from_ladder #this method can be called 1..5 times in this method but not more than 5 times 
			actor.light_on_fire
		end
	end

end

RSpec.describe Movie do 
	let(:stuntman) {double("mr danger", ready?: true, act: "omg turu luub", fall_from_ladder: "lets do that", light_on_fire: false)}

	subject {described_class.new(stuntman)}


	describe "start_shooting method" do 
		it "should expect an actor to do 3 actions" do 
			expect(stuntman).to receive(:ready?)
			expect(stuntman).to receive(:act)
			expect(stuntman).to receive(:fall_from_ladder)
			expect(stuntman).to receive(:light_on_fire)
			subject.start_shooting
		end


	end
	
	describe "start_shooting_2" do 
		it "should expect an actor to do 3 actions multiple times" do 
			expect(stuntman).to receive(:ready?).at_least(1).times
			expect(stuntman).to receive(:act).exactly(2).times
			expect(stuntman).to receive(:fall_from_ladder).at_most(5).times
			expect(stuntman).to receive(:light_on_fire).once
			subject.start_shooting_2
		end
	end

end