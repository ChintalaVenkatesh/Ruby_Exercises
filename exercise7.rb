class User
    def initialize(name)
     @name = name
    end
  
    def to_s
     "User: #{@name.swapcase}"
    end
  end
puts "Please provide an input"
line=gets.chomp
puts "#{User.new(line)}"  

#end