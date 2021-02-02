class Question
  attr_reader :num1, :num2

  def initialize()
    @num1 = rand(20)
    @num2 = rand(20)
  end

  def ask_question(current_player)
    puts "#{current_player.name} What does #{num1} plus #{num2} equal?"
    print ">"
    p_answer = gets.chomp.to_i
  end

  def check_answer(p_answer)
    correct = num1 + num2
    correct == p_answer
  end
end