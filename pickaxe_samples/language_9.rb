#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
[['?a', "ASCII character" ],
['?\n', "newline (0x0a)" ],
['?\C-a', "control a = 0x65 \\& 0x9f = 0x01" ],
['?\M-a', "meta sets bit 7" ],
['?\M-\C-a', "meta and control a" ],
['?\C-?', "delete character" ]].each do |code, desc|
  str = eval(code)
  print code.gsub(/\\/, '\bs{}')
  print "&"
  print "\\# => "
  print str.inspect.gsub(/\\/, '\bs{}')
  print "&"
  puts "(#{desc})\\\\"
end
