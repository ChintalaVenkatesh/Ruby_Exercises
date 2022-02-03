class Array
 def power_of_array(p)
    self.map {|n| n**p}
 end
end

puts"enter power"
p=gets.chomp.to_i
puts 'Please provide an input'
array1 = Array.new()
array1=[]
puts"enter array_size"
i=gets.chomp.to_i
while i>0
  puts "Enter number"
  num = gets.chomp.to_i
  array1.push(num)
  i = i-1
end

p array1.power_of_array(p)




