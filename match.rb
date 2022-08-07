def well(x)
  @counter = 0

  x.each do |i|
    if i.include?('good') == true
      @counter += 1
    end
  end

  if @counter == 1 || @counter == 2
    return 'Publish!'
  elsif @counter > 2
    return 'Fail!'
  else
    return 'I smell a series!'
  end
  # return ''
end

puts well(['bad', 'bad', 'bad']) # series

puts well(['good', 'bad', 'bad', 'bad', 'bad']) #publish
puts well(['bad', 'bad', 'bad', 'bad', 'good']) #publish
puts well(['bad', 'bad', 'good', 'good', 'good']) # fail
puts well(['bad', 'bad', 'good', 'good', 'good', 'good', 'good']) # fail
