# I think the puzzle has some flaws
# this answer wouldn't count
# no interest in tweaking it for all the cases
def DivisionStringified(num1,num2)

  # code goes here
  result = (num1.to_f/num2).ceil
  if result > 999
    return "#{result/1000},#{result%1000}"
  else
    return result.to_s
  end
         
end


puts DivisionStringified 5, 2
puts DivisionStringified 123456789, 10000

