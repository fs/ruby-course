# The Book of Ruby - http://www.sapphiresteel.com

puts( /.*\\/.match('C:\mydirectory\myfolder\myfile.txt') )
puts( /.*?\\/.match('C:\mydirectory\myfolder\myfile.txt') )
puts( /.+\\/.match('C:\mydirectory\myfolder\myfile.txt') )
puts( /.+?\\/.match('C:\mydirectory\myfolder\myfile.txt') )