def MeanMode(arr)

  sum = 0
  max = 0 # store the max a number occurs
  cnt = 0
  mode = 0

  arr.each{|x| 
    sum += x
    cnt = arr.count x
    if cnt > max
      mode = x
      max  = cnt
    end
  }
  # cal mean
  mean = sum/arr.length

  puts "mean: #{mean}; mode: #{mode}"
  
  if mean == mode 
    return 1
  else
    return 0
  end
         
end


# test cases
puts MeanMode [1, 2, 3]
puts MeanMode [4, 4, 4, 6, 2]
