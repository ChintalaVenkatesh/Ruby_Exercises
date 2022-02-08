print "Please provide an input "
input = gets.chomp
puts" please provide word/letter to be highlighted"
highlight_word = gets.chomp
modified = input.split(' ')
puts "Total occurences found = #{modified.count(highlight_word)}"
input=input.gsub(highlight_word,"(#{highlight_word})")
puts input
