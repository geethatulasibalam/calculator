require 'string_calculator'

RSpec.describe StringCalculator do
	let(:calculator) { StringCalculator.new }
	describe "#add" do
		context 'when the string contains positive numbers' do
			it "adds numbers in string" do
				calculator = StringCalculator.new
				result = calculator.add("1,2")
				expect(result).to eq(3)
			end
		end

		context 'when string is empty' do
			it "returns 0" do
				expect(calculator.add('')).to eq(0)
			end
		end

		context 'when string contains negative numbers' do
			it "raises an error message containig the negative numbers" do
				expect {calculator.add('-1,2,3')}.to raise_error(RuntimeError, 'negative numbers not allowed -1')
			end
		end
	end
end
