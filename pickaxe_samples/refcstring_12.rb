#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
def escape(line)
  s = line.sub(/\s+$/, '').
    gsub(/\\/, "\\bs\?C-q").
      gsub(/([_\${}&%#])/, '\\\\\1').
      gsub(/\?C-q/, "{}").
      gsub(/\^/, "\\up{}").
      gsub(/~/, "\\sd{}").
      gsub(/\*/, "$*$").
      gsub(/<</, "<{}<").
      gsub(/>>/, ">{}>").
      gsub(/\[\]/, "$[\\,]$").
      gsub(/,,/, ",{},").
      gsub(/`/,  "\\bq{}")
  s
end
        def doit(str)
        a = "hello"
        eval str
        puts "#{escape(str)} & (a $\\rightarrow$ #{escape(a.inspect)})\\\\"
        end
        doit('a[2]       = "u"')  
        doit('a[2, 4]    = "xyz"')
        doit('a[-4, 2]   = "xyz"')
        doit('a[2..4]    = "xyz"')
        doit('a[-4..-2]  = "xyz"')
        doit('a[/[aeiou](.)\1(.)/]    = "xyz"')
        doit('a[/[aeiou](.)\1(.)/, 1] = "xyz"')
        doit('a[/[aeiou](.)\1(.)/, 2] = "xyz"')
        doit('a["l"]     = "xyz"')
        doit('a["ll"]    = "xyz"')
        doit('a[2, 0]    = "xyz"')
