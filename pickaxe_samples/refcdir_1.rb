#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
alias xx puts
def puts(arg)
  xx(arg.sub(%r{^/private}, ''))
end
        Dir.chdir("/var/log")
        puts Dir.pwd

        Dir.chdir("/tmp") do
          puts Dir.pwd

          Dir.chdir("/usr") do
            puts Dir.pwd
          end

          puts Dir.pwd
        end

        puts Dir.pwd
