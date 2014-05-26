def isEven num
    return num%2 == 0
end
def DashInsert num
    ret = ""
    oddflag = false
    num.to_s.chars{|c|
        unless isEven(c.to_i)
            if oddflag then
                ret << "-#{c}"
            else
                ret << c
            end
            oddflag = true
            next
        end
        oddflag = false
        ret << c
    }
    ret
end


puts DashInsert 99946
puts DashInsert 56730
