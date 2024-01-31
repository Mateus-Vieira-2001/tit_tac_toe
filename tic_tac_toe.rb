# frozen_string_literal: true

# jogo da velha
module TicTacToe
  puts '___|___|___'
  puts '___|___|___'
  puts '   |   |   '

  class Player
		#attr_reader :name,:character
    def initialize(name, character)
      @name = name
      @character = character
    end
		def dados_completos
			@masculino='masculino'
		end
		def name
			@name
		end
		def character
			@character
		end
		def sexo
			@masculino
		end
  end
end
#mateus=TicTacToe::Player.new('Mateus','x')
  #class Game
  #   def initialize(player1, player2)
  #     @players = [player1, player2]
	# 		@board = [[nil,nil,nil],[nil,nil,nil],[nil,nil,nil]]
  #   end

  #   def tabuleiro(columns, row, turn)
  #     @board[columns.to_i][row.to_i] = @players[turn.to_i]
  #   end

  #   turn = 0
  #   while turn < 9
  #     if turn.even?
  #       puts 'Jodador 1, selecione uma posição no tabuleiro'
  #     else
  #       puts 'Jodador 2, selecione uma posição no tabuleiro'
  #     end
  #     columns = gets.chomp
  #     row = gets.chomp

  #     #tabuleiro(columns, row, turn)
  #     turn += 1
  #   end
  # end



  #Player.new('player1', 'X')
  #Player.new('player2', 'O')
end
