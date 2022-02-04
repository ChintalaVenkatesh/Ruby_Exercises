def reverse(input)
    input.split.reverse.join(" ")
end

puts " please provide an input"
input=gets.chomp
print reverse(input)

