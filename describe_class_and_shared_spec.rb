class King
	attr_accessor :name

	def initialize(name)
		@name = name
	end
end

RSpec.shared_examples "length of entites" do
	it "should have length 3" do 
		expect(subject.length).to eq(3)
	end
end


RSpec.describe King do
	subject do
	  described_class.new("Rag")
	end
	
	it "should have name" do
		subject.name = "Art"
		expect(subject.name).to eq("Art")
	end
end





RSpec.describe Array do 
	subject {[1,2,3]}
	include_examples "length of entites"
end

RSpec.describe Hash do
	subject {{"a" => 1, "b" => 2, "c" => 3}}
	include_examples "length of entites"
end