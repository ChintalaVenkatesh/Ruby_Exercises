array1 = Array.new()
array1=[]
puts"enter array_size"
i=gets.chomp.to_i
while i>0
  puts "Enter next array element"
  num = gets.chomp.to_i
  array1.push(num)
  i = i-1
end

def reverse(array)
 print array.values_at(*((array.size)-1).downto(0))
end
print reverse(array1)

#puts "#{array1.reverse}"