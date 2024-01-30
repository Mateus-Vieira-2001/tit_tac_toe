#jogo da velha
module TicTacToe
  puts '___|___|___'
  puts '___|___|___'
  puts '   |   |   '
  class Player
      def initialize(name,character)
        @name=name
        @character=character
      end

      def to_s
        "#{@name} (#{@character})"
      end
  end



  class Game

    def self.Board(columns,row,board)

       oard[columns.to_i][row.to_i]
    end
    board = [[0,0,0],[0,0,0],[0,0,0]]

    turn = 0
    case turn
    when 0
      puts "Jodador 1, selecione uma posição no tabuleiro"
      columns = gets.chomp
      row = gets.chomp
      self.Board(columns,row,board)
    end
  end

  player1 = Player.new("player1","X")
  player2 = Player.new("player2","O")

end
