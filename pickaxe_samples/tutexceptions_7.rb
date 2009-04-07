#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
  @esmtp = true
  
  begin
    # First try an extended login. If it fails because the
    # server doesn't support it, fall back to a normal login
    
    if @esmtp then
      @command.ehlo(helodom)
    else
      @command.helo(helodom)
    end
    
  rescue ProtocolError
    if @esmtp then
      @esmtp = false
      retry
    else
      raise
    end
  end
