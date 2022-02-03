class String
  def palindrome(variable)
    if variable==' '
      puts "Please provide an input"
    elsif variable.reverse == variable 
      puts " Input string is a palindrome."
    else 
      puts "Input string is not a palindrome."
    end
  end
end
puts " Please provide an input"
line=gets.chomp
Input=String.new
print Input.palindrome(line)

#end