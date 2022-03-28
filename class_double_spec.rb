class Deck
	def self.build
		return "Ace", "Queen"
	end
end


class CardGame
	attr_reader :cards

	def start
		@cards = Deck.build
	end
end


RSpec.describe CardGame do 
	it "should check for class method" do 
		# deck_klass = class_double(Deck, build: ["Ace", "Queen"]) #error unuitialize constant Deck
		# deck_klass = class_double(Deck, build: ["Ace", "Queen"]).as_stubbed_const #as_Stubbed_const will treat Deck constant as a class.
		# deck_klass = class_double("Deck", build: ["Ace", "Queen"]).as_stubbed_const #as_Stubbed_const will treat Deck string as a class.
		deck_klass = class_double(Deck, build: ["Ace", "Queen"]).as_stubbed_const #pass
		expect(deck_klass).to receive(:build)
		subject.start
		expect(subject.cards).to eq(["Ace", "Queen"])
	end
end