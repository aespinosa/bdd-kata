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
      @output.puts "+" * exact_matches(guess) + "-" * number_matches(guess)
    end

    private
    def exact_match?(guess, index)
      @code[index] == guess[index]
    end

    def number_match?(guess, index)
      @code.include?(guess[index]) && !exact_match?(guess, index)
    end

    def exact_matches(guess)
      4.times.inject(0) do |matches, index|
        matches + (exact_match?(guess, index) ? 1 : 0 )
      end
    end

    def number_matches(guess)
      4.times.inject(0) do |matches, index|
        matches + (number_match?(guess, index) ? 1 : 0)
      end
    end
  end
end
