puts "Please provide an input"
input = gets.chomp
string_array = []
input.split(" ").each do |i|
    string_array.push(i)
end

hash_array= Hash.new

string_array.inject(hash_array) { |x,y|  x[y.length] ||= []; x[y.length] << y;x }

print hash_array.sort.to_h

