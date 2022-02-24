# frozen_string_literal: true

def is_prime?(num)
  return if num <= 1

  (2..Math.sqrt(num)).none? { |i| (num % i).zero? }
end
array1 = []
puts 'please provide an input'
n = gets.chomp.to_i
0.step(n, 1) do |n|
  array1.push(n) if is_prime?(n) == true
end
print array1
