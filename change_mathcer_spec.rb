RSpec.describe "change matcher" do 
	subject {[1,2,3]}
	it "should check whether the value is changed or not" do 
		# expect {subject.push(4)}.to change {subject.length}.from(3).to(4) #problem its tigh coupled with subject. If subject length is changed from line 2..then it will fails.

		expect {subject.push(4)}.to change {subject.length}.by(1)
	end

	it "should check that subject length is decreased 1 after pop" do 
		expect {subject.pop}.to change{subject.length}.by(-1)
	end
end