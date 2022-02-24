# frozen_string_literal: true

require 'time'
Regex = /^(([0-1]?\d)|(2?[0-3]))(:([0-5]\d)){2}$/.freeze
def is_valid?(input)
  Regex =~ input
end

def addition(input_times)
  x = input_times.split(/[\s,.]+/)
  if x.all? { |time| is_valid?(time) }
    t2 = Time.parse(x[0])
    sum = x.map { |time| Time.parse(time) }.inject do |total, time|
      total += time.sec + time.min * 60 + time.hour * 3600
    end
    output(sum, t2)
  else
    puts 'invalid input'
  end
end

def output(sum, t2)
  hours = sum.hour.to_s.length > 1 ? sum.hour : "0#{sum.hour.to_i}"
  minutes = sum.min.to_s.length > 1 ? sum.min : "0#{sum.min.to_i}"
  seconds = sum.sec.to_s.length > 1 ? sum.sec : "0#{sum.sec.to_i}"
  final = "#{hours}:#{minutes}:#{seconds}"
  day = sum.day - t2.day
  if day.positive?
    "#{day} #{day > 1 ? 'days' : 'day'} & #{final}"
  else
    final.to_s
  end
end

puts 'Enter time(s) to be added'
puts addition(gets.chomp)
