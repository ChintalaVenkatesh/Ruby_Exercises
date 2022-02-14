#incomplete
class Sales_tax
    attr_accessor :name , :if_imported , :sales_tax_applicable , :price
    BASIC = 0.10
    IMPORTED = 0.05
    BOTH = BASIC+IMPORTED
    array1=[]
    array2=[]

    def input_items
        puts "Do you want to add more items to your list(y/n):"
        line=gets.chomp
        array1=[]
        if line=="y"
            puts"Name of product: "
            @name=gets.chomp
            puts "imported?:"
            @if_imported=gets.chomp
            puts "exempted from sales tax?:"
            @sales_tax_applicable=gets.chomp
            puts "price:"
            @price=gets.chomp
            array1.push(name)
        else
            exit
        end
        puts "#{array1[0]}"
    end

    def caluculate
        array2=[]
        if @if_imported=="yes" && @if_sales_tax_applicable=="yes"
            final_price= price+(price*BOTH)
            array2.push(final_price)
        elsif @if_imported=="yes" && @if_sales_tax_applicable=="no"
            final_price= price+(price*IMPORTED)
            array2.push(final_price)
        elsif @if_imported=="no" && @if_sales_tax_applicable=="yes"
            final_price=(price+price*BASIC)
            array2.push(final_price)
        elsif @if_imported=="no" && @if_sales_tax_applicable=="no"
            final_price=price
            array2.push(final_price)
        end
        puts "#{array2[0]}"

    end

    def display_items
        puts " #{array1[0]} and : #{array2[0]} "
    end
end

x=Sales_tax.new
x.input_items
x.caluculate
