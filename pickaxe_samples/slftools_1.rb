#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
 File.delete("/tmp/testfile") rescue 1;
  require 'ftools'

  def install_if_different(source, dest)    
    if File.exist?(dest) && File.compare(source, dest)
      puts "#{dest} is up to date"
    else
      File.copy(source, dest)
      puts "#{source} copied to #{dest}"
    end
  end

  install_if_different('testfile', '/tmp/testfile')
  puts "Second time..."
  install_if_different('testfile', '/tmp/testfile')
  puts "Done"
