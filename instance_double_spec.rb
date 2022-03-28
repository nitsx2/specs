class Person
	def a
		return true
	end
end


RSpec.describe Person do 
	describe "regular double" do 
		it "can implement any number of methods" do 
			person = double(a: true, b: "hello") # it is wrong because person class has not implement b method.So we have to restrict it.Also we have to make our mock instance as same as possible to original.We can achieve it via using instance_double.Which restricts us to define extra unimplemented methods.It also check method arugement count  
			expect(person.a).to eq(true)
			expect(person.b).to eq("hello")
		end
	end

	describe "instance_double" do 
		it "restricts the extra method implementation" do 
			person = instance_double(Person)
			 allow(person).to receive(:a).and_return(true)
			# allow(person).to receive(:b).and_return("hello") #error bacause b method is not implemeted by person class
			 expect(person.a).to eq(true) #pass

			# allow(person).to receive(:a).with(3).and_return(true)
			# expect(person.a(3)).to eq(true) #error because in person class it will take 0 arugemtns

		end
	end


end