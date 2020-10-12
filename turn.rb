require './question.rb'
class Turn
  def initialize(p1, p2)
    @p1 = p1
    @p2 = p2
    @current = @p1
    puts ""
    puts "#{p1.name} [#{p1.lives}/3] vs #{p2.name} [#{p2.lives}/3]"
    puts ""
  end

  def next_turn
    puts "-----NEXT TURN-----"
    q = Question.new(@current)
    if q.check_answer
      puts "Nice going"
    else 
      puts "Wrong answer, the answer was #{q.correct}, and now you've lost a life"
      current.lives -= 1
    end
  end
end