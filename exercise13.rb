def factorial(n)
    total = 1
    (1..n).each do |n|
      total *= n   
    end
    total
  end

  puts " please provide an input"
  input=gets.chomp.to_i
  puts factorial(input)