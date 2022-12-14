class Student
  attr_reader :name, :fives, :tens, :twenties

  def initialize(name, fives, tens, twenties)
    @name = name
    @fives = fives
    @tens = tens
    @twenties = twenties
  end
end

def count_money(student)
  student.fives * 5 + student.tens * 10 + student.twenties * 20
end

def most_money(students)
  res = []
  students.each do |student|
    hash = {:name => student.name, :money => count_money(student) }
    res.push(hash)
  end

  count_max = []
  res.each do |value|
    count_max.push(value[:money])
  end
  max_value = count_max.max

  res_name = ''
  result_names = []
  res.each do |i|
    i.each_pair do |key, value|
      if value == max_value
        res_name = i.fetch(:name)
        result_names.push(res_name)
      end
      if result_names.length > 1
        res_name = 'all'
      end
    end
  end
  res_name
end

phil = Student.new("Phil", 2, 2, 1)
cam = Student.new("Cameron", 2, 2, 0)
geoff = Student.new("Geoff", 0, 3, 0)

puts most_money([cam, geoff, phil]) #"Phil"
puts most_money([cam, geoff]) # "all"
puts most_money([geoff]) # "Geoff"




# class Student
#   def money
#     5 * fives + 10 * tens + 20 * twenties
#   end
# end

# def most_money(students)
#   max = students.max_by &:money
#   students.count { |s| s.money == max.money } > 1 ? "all" : max.name
# end