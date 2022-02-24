

class Integer
  def factorial
    raise Negativeinput, 'Negative number Entered' if negative?

    f = 1
    (1..self).each do |i|
      f *= i
    end
    f
  end
end

class Negativeinput < StandardError
end

puts 'please provide an input'
input = gets.chomp.to_i
puts input.factorial.to_s
