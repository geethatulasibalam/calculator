require 'string_calculator'

RSpec.describe StringCalculator do 
	describe "#add" do
		it "adds numbers in string" do
			calculator = StringCalculator.new
			result = calculator.add("1,2")
			expect(result).to eq(3)
		end
	end
end
