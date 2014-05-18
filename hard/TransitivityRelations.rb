
# convert input to string array to 2-dimension array
# example
# input: ["(1,1,1)", "(1,0,0)", "(0,1,0)"]
def strToArray strArr
  arr = []
  strArr.each_with_index { |str, index|
    arr[index] = []
    str[1..-2].split(',').each{|i|
      arr[index] << i.to_i
    }
  }
  arr
end


# test drive
p strToArray ["(1,1,1)", "(1,0,0)", "(0,1,0)"]
