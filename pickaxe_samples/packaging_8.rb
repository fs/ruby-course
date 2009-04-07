#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
def require_relative(relative_feature)
  c = caller.first
  fail "Can't parse #{c}" unless c.rindex(/:\d+(:in `.*')?$/)
  file = $`
  if /\A\((.*)\)/ =~ file # eval, etc.
    raise LoadError, "require_relative is called in #{$1}"
  end
  absolute = File.expand_path(relative_feature, File.dirname(file))
  require absolute
end
