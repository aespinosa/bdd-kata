module CodeBreakerDsl
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

  def game
    @game ||= CodeBreaker::Game.new output
  end
end

World(CodeBreakerDsl)
