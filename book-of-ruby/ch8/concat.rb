# The Book of Ruby - http://www.sapphiresteel.com

str1 = "hello"
str2 = "world"
str3 = "goodbye"
puts("before...")
puts( "#{str1} #{str1.object_id}" )
puts( "#{str2} #{str2.object_id}" )
puts( "#{str3} #{str3.object_id}" )
str3 = str2 << str1
puts("after...")
puts( "#{str1} #{str1.object_id}" )
puts( "#{str2} #{str2.object_id}" )
puts( "#{str3} #{str3.object_id}" )
