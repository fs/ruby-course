#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
def l1(line)
puts "\\multicolumn{2}{@{}l@{}}{\\texttt{#{line}}}\\\\"
end
def l3(line, rest = "")
puts "\\texttt{#{line}}&#{rest}\\\\"
end
def l2(line)
puts "& $\\rightarrow$ \\texttt{#{line}}\\\\\\\\"
end

require 'time'
l1("require 'time'")

lines = [
'Time.rfc2822("Thu, 1 Apr 2008 16:32:45 CST")',
'Time.rfc2822("Thu, 1 Apr 2008 16:32:45 -0600")',
'Time.now.rfc2822',
'',
'Time.httpdate("Thu, 01 Apr 2008 16:32:45 GMT")',
'Time.httpdate("Thursday, 01-Apr-04 16:32:45 GMT")',
'Time.httpdate("Thu Apr  1 16:32:45 2008")',
'Time.now.httpdate',
'',
'Time.xmlschema("2008-04-01T16:32:45")',
'Time.xmlschema("2008-04-01T16:32:45.12-06:00")',
'Time.now.xmlschema',
]

lines.each do |line|
  if line.empty?
    puts "\\\\"
  else
    if line.length < 20
      l3(line, "$\\rightarrow$ #{eval(line).to_s}")
    else
      l1(line)
      l2(eval(line).to_s)
    end
  end
end
