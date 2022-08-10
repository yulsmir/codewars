def create_phone_number(numbers)
  "(#{numbers.shift(3).join}) #{(numbers.shift(3).join)}-#{numbers.shift(4).join}"
end

phone = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0]
puts create_phone_number(phone)