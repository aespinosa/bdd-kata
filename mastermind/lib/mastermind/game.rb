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
      marks = ''
      4.times do |index|
        marks << "+" if exact_match? guess, index
      end
      4.times do |index|
        marks << "-" if number_match? guess, index
      end
      @output.puts marks
    end

    private
    def exact_match?(guess, index)
      @code[index] == guess[index]
    end

    def number_match?(guess, index)
      @code.include?(guess[index]) && !exact_match?(guess, index)
    end
  end
end
