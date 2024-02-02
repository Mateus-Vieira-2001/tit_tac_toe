# frozen_string_literal: true

# jogo da velha
require 'byebug'
module TicTacToe
  puts '___|___|___'
  puts '___|___|___'
  puts '   |   |   '

  class Player
		#attr_reader :name,:character
    def initialize(name, caracter)
      @name = name
      @character = caracter
      # puts @character.inspect
    end
		def name
			@name
		end
		def character
			@character
      #puts @character.inspect
		end
  end

  class Game
    def initialize(player1, player2)
      @players = [player1.name, player2.name]
      @characters = [player1.character,player2.character]
      puts @characters
			@board = [['-','-','-'],
                ['-','-','-'],
                ['-','-','-']
              ]
      @turn = 0
      @check_board=0
      # @size = @board.size
      # puts @size
    end

    def tabuleiro(columns, row,character)
      #byebug
      puts @character.inspect
      @board[row][columns] = character


      puts "#{@board[0][0]} | #{@board[0][1]} | #{@board[0][2]}"
      puts "#{@board[1][0]} | #{@board[1][1]} | #{@board[1][2]}"
      puts "#{@board[2][0]} | #{@board[2][1]} | #{@board[2][2]}"
    end


    def play
      while @turn < 9
        if @turn.even?
          puts "Jodador 1, selecione uma posição no tabuleiro - rodada #{@turn+1}"
          character = @characters[0]
          player = @players[1]
        else
          puts "Jodador 2, selecione uma posição no tabuleiro - rodada #{@turn+1}"
          character = @characters[1]
          player = @players[1]
        end
        @columns = gets.chomp.to_i
        @row = gets.chomp.to_i

        if @columns>2 || @row>2
          puts 'Digite novamente, pois os numeros só podem ser de 0 a 2'
          @columns = gets.chomp.to_i
          @row = gets.chomp.to_i
        end

        unless @board[@row][@columns]=='-'
          puts 'Digite novamente, pois a posicao já esta preenchida'
          @columns = gets.chomp.to_i
          @row     = gets.chomp.to_i
        end





        tabuleiro(@columns, @row,character)

        #linha
        for i in 0..2
          unless @board[i][0]=='-' or @board[i][1] == '-' && @board[i][2]=='-'
            if @board[i][0]==@board[i][1] && @board[i][0]==@board[i][2]
              puts "O #{player} venceu"
              exit
            end
          end
        end

        # coluna
        for i in 0..2
          unless @board[0][i]=='-' or @board[1][i] == '-' && @board[2][i]=='-'
            if @board[0][i]==@board[1][i] && @board[1][i]==@board[2][i]
              puts "O #{player} venceu"
              exit
            end
          end
        end
        # diagonal 1
        unless @board[0][0]=='-' or @board[1][1] == '-' && @board[2][2]=='-'
          if  @board[0][0] == @board[1][1] and  @board[1][1] ==@board[2][2]
            puts "O #{player} venceu"
            break
          end
        end
        # diagonal 2
        unless @board[0][2]=='-' or @board[1][1] == '-' && @board[2][0]=='-'
          if  @board[0][2] == @board[1][1] and  @board[1][1] ==@board[2][0]
            puts "O #{player} venceu"
            break
          end
        end

        @turn += 1
      end
    end
  end




  Player.new('player2', 'O')
  game = Game.new(Player.new('player1', 'X'),Player.new('player2', 'O'))
  game.play

end
