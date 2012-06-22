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
        mark = if exact_match? guess, index
                 "+"
               elsif number_match? guess, index
                 "-"
               else
                 ""
               end
        marks << mark
      end
      @output.puts marks
    end

    private
    def exact_match?(guess, index)
      @code[index] == guess[index]
    end

    def number_match?(guess, index)
      @code.include? guess[index]
    end
  end
end
