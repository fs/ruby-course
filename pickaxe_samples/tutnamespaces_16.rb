#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
require 'rake/gempackagetask'

spec = Gem::Specification.new do |s| 
  s.name = "anagram"
  s.summary = "Find anagrams of words supplied on the command line"
  s.description = File.read(File.join(File.dirname(__FILE__), 'README'))
  s.requirements = [ 'An installed dictionary (most Unix systems have one)' ]
  s.version = "0.0.1"
  s.author = "Dave Thomas"
  s.email = "dave@pragprog.com"
  s.homepage = "http://pragdave.pragprog.com"
  s.platform = Gem::Platform::RUBY
  s.required_ruby_version = '>=1.9'
  s.files = Dir['**/**']
  s.executables = [ 'anagram' ]
  s.test_files = Dir["test/test*.rb"]
  s.has_rdoc = false
end
 
Rake::GemPackageTask.new(spec).define
