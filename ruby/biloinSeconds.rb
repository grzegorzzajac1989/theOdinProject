birty_time = Time.mktime(1989,5,3)
bilion = birty_time + 1000000000
puts bilion

val1 = Time.mktime(1989,5,3)
val2 = Time.mktime(2016,8,2)
puts (val2 - val1) / (60*60*24*365)