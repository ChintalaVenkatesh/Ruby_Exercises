# frozen_string_literal: true

def fact(n)
  x = 1
  (1..n).each do |i|
    x *= i
  end
  x
end

def pascal(n)
  (0..n).each do |k|
    yield(fact(n) / (fact(k) * fact(n - k)))
  end
end
n = gets.chomp.to_i
m = n - 1
(0..m).each do |i|
  pascal(i) { |x| print "#{x} " }
  print "\n"
end
