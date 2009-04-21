# The Book of Ruby - http://www.sapphiresteel.com

num = 11.5
num2 = 11.5


puts( "num.equal?(num2) #{num.equal?(num2)}" )
#      uncomment the following to check the object_id values
# puts( "#{num.object_id}, #{num2.object_id}" )

num = num2
puts( "num.equal?(num2) #{num.equal?(num2)}" )
