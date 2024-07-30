require 'string_calculator'

RSpec.describe StringCalculator do
	let(:calculator) { StringCalculator.new }
	describe "#add" do
		context 'when the string contains positive numbers' do
			it "adds numbers in string" do
				expect(calculator.add('1,2,3')).to eq(6)
				expect(calculator.add('10\n20,30')).to eq(60)
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
				expect {calculator.add('1,-2,3,-4')}.to raise_error(RuntimeError, 'negative numbers not allowed -2,-4')
			end
		end

		context 'when string contains all zeros' do
			it "returns 0" do
				expect(calculator.add('0,0,0')).to eq(0)
			end
		end

		context 'when string contains mix of positive and negative numbers' do
			it "raises an error message with all negative numbers" do
				expect { calculator.add('1,2,-3,4,-5')}.to raise_error(RuntimeError, 'negative numbers not allowed -3,-5')
			end
		end
	end
end
