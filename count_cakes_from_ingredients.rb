# https://www.codewars.com/kata/525c65e51bf619685c000059/train/ruby

def cakes(recipe, available)
  check_keys = (recipe.keys).intersection(available.keys)
  if recipe.keys == check_keys
    res = []

    check_keys.each do |i|
      available.values_at(i).each do |j|
        recipe.values_at(i).each do |k|
          val = j/k
          res.push(val)
        end
      end
    end

    puts res.min

  else
    puts 0
  end
end


#must return 2
cakes({flour: 500, sugar: 200, eggs: 1}, {flour: 1200, sugar: 1200, eggs: 5, milk: 200})
# must return 0
cakes({apples: 3, flour: 300, sugar: 150, milk: 100, oil: 100}, {sugar: 500, flour: 2000, milk: 2000})

#0
cakes({"eggs"=>4, "flour"=>400},{})

#11
cakes({"cream"=>200, "flour"=>300, "sugar"=>150, "milk"=>100, "oil"=>100},{"sugar"=>1700, "flour"=>20000, "milk"=>20000, "oil"=>30000, "cream"=>5000})
