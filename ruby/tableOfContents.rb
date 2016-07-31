# So here's something for you to do in order to play around more with  center,
# ljust, and rjust: Write a program which will display a Table of Contents so that it looks like this:


str_top = 'Table of Contents'
str_one = 'Chapter 1:  Numbers'
str_two = 'Chapter 2:  Letters'
str_three = 'Chapter 3:  Variables'
page_one = 'page 1'
page_two = 'page 72'
page_three = 'page 118'

lineWidth = 50
puts str_top.center(lineWidth)
puts str_one.ljust(lineWidth/2) + page_one.rjust(lineWidth/2)
puts str_two.ljust(lineWidth/2) + page_two.rjust(lineWidth/2)
puts str_three.ljust(lineWidth/2) + page_three.rjust(lineWidth/2) 