class Name
    attr_accessor :firstname, :lastname
  
    def initialize(first_name, last_name)
      @firstname = first_name
      @lastname = last_name
    end
    def check_blank
        raise Blank_input, "Empty input" unless firstname.length>0 && lastname.length>0
    end
    
    def check_capital
        raise Noncapital_input, "Non capital input" unless firstname == firstname.capitalize
    end
    
    def final_output
        "Your name is: #{firstname} #{lastname}"
    end
end
  
  class Blank_input < StandardError
  end
  
  class Noncapital_input < StandardError
  end
  
print 'please provide the firstname: '
firstname = gets.chomp.to_s
print 'please provide the lastname: '
lastname = gets.chomp.to_s
  
line = Name.new(firstname, lastname)
line.check_blank
line.check_capital
print line.final_output
  