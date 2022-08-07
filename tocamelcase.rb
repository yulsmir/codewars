def to_camel_case(str)
  result = []

  if str.include?('_')
    result = str.split('_')
  elsif str.include?('-')
    result = str.split('-')
  end

  result.push(check_first_letter(result.first))
  result.each do |i|
    i.capitalize
  end
end

def check_first_letter(string)
  if string.chars.first == string.chars.first.downcase
    string.chars.first.downcase
  else
    string.chars.first.capitalize
  end
end

test_1 = "the-downcase-warrior" #gets converted to "theStealthWarrior"
# test_2 = "The_Stealth_Warrior" #gets converted to "TheStealthWarrior"

puts to_camel_case(test_1)
# to_camel_case(test_2)
