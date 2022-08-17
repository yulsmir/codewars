def switcheroo(x)
  tr = {'a' => 'b', 'b' => 'a'}
  x.gsub(/[#{tr.keys}]/, tr)

  #or
  #x.tr('ab', 'ba')
end

puts switcheroo("aaabbbccc")
