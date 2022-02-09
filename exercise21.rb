class Integer
    def factorial
      raise Negativeinput, "Negative number Entered" if self < 0
      f = 1; for i in 1..self; f *= i; end; f
    end
end

class Negativeinput < StandardError
end

puts "please provide an input"
input = gets.chomp.to_i
puts "#{input.factorial}"