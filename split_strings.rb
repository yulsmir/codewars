def solution(str)
  arr = str.chars
  res = []
  koef = 0
  if arr.length % 2 != 0
    koef = (arr.length/2).round + 1
  else
    koef = arr.length/2
  end

  koef.times do |i|
    res.push(arr.shift(2).join)
    if res.last.length == 1
      res.last.concat('_')
    end
  end
  res
end


# def solution(str)
#   str.chars.each_slice(2).map { |d| d.length == 2 ? d.join : d.join+'_' }
# end

solution('abcdefg')
