def count_letters(s)
    count = Hash.new(0)
    s.split('').each do |i|
      count[i] = count[i] + 1 if i.match?(/[A-Za-z]/)
    end
    puts count
end
puts "Enter string"
line=gets.chomp
print count_letters(line)
