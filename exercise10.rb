
array1 = Array.new()
array1=[]
puts"enter array_size"
i=gets.chomp.to_i
while i>0
  puts "Enter Array_Element #{i}"
  element = gets.chomp
  array1.push(element)
  i = i-1
end

group_hash=Hash.new
array1.inject(group_hash) { |x,y| x[y.length] ||=[]; x[y.length]<<y; x }

result_hash= Hash.new

group_hash.each do |key, value|
    if key%2!= 0
        result_hash['odd'] ||= []
        result_hash['odd'].push(value)
    else
        result_hash['even'] ||=[]
        result_hash['even'].push(value)
    end
end

puts result_hash