class Question
  attr_accessor :correct, :player_answer
  def initialize(player)
    puts "|"
    num1 = rand 20
    num2 = rand 20
    @correct = num1 + num2
    puts "|#{player.name}, what is #{num1} + #{num2}?: "
    print "|> "
    @player_answer = gets.chomp.to_i
  end
  def check_answer
    return @player_answer === @correct
  end
end