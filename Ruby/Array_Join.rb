a = ["polban", "jtk", "pbp", "2021"]
# add % at the begining of the item, add _ at the end of the item, join them
puts "#{a.map{|item| '%' + item + '_'}.join}"