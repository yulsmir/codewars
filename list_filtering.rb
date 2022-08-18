def filter_list(l)
  l.select! { |element| element.class == Integer }
  # return a new list with the strings filtered out
end

puts filter_list([1,2,'a','b'])              #[1,2]
filter_list([1,'a','b',0,15])           #[1,0,15]
filter_list([1,2,'aasf','1','123',123]) #[1,2,123])