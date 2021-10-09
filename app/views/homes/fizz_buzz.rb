require 'minitest/autorun'

def fizz_buzz(n)
  if n % 15 == 0
    'fizzbuzz'
  elsif n % 3 == 0
    'fizz'
  elsif n % 5 == 0
    'buzz'
  else
    puts n
  end
end

class FizzBuzzTest < Minitest::Test
  def test_fizz_buzz
    assert_equal 'fizz', fizz_buzz(3)
    assert_equal 'buzz', fizz_buzz(5)
    assert_equal 'fizzbuzz', fizz_buzz(15)
  end
end