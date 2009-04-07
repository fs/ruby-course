#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
         h1 = { "a" => 1, "c" => 2 } 
         h2 = { 7 => 35, "c" => 2, "a" => 1 }
         h3 = { "a" => 1, "c" => 2, 7 => 35 }
         h4 = { "a" => 1, "d" => 2, "f" => 35 }
         h1 == h2
         h2 == h3
         h3 == h4
