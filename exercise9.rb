# frozen_string_literal: true

input = gets.chomp
string_array = []
input.split(' ').each do |i|
  string_array.push(i)
end
hash_array = {}
string_array.each_with_object(hash_array) do |x, y|
  y[x.length] ||= []
  y[x.length] << x
end

print hash_array.sort.to_h
