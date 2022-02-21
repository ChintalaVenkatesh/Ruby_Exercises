class String
  def palindrome?
    str=self.downcase
    if str==' '
      puts "Please provide an input"
    elsif str.reverse == str
      puts " Input string is a palindrome."
    else 
      puts "Input string is not a palindrome."
    end
  end
end
puts " Please provide an input"
line=gets.chomp
Input=String.new
print Input.palindrome?
