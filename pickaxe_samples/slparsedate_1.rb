#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
      require 'parsedate'
      def show(str, g=false)
        arr = ParseDate.parsedate(str,g).collect {|a| a.nil? ? '--' : a}
        print "#{str} & #{g ? 'T' : 'F'} & ", arr.join(" & "), "\\\\\n"
      end
      show '1999-09-05 23:55:21+0900'
      show '1983-12-25'
      show '1965-11-10 T13:45'
      show '10/9/75 1:30pm'
      show '10/9/75 1:30pm', true
      show 'Wed Feb 2 17:15:49 CST 2000'
      show 'Tue, 02-Mar-99 11:20:32 GMT'
      show 'Tue, 02-Mar-99 11:20:32 GMT', true
      show '12-January-1990, 04:00 WET'
      show '4/3/99'
      show '4/3/99', true
      show '10th February, 1976'
      show 'March 1st, 84', true
      show 'Friday'
