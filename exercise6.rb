class Vehicle
  def initialize(name, price)
        @name = name
        @price = price
  end  
end

class Bike < Vehicle
  $increased_price=0
  def initialize(name,price,dealer,increased_percent)
    @name=name
    @price=price
    @dealer=dealer
    @increased_percent=increased_percent
      changed_price(increased_percent)
  end
      
  def changed_price(increased_percent)
    price_amount=Float(@price*(100+increased_percent))
    final_price=Float(price_amount/100)
    @final_price=final_price
  end

  def print_details
    puts "\nBike name: #{@name}"
    puts "Bike price: #{@price}"
    puts "Bike dealer: #{@dealer}"
      
    puts "\nAfter #{@increased_percent} percent hike in price"
    puts "Bike name: #{@name}"
    puts "Bike price: #{@final_price}"
    puts "Bike dealer: #{@dealer}"
  end
end
    
case1=Bike.new("apache" , 58000 ,"The Bike showroom" ,12.5)
puts case1.print_details

#end