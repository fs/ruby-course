#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
        md = /(.)(d)(.)/.match("abcdefabcdef")
        md
        md[1]
        md.begin(1)
        md = /(.)(d)(.)/.match("abcdedcba", 4)
        md
        md.begin(1)

        result = /(...)...(...)/.match("catanddog") do |md|
          md[1] + "&" +  md[2]
        end
        result
