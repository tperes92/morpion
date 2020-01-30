# Board : à l'initialisation du plateau, il doit instancier immédiatement 9 BoardCases (une par case).
# Variables d'instance : le Board doit embarquer les 9 BoardCase du jeu afin de pouvoir les lire et les modifier facilement. 
#Il faut les lui attribuer sous forme d'un array ou d'un hash. Aussi, il est utile de compter le nombre de coup joué pour identifier facilement si on arrive au 9ème coup sans vainqueur.
# Méthodes : le Board va s'occuper de faire le lien entre les BoardCases et le Game : 
#il change les valeurs des BoardCases (de " " à "x" ou "o") et vérifie en fonction de la combinaison des BoardCases si la partie est finie (= un joueur a gagné ou bien les 9 cases sont remplies sans vainqueur).
require_relative 'boardcase'

class Board
	attr_accessor :array_mooves

	def initialize 
	@moove_bc1 = BoardCase.new("1", 1)
	@moove_bc2 = BoardCase.new("2", 2)
	@moove_bc3 = BoardCase.new("3", 3)
	@moove_bc4 = BoardCase.new("4", 4)
	@moove_bc5 = BoardCase.new("5", 5)
	@moove_bc6 = BoardCase.new("6", 6)
	@moove_bc7 = BoardCase.new("7", 7)
	@moove_bc8 = BoardCase.new("8", 8)
	@moove_bc9 = BoardCase.new("9", 9)

	@array_mooves = [[@moove_bc1, @moove_bc2, @moove_bc3], [@moove_bc4, @moove_bc5, @moove_bc6], [@moove_bc7, @moove_bc8, @moove_bc9]]

	end

	def to_s
	#affiche le tableau
	@array_mooves.each do |x|
        puts "\t\t\t --- --- ---"
        puts "\t\t\t| "+x[0].to_s+" | "+x[1].to_s+" | "+x[2].to_s+" |"
        end
        puts "\t\t\t --- --- ---"
    end

    def play(symbol, case_num)
    	case case_num
    	when 1
    		if @array_mooves[0][0].to_s =="1"
    			@array_mooves [0][0] = symbol
    		else
    			puts "L'emplacement a déjà été choisi, recommencez : "
    			return false
    		end
    	when 2
    		if @array_mooves[0][1].to_s =="2"
    			@array_mooves [0][1] = symbol
    		else
    			puts "L'emplacement a déjà été choisi, recommencez : "
    			return false
    		end
    	when 3
    		if @array_mooves[0][2].to_s =="3"
    			@array_mooves [0][2] = symbol
    		else
    			puts "L'emplacement a déjà été choisi, recommencez : "
    			return false
    		end
    	when 4
    		if @array_mooves[1][0].to_s =="4"
    			@array_mooves [1][0] = symbol
    		else
    			puts "L'emplacement a déjà été choisi, recommencez : "
    			return false
    		end
    	when 5
    		if @array_mooves[1][1].to_s =="5"
    			@array_mooves [1][1] = symbol
    		else
    			puts "L'emplacement a déjà été choisi, recommencez : "
    			return false
    		end
    	when 6
    		if @array_mooves[1][2].to_s =="6"
    			@array_mooves [1][2] = symbol
    		else
    			puts "L'emplacement a déjà été choisi, recommencez : "
    			return false
    		end
    	when 7
    		if @array_mooves[2][0].to_s =="7"
    			@array_mooves [2][0] = symbol
    		else
    			puts "L'emplacement a déjà été choisi, recommencez : "
    			return false
    		end
    	when 8
    		if @array_mooves[2][1].to_s =="8"
    			@array_mooves [2][1] = symbol
    		else
    			puts "L'emplacement a déjà été choisi, recommencez : "
    			return false
    		end
    	when 9
    		if @array_mooves[2][2].to_s =="9"
    			@array_mooves [2][2] = symbol
    		else
    			puts "L'emplacement a déjà été choisi, recommencez : "
    			return false
    		end
    	end
    end

    def victory?
    	if 
    		(@array_mooves[0][0] == @array_mooves[0][1]) && (@array_mooves[0][1] == @array_mooves[0][2]) ||
    		(@array_mooves[1][0] == @array_mooves[1][1]) && (@array_mooves[1][1] == @array_mooves[1][2]) ||
    		(@array_mooves[2][0] == @array_mooves[2][1]) && (@array_mooves[2][1] == @array_mooves[2][2]) ||
    		(@array_mooves[0][0] == @array_mooves[1][0]) && (@array_mooves[1][0] == @array_mooves[1][2]) ||
    		(@array_mooves[0][1] == @array_mooves[1][1]) && (@array_mooves[1][1] == @array_mooves[2][1]) ||
    		(@array_mooves[0][2] == @array_mooves[1][2]) && (@array_mooves[1][2] == @array_mooves[2][2]) ||
    		(@array_mooves[0][0] == @array_mooves[1][1]) && (@array_mooves[1][1] == @array_mooves[2][2]) ||
    		(@array_mooves[0][2] == @array_mooves[1][1]) && (@array_mooves[1][1] == @array_mooves[2][0])

    		true
    	else
    		false
    	end
    end
end