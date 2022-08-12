def moveZeros(arr)
  new = arr.select { |num| num != 0 }
  new.concat(arr.difference(new))
end

puts moveZeros([1,2,0,1,0,1,0,3,0,1])