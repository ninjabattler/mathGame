require './question.rb'
class Turn
  def initialize(p1, p2)
    @p1 = p1
    @p2 = p2
    @current = @p1
  end

  def next_turn
    puts ""
    puts "#{@p1.name} [#{@p1.lives}/3] vs #{@p2.name} [#{@p2.lives}/3]"
    question = Question.new(@current)
    if question.check_answer
      puts "Nice going"
    else 
      puts "Wrong answer, the answer was #{question.correct}, and now you've lost a life"
      @current.lives -= 1
    end
    puts ""
    self.change_player
    self.check_lives
  end

  def check_lives
    if @p1.lives == 0
      puts "-----Game Over-----"
      puts "#{@p1.name} has lost thy noble life. #{@p2.name} is the victor. The game is over"
      puts ""
    elsif @p2.lives == 0
      puts "-----Game Over-----"
      puts "#{@p2.name} has lost thy noble life. #{@p1.name} is the victor. The game is over"
      puts ""
    else
      puts "-----NEXT TURN-----"
      self.next_turn
    end
  end

  def change_player
    case @current
    when @p1
      @current = @p2
    when @p2
      @current = @p1
    end
  end
end