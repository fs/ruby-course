#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
  require 'cgi'
  cgi = CGI.new("html3")  # add HTML generation methods
  cgi.out do
    cgi.html do
      cgi.head { "\n"+cgi.title { "This Is a Test"} } +
      cgi.body do "\n"+
        cgi.form do"\n"+
          cgi.hr +
          cgi.h1 { "A Form: " } + "\n"+
          cgi.textarea("get_text") +"\n"+
          cgi.br +
          cgi.submit
        end
      end
    end
  end
