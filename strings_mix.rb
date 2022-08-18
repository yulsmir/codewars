def mix(s1, s2)
  sentence = s1.split('').uniq!.sort

  sentence.each do |letter|
    puts  "#{letter} : #{sentence.scan(/#{letter}/).length}"
  end

end

mix("Are they here", "yes, they are here")
# "2:eeeee/2:yy/=:hh/=:rr"