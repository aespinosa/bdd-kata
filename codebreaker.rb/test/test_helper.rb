require 'test/unit'
require 'turn/autorun'
require 'mocha'

$: << File.expand_path('../../lib', __FILE__)
require 'mastermind'

class Test::Unit::TestCase
  include CodeBreaker
end
