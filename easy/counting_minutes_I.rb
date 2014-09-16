def convert2Minutes(time)
  if time =~ /(\d+):(\d+)/ then
    hours = $1.to_i
    minutes = $2.to_i
    hours += 12 if time =~ /pm$/
  end
  return hours * 60 + minutes

end

def CountingMinutesI(str)
  if str =~ /(.*)-(.*)/ then
    time1 = $1
    time2 = $2
  end

  minutes1 = convert2Minutes(time1)
  minutes2 = convert2Minutes(time2)

  ret = minutes2 - minutes1
  ret += 24 * 60 if ret < 0
  return ret

end

# test
puts CountingMinutesI("12:30pm-12:00am")
puts CountingMinutesI("1:23am-1:08am")
