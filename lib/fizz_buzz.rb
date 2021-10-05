def fizz_buzz(n)
 if n % 3 == 0
 'Fizz'
 elsif n % 5 == 0
   'Buzz'
 elsif n % 15 == 0
   'FizzBuzz'
 else
  n.to_s
 end
end

# require 'minitest/autorun'
# class FizzBuzztest < Minitest::Test
#  def test_fizz_buzz
#   assert_equal '1', fizz_buzz(1)
#   assert_equal '2', fizz_buzz(2)
#   assert_equal 'Fizz', fizz_buzz(3)
#  # end
# end

# puts 'input number'
# input = gets.to_i

# puts 'result'
# puts fizz_buzz(input)