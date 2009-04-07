#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
#require 'netmeeting'
#require 'benchmark'
#include Benchmark
#
#bmbm(10) do |test|
#
#  test.report("Dynamic") do
#    nm = WIN32OLE.new('NetMeeting.App.1')
#    10000.times { nm.Version }
#  end
#
#  test.report("Via proxy") do
#    nm = NetMeeting_App_1.new
#    10000.times { nm.Version }
#  end
#end
puts File.readlines("code/timeole.times")
