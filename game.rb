require "./players"
require "./question"

class Game
  attr_accessor :current_player
  attr_reader :player_1, :player_2

  def initialize(p1, p2)
    @player_1 = Players.new(p1)
    @player_2 = Players.new(p2)
    @current_player = @player_1
  end

  def check_lives
    if (player_1.lives == 0 || player_2.lives == 0)
      self.game_over
    else
      puts "*****NEW TURN*****"
      self.start
    end
  end

  def start
    question = Question.new
    p_answer = question.ask_question(current_player)
    check_answer = question.check_answer(p_answer)

    if (!check_answer)
      current_player.wrong
      current_player == player_1 ? @current_player = @player_2 : @current_player = @player_1
      puts "WRONG -_-"
    else
      puts "CORRECT!! =D"
    end

    puts "#{player_1.name} has #{player_1.lives} lives"
    puts "#{player_2.name} has #{player_2.lives} lives"

    self.check_lives

  end

  def game_over
    puts "*******GAME OVER MAN*********"
    winner = player_1.lives == 0 ? player_2 : player_1
    puts "#{winner.name} wins with a score of #{winner.lives}/3!"
    puts "GOOD BYE!"
  end


end