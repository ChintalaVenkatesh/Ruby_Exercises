class String
    def to_s
     string=self.swapcase
     return string
    end
end
puts "Please provide an input"
line=gets.chomp
print line.to_s
