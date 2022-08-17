def rot13(string)
  string.each_char do |c|
    puts (c.ord + 13).chr
  end
end

rot13('grfg')