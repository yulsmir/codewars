# return an array
def fizzbuzz(n)
  nums = (1..n).to_a
  nums.map do |num|
    if num % 15 == 0
      'FizzBuzz'
    elsif num % 5 == 0
      'Buzz'
    elsif num % 3 == 0
      'Fizz'
    else
      num
    end
  end
end
