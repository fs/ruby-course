#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
      require 'Win32API'

      get_cursor_pos = Win32API.new("user32", "GetCursorPos", ['P'], 'V')

      lpPoint = " " * 8 # store two LONGs
      get_cursor_pos.Call(lpPoint)
      x, y = lpPoint.unpack("LL") # get the actual values

      print "x: ", x, "\n"
      print "y: ", y, "\n"

      ods = Win32API.new("kernel32", "OutputDebugString", ['P'], 'V')
      ods.Call("Hello, World\n")

      GetDesktopWindow = Win32API.new("user32", "GetDesktopWindow", [], 'L')
      GetActiveWindow = Win32API.new("user32", "GetActiveWindow", [], 'L')
      SendMessage = Win32API.new("user32", "SendMessage", ['L'] * 4, 'L')
      SendMessage.Call(GetDesktopWindow.Call, 274, 0xf140, 0)
