# The Book of Ruby - http://www.sapphiresteel.com

# puts({|i| puts(i)}.class) #<= block has no class. This is an error!
puts({1=>2}.class) #<= Hash
puts({}.class) #<= Hash
puts( "But what is this...?" )
puts{}.class #<= ???
print{}.class #<= nil
puts
print({}.class) #<= Hash