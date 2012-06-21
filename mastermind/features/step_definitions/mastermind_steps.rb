class Output
  def messages
    @messages ||= []
  end

  def puts(message)
    messages << message
  end

end

def output
  @output ||= Output.new
end

Given /^I am not yet playing$/ do
end

When /^I start a new game$/ do
  game = Mastermind::Game.new(output)
  game.start
end

Then /^the game should say "(.*?)"$/ do |message|
  assert_includes output.messages, message
end
