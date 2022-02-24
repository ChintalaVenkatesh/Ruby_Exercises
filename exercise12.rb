# frozen_string_literal: true

count1 = 0
count2 = 0
count3 = 0
count4 = 0

puts 'Please provide an input'
line = gets.chomp
n = line.length

(0..n - 1).each do |i|
  case line[i]
  when /[a-z]/
    count1 += 1
  when /[A-Z]/
    count2 += 1
  when line[i].to_i.to_s
    count3 += 1
  else
    count4 += 1
  end
end
puts "Lowercase characters = #{count1}
Uppercase characters = #{count2}
Numeric characters = #{count3}
Special characters =#{count4}"
