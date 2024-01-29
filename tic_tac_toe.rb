#jogo da velha

#module
#end

class Player


    def initialize(name,character)
      @name=name
      @character=character
    end
end
puts "Digite o nome do jogador 1"
name1=  gets.chomp

puts "Escolha o caracter entre X e O"
character1 = gets.chomp.upcase
puts "Digite o nome do jogador"
name2 = gets.chomp

if character1 == "X"
  character2="O"
else
  character2=='X'
end
player1 = Player.new(name1,character1)
player2 = Player.new(name2,character2)
