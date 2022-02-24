# frozen_string_literal: true

inputString = gets.chomp
array1 = []
inputString.split(' ').each do |i|
  array1 << i
end

group_hash = {}
array1.each_with_object(group_hash) do |y, x|
  x[y.length] ||= []
  x[y.length] << y
end

result_hash = {}

group_hash.each do |key, value|
  if key.odd?
    result_hash['odd'] ||= []
    result_hash['odd'].push(value)
  else
    result_hash['even'] ||= []
    result_hash['even'].push(value)
  end
end

puts result_hash
