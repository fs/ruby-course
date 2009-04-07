#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
      require 'tempfile'
class Tempfile
alias old_path path
def path
old_path.sub(%r{/var/folders/.{30}}, '/var/folders/...')
end
end
      tf = Tempfile.new("afile")      
      tf.path
      tf.puts("Cosi Fan Tutte") #!sh!
      tf.close                  #!sh!
      tf.open                   #!sh!
      tf.gets
      tf.close(true) #!sh!
