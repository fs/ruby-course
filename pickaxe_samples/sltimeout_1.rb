#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
      require 'timeout'

      for snooze in 1..2
        puts "About to sleep for #{snooze}"
        begin
          Timeout::timeout(1.5) do |timeout_length|
            puts "Timeout period is #{timeout_length}"
            sleep(snooze)
            puts "That was refreshing"
          end
        rescue Timeout::Error
          puts "Woken up early!!"
        end
      end
