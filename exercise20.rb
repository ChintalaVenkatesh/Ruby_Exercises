# frozen_string_literal: true

class Interest
  attr_accessor :principal, :time

  RATE = 0.1
  def initialize(principal, time)
    @principal = principal
    @time = time
  end

  def compound
    @principal * ((1 + RATE)**@time).to_f
  end

  def simple
    @principal + (@principal * @time * RATE).to_f
  end

  def difference
    compound - simple
  end
end
puts 'Enter Principal '
principal = gets.chomp.to_f
puts 'Enter Time'
time = gets.chomp.to_f
final_result = Interest.new(principal, time)
puts "Interest difference:#{(final_result.difference).round(2)}"
