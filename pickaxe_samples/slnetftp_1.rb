#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
      require 'net/ftp'
      
      ftp = Net::FTP.new('ftp.ruby-lang.org')
      ftp.login
      ftp.chdir('pub/ruby/doc')
      puts ftp.list('*txt')
      ftp.getbinaryfile('MD5SUM.txt', 'md5sum.txt', 1024)
      ftp.close
      puts File.read('md5sum.txt')
