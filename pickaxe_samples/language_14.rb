#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
class String
  def inspect
    %{"#{to_s}"}
  end
end
  arr = %w( fred wilma barney betty great\ gazoo )
  arr  #!to_s!
  arr = %w( Hey!\tIt is now -#{Time.now}- )
  arr  #!to_s!
  arr = %W( Hey!\tIt is now -#{Time.now}- )
  arr  #!to_s!
