#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
    include ObjectSpace

    a, b, c = "A", "B", "C"
    puts "a's id is #{a.object_id}"
    puts "b's id is #{b.object_id}"
    puts "c's id is #{c.object_id}"

    define_finalizer(a, lambda {|id| puts "Finalizer one on #{id}" })
    define_finalizer(b, lambda {|id| puts "Finalizer two on #{id}" })
    define_finalizer(c, lambda {|id| puts "Finalizer three on #{id}" })
