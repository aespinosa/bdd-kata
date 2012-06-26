module Mastermind
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
      total_matches - exact_matches
    end

    private
    def exact_match?(index)
      @code[index] == @guess[index]
    end

    def number_match?(index)
      @code.include?(@guess[index]) && !exact_match?(index)
    end

    def total_matches
      count = 0
      code = @code.each_char.to_a
      @guess.each_char.inject(0) do |count, n|
        count + (delete_first(code, n) ? 1 : 0)
      end
    end

    def delete_first(code, n)
      code.delete_at(code.index(n)) if code.include? n
    end
  end
end
