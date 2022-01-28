puts " Enter string"
line=gets
line = line.gsub(/a|e|i|o|u/, '*')
puts" The output is #{line}"