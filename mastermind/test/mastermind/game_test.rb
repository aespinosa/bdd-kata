require 'test_helper'

class GameTest < Test::Unit::TestCase
  def test_start_sends_a_welcome_message
    output.expects(:puts).with "Welcome to Mastermind!"

    game.start "1234"
  end

  def test_start_prompts_for_first_guess
    output.expects(:puts).with "Enter guess:"

    game.start "1234"
  end


  private
  def game
    @game ||= Game.new output
  end

  def output
    @output ||= stub_everything('output')
  end
end
