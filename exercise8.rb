# frozen_string_literal: true

class Array
  def power_of_array(p)
    map { |n| n**p }
  end
end

array1 = ARGV[0]
p = ARGV[1].to_i
array1 = array1.split(/\D+/).map(&:to_i)
array1.delete_at(0)
p array1.power_of_array(p)



