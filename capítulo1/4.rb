localvar = "hello"
$globalvar = "goodbye"
puts "localvar global: #{localvar}"

def amethod
  localvar = 10

  puts "localvar de amethod #{localvar}"
  puts "globalvar a de amethod #{$globalvar}"
end

def anotherMethod
  localvar = 500
  $globalvar = "bonjour"

  puts "localvar de anotherMethod #{localvar}"
  puts "globalvar de anotherMethod #{$globalvar}"
end


amethod
anotherMethod
