class StringCalculator
	def add(string)
		numbers = string.gsub(/-?\d+/)
		positive = numbers.all? {|num| num&.to_i >= 0 }
		if positive
			sum = numbers.map(&:to_i).reduce(0, :+)
			return sum
		else
			negative_numbers = numbers.map {|num| num if num&.to_i <= 0 }.compact
			raise "negative numbers not allowed #{negative_numbers.map(&:to_s).join(',')}"
		end
	end
end
string = "-1\n2,3"
calculator = StringCalculator.new
begin
	result = calculator.add(string)
	puts result
rescue => e
	puts "Error: #{e.message}"
end


