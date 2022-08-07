def pangram?(string)
  alphabet_arr = ('a'..'z').to_a

  alphabet_arr.each do |i|
    unless false
      @result = string.downcase.include?(i)
    end
  end
  return @result
end


pangram?("tr")
