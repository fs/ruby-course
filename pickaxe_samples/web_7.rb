#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
<html>
  <head><title>Test Form</title></head>
  <body>
    I like Ruby because:

    <form action="cgi-bin/survey.rb">
      <input type="checkbox" name="reason" value="flexible" /> 
         It's flexible<br />
      <input type="checkbox" name="reason" value="transparent" />
         It's transparent<br />
      <input type="checkbox" name="reason" value="perlish" />
         It's like Perl<br />
      <input type="checkbox" name="reason" value="fun" />
         It's fun

      <p>
        Your name: <input type="text" name="name">
      </p>

      <input type="submit"/>

    </form>

  </body>
</html>
