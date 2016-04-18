require 'pry'

def power(a,b)
	result = a
	(b-1).times do
		result = result * a
	end
	puts result
end

puts ">> power(3,4)"
power(3,4)


def reverse(string)
	string.reverse!
	puts string
end

puts ">> reverse You are not going anywhere"
reverse("You are not going anywhere")


def factorial(number)
	return 1 if (0..1).include?(number)
	number * factorial(number - 1)
end

puts ">> puts factorial(5)"
puts factorial(5)


def time_conversion(number)
	hours = number / 60
	minutes = number - (hours * 60)
	puts hours.to_s + ":" + minutes.to_s
end

puts ">> time_conversion(500)"
time_conversion(500)


def count_vowels(string)
	number = string.scan(/[aeoui]/).count
	puts number
end

puts ">> count_vowels of hello"
count_vowels("hello")


def uniques(array)
	result = []
	array.each do |element|
		unless result.include?(element)
			result << element
		end
	end
	puts result
end

puts ">> uniques 1,5,frog,2,1,3,frog"
uniques([1,5,"frog",2,1,3,"frog"])


def is_prime?(number)
	if number == 0 || number == 1
		return false
	end

	i = 2
	limit = number / i
	while i < limit
		if number % i == 0
			return false
		end
		i += 1
		limit = number / i
	end
	return true
end

puts ">> is_prime?(7)"
puts is_prime?(7)
puts ">> is_prime?(14)"
puts is_prime?(14)


def palindrome?(word)
	if word == word.reverse
		return true
	else
		return false
	end
end

puts ">> palindrome?(radar)"
puts palindrome?("radar")
puts ">> palindrome?(bear)"
puts palindrome?("bear")


def capitalize_words(string)
	puts string.split.map(&:capitalize).join(' ')
end

puts ">> capitalize_words how is the capital today?"
capitalize_words("how is the capital today?")



def two_sum(numbers_array)
	[].tap do |result|
		numbers_array.each_with_index do |n,i|
			numbers_array.each_with_index do |m,j|
				if(n+m==0)
					until result.length > 1 do
						result << i << j
					end
				end
			end
		end
		return result
	end
end

puts ">> two_sum([2, -5, 10, 5, 4, -10, 0])"
puts two_sum([2, -5, 10, 5, 4, -10, 0])


def greatest_common_factor(num1, num2)
	factors_array = []
	factors_array << num1.gcd(num2)
	puts factors_array.max
end

puts ">> greatest_common_factor(12, 16)"
greatest_common_factor(12, 16)
