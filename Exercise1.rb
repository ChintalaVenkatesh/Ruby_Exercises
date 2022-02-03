def count_letters(s)
    Hash[s.delete(' ').split('').group_by{ |c| c }.map{ |k, v| [k, v.size] }]
end
puts "Enter string"
line=gets
print count_letters(line)

#end
