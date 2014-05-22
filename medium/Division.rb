# m is larger than n
def gcd m,n
    while n != 0 do
        tmp = n
        n = m%n
        m = tmp
    end
    m
end


def Division(num1,num2)

  # code goes here
  if num1 >= num2 then
    return gcd(num1, num2)
  else
    return gcd(num2, num1)
  end        
end
