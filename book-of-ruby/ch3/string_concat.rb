# The Book of Ruby - http://www.sapphiresteel.com

# String concatenation

# << string concatenation method << converts FixNum integers (but not floats) to string
# Valid Fixnums are in the range 0 to 255
s1 = "This " << "is" << " a string " << 10 # try a float such as 10.5 or an int such as 256

# + method concatenates strings but does not convert integers
s2 = "This "  + "is" + " a string "  + 10.to_s # note explicit integer conversion

# a space concatenates strings too
s3 = "This "  "is"  " a string "  + 10.to_s

# a comma delimited list creates an array. The following can be made clearer
# by placing the list inside array delimiting square braces:
# s4 = ["This " , "is" , " not a string!", 10]
x = "This " , "is" , " not a string!", 10

puts("puts(s1):" << s1)
puts("puts(s2):" << s2)
puts("puts(s3):" << s3)
print("print (x):" , x, "\n")
puts("puts(x):", x)
puts("puts x.class is: " << (x.class).to_s )


