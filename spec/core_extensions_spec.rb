require "spec_helper"

describe Array do
	context "#all_empty?" do
		it "returns true if all elements of the Array are empty" do
			expect(["", "", ""].all_empty?).to eq true
		end
		it "returns false if some of the Array elements are not empty" do
			expect(["", 1, "", Object.new, :a].all_empty?).to eq false
		end
		it "returns true for an empty Array" do
			expect([].all_empty?).to eq true
		end
	end
	context "#all_same?" do
		it "returns true if all elements of the Array are the same" do
			expect(["A", "A", "A"].all_same?).to eq true
		end
		it "returns false if some of the Array elements are not the same" do
			expect(["", "1", "", Object.new, :a].all_same?).to eq false
		end
		it "returns true for an empty Array" do	
			expect([].all_same?).to eq true
		end
	end
	context "#any_empty?" do
		it "returns true if any of the elements of the Array are empty" do
			expect(["A", "A", ""].any_empty?).to eq true
		end
		it "returns false if there are no empty elements in the Array" do
			expect(["A", "A", "A"].any_empty?).to eq false
		end
		it "returns true for an empty Array" do
			expect([].any_empty?).to eq true
		end
	end
end
