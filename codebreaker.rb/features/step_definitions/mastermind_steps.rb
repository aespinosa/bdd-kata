Given /^I am not yet playing$/ do
end

When /^I start a new game$/ do
  game.start "1234"
end

Then /^the game should say "(.*?)"$/ do |message|
  assert_includes output.messages, message
end

Given /^the secret code is "(.*?)"$/ do |code|
  game.start code
end

When /^I guess "(.*?)"$/ do |guess|
  game.guess guess
end

Then /^the mark should be "(.*?)"$/ do |mark|
  assert_includes output.messages, mark
end
