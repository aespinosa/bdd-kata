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

    class Marker
      def initialize(code, guess)
        @code = code
        @guess = guess
      end

      def exact_matches
        4.times.inject(0) do |matches, index|
          matches + (exact_match?(index) ? 1 : 0 )
        end
      end

      def number_matches
        4.times.inject(0) do |matches, index|
          matches + (number_match?(index) ? 1 : 0)
        end
      end

      private
      def exact_match?(index)
        @code[index] == @guess[index]
      end

      def number_match?(index)
        @code.include?(@guess[index]) && !exact_match?(index)
      end
    end
  end
end
