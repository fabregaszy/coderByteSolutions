#!/Users/zhangyan/.rvm/rubies/ruby-2.0.0-p0/bin/ruby
#
#

def SumOf arr
  sum = arr.inject {|sum, x| sum + x}
end


def ArrayAddition(arr)
  
  max = arr.sort[-1]
  # code goes here
  
  all_possible_arrs = []
  for i in 2..arr.length # case of 1 element wouldn't count
    all_possible_arrs.concat arr.combination(i).to_a
  end
  return false if all_possible_arrs.select{|x| (SumOf x) == max} == []
  true 
end



# Test
puts ArrayAddition [5, 7, 16, 1, 2]
puts ArrayAddition [3, 5, -1, 8, 12]
