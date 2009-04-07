#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
    ref = WeakRef.new(some_object)

    # .. some time later

    gc_was_disabled = GC.disable
    if ref.weakref_alive?
      # do stuff with 'ref'
    end
    GC.enable unless gc_was_disabled
