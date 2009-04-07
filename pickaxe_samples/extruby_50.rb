#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
    % export CONFIGURE_ARGS="ruby=ruby18 --enable-extras"
    % ruby -rmkmf -rpp -e 'pp $configure_args'  -- --with-cflags=-O3
    {"--topsrcdir"=>".",
     "--topdir"=>"/Users/dave/Work/rubybook/tmp",
     "--enable-extras"=>true,
     "--with-cflags"=>"-O3",
     "--ruby"=>"ruby18"}
