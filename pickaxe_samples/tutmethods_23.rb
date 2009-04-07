#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
  $stdin = DATA #$
  $stdout = File.open("/dev/null", "w")
print "(t)imes or (p)lus: "
operator = gets
print "number: "
number = Integer(gets)
  $stdout = STDOUT
  print "(t)imes or (p)lus: #{operator}"
  print "number: #{number}\n"

if operator =~ /^t/
  puts((1..10).collect {|n| n*number }.join(", "))
else
  puts((1..10).collect {|n| n+number }.join(", "))
end
__END__
t
2
