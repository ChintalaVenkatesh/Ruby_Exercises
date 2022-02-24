
inputString = gets.chomp
array1 = []
inputString.split(' ').each do |i|
  array1 << i
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
