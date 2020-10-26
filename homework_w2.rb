require 'json'
file=File.read('grades.json')
data_hash=JSON.parse(file) 

def hash_values(hash)
    hash.each do |element|
       element.values[0]    
    end
end

arr=hash_values(data_hash)

def average_grade(array)
    i=0
    total=0
    while i<array.length
        total+=array[i].values[0]
        i+=1
    end
     total/array.length
end

mean=average_grade(arr)
puts "Average grade is #{mean}"

data_hash.each do |element|
  if mean > element.values[0]
    print " #{element.values[1]} ,"   
 end
end

print " are failed"

puts "       "
puts "       "

data_hash.each do |element|
    if mean <= element.values[0]
      print " #{element.values[1]} , "  
    
   end
  
  end
  print " are passed"
  




