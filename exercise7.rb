# frozen_string_literal: true

class String
  def to_s
    swapcase
  end
end
puts 'Please provide an input'
line = gets.chomp
print line.to_s
