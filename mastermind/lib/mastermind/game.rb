module Mastermind
  class Game
    def initialize(output)
      @output = output
    end

    def start(code)
      @code = code
      @output.puts "Welcome to Mastermind!"
      @output.puts "Enter guess:"
    end

    def guess(guess)
      marker = Marker.new(@code, guess)
      @output.puts "+" * marker.exact_matches +
                   "-" * marker.number_matches
    end
  end
end
