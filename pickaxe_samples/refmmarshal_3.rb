#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
class TimedDump
  attr_reader :when_dumped
  attr_accessor :other_data

  def marshal_dump
    [ Time.now, @other_data ]
  end
  def marshal_load(marshal_data)
    @when_dumped = marshal_data[0].strftime("%I:%M%p")
    @other_data  = marshal_data[1]
  end
end

    t = TimedDump.new
    t.other_data = "wibble"
    t.when_dumped

    str = Marshal.dump(t)

    newt = Marshal.load(str)
    newt.when_dumped
    newt.other_data
