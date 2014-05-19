
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

def TransitivityRelations strArr
  transitive = true
  connect_needed = ""
  arr = strToArray strArr
  # it's a n * n matrix
  n = arr.length
  for i in 0..n-1 do
    for j in 0..n-1 do
      if arr[i][j] == 1 then
        for k in 0..n-1 do
          if arr[j][k] == 1 then
            if arr[i][k] == 0 then
              transitive = false
              connect_needed << "(#{i},#{k})-" if i != k
              arr[i][k] = 1
            end
          end
        end
      end
    end
  end
  if transitive then
    "transitive"
  else
    connect_needed[0..-2] # drop the last '-'
  end
end


# test drive
p TransitivityRelations ["(1,1,1)", "(1,0,0)", "(0,1,0)"]
p TransitivityRelations ["(0,1,0)", "(1,0,1)", "(0,1,0)"]
