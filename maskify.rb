def maskify(cc)
  # res = cc.split('')

  # if res.length > 4
  #   res.shift(res.length - 4).each { |i| i.replace('#')}.join + res.last(4).each { |i| i }.join
  # else
  #   cc
  # end

  cc.chars.each_with_index.map{|x,i| i < cc.length - 4 ? '#' : x}.join


end

puts maskify("4556364607935616")
puts maskify("45566")

puts maskify('1')
