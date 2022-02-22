class Sales_Tax
    BASIC = 0.10
    IMPORTED = 0.05
    BOTH = BASIC+IMPORTED
    array1= {}
    line='y'
    while line=='y'
        puts"Name of product: "
        @name=gets.chomp
        puts "imported?:"
        @if_imported=gets.chomp
        puts "exempted from sales tax?:"
        @if_sales_tax_applicable=gets.chomp
        puts "price:"
        @price=gets.chomp.to_i

        if @if_imported=='yes' && @if_sales_tax_applicable=='yes'
        @price += @price * 0.05
        elsif @if_imported=='yes' && @if_sales_tax_applicable=='no'
        @price += @price * 0.15
        elsif @if_imported=='no' && @if_sales_tax_applicable=='yes'
        @price += @price*0.10
        elsif @if_imported=='no' && @if_sales_tax_applicable=='no'
        @price += @price*0
        end
    
        array1[@name] = @price
        print 'Do you want to add more items to your list(y/n): '
        line = gets.chomp
    end

    p array1
    print 'Total Cost: '
    print array1.inject(0) { |x, y| x+= y[1] }
end

x= Sales_Tax.new
