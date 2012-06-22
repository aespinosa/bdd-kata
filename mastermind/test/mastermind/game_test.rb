require 'test_helper'

class GameTest < Test::Unit::TestCase
  def test_start_sends_a_welcome_message
    output = stub_everything('output')
    game = Game.new(output)

    output.expects(:puts).with "Welcome to Mastermind!"

    game.start
  end

  def test_start_prompts_for_first_guess
    output = stub_everything('output')
    game = Game.new(output)

    output.expects(:puts).with "Enter guess:"

    game.start
  end

end
