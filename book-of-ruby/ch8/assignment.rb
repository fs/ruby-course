# The Book of Ruby - http://www.sapphiresteel.com

num = 10
puts( "num.object_id=#{num.object_id}" )
num = num
puts( "num.object_id=#{num.object_id}" )
num = 10
puts( "num.object_id=#{num.object_id}" )
num += 1
puts( "num.object_id=#{num.object_id}" )
num = (((num + 1 - 1) * 100) / 100)
puts( "num.object_id=#{num.object_id}" )
