def SecondGreatLow(arr)
  # remove duplicate numbers
  # use instance method of Array
  _arr = arr.uniq
  #arr.each{|x|
  # _arr << x unless _arr.include? x
  #}
  # simply sort the arry and 
  return "#{_arr.sort[1]} #{_arr.sort[-2]}"
end
         

puts SecondGreatLow [1, 42, 42, 180]
puts SecondGreatLow [7, 7, 90, 100003]
puts SecondGreatLow [7, 7, 12, 98, 106]
