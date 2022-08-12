def pig_it text
  text.split.each do |i|
    first = i.slice!(0)
    i.concat(first)
    if i.start_with?('!') || i.start_with?('?')
      i
    else
      i.concat('ay')
    end
  end.join(' ').delete_suffix('ay')
end

puts pig_it('Pig latin is cool ?') # igPay atinlay siay oolcay
puts pig_it('Hello world !')     # elloHay orldway !
