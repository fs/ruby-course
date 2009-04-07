#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
      require 'find'
      Find.find("/etc/passwd", "code/cdjukebox") do |f|
 next if f =~ /\d/
        type = case 
               when File.file?(f)      then "File: "
               when File.directory?(f) then "Dir:  "
               else "?"
               end
        puts "#{type} #{f}"
        Find.prune if f =~ /.svn/
      end
