def find_it(seq)
  seq.each do |i|
    res = seq.count(i)
      if res % 2 != 0
        return i
      end
    end
end