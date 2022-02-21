class Vehicle
  def initialize(name, price)
        @name = name
        @price = price
  end
  def to_s
    puts "\nBike name: #{@name}"
    puts "Bike price: #{@price}"
    puts "Bike dealer: #{@dealer}"
      
    puts "\nAfter #{@increased_percent} percent hike in price"
    puts "Bike name: #{@name}"
    puts "Bike price: #{@final_price}"
    puts "Bike dealer: #{@dealer}"
    exit
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
end

if ARGV.length<1
  puts "Please provide an input"
  exit
else
  name=ARGV[0]
  price=ARGV[1].to_i
  dealer=ARGV[2]
  increased_percent=ARGV[3].to_i
  test=Bike.new(name,price,dealer,increased_percent)
  puts test
end
