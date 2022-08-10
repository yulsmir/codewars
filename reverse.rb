def spin_words(string)
  string.split.map { |i| i.length >=5 ? i.reverse : i }.join(' ')
end


puts spin_words("Hey fellow warriors")