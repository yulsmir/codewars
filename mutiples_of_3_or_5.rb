def solution(num)
  (1..num).select { |i| (i % 3 == 0 || i % 5 == 0) && i < num }.uniq.sum
end

puts solution(10)