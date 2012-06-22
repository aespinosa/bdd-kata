require 'test/unit'
require 'mocha'

$: << File.expand_path('../../lib', __FILE__)
require 'mastermind'

class Test::Unit::TestCase
  include Mastermind
end
